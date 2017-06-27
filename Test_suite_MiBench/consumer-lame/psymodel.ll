; ModuleID = 'psymodel.c'
source_filename = "psymodel.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct._IO_FILE = type opaque
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@L3psycho_anal.minval = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.qthr_l = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.qthr_s = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.nb_1 = internal global [4 x [63 x double]] zeroinitializer, align 8
@L3psycho_anal.nb_2 = internal global [4 x [63 x double]] zeroinitializer, align 8
@L3psycho_anal.s3_s = internal global [64 x [64 x double]] zeroinitializer, align 8
@L3psycho_anal.s3_l = internal global [64 x [64 x double]] zeroinitializer, align 8
@L3psycho_anal.thm = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 8
@L3psycho_anal.en = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 8
@L3psycho_anal.cw_upper_index = internal global i32 0, align 4
@L3psycho_anal.cw_lower_index = internal global i32 0, align 4
@L3psycho_anal.ax_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.bx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.rx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.cw = internal global [513 x float] zeroinitializer, align 4
@L3psycho_anal.wsamp_L = internal global [2 x [1024 x float]] zeroinitializer, align 4
@L3psycho_anal.energy = internal global [513 x float] zeroinitializer, align 4
@L3psycho_anal.wsamp_S = internal global [2 x [3 x [256 x float]]] zeroinitializer, align 4
@L3psycho_anal.energy_s = internal global [3 x [129 x float]] zeroinitializer, align 4
@L3psycho_anal.eb = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.cb = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.thr = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.w1_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.w2_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.w1_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.w2_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.mld_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.mld_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.bu_l = internal global [21 x i32] zeroinitializer, align 4
@L3psycho_anal.bo_l = internal global [21 x i32] zeroinitializer, align 4
@L3psycho_anal.bu_s = internal global [12 x i32] zeroinitializer, align 4
@L3psycho_anal.bo_s = internal global [12 x i32] zeroinitializer, align 4
@L3psycho_anal.npart_l = internal global i32 0, align 4
@L3psycho_anal.npart_s = internal global i32 0, align 4
@L3psycho_anal.npart_l_orig = internal global i32 0, align 4
@L3psycho_anal.npart_s_orig = internal global i32 0, align 4
@L3psycho_anal.s3ind = internal global [63 x [2 x i32]] zeroinitializer, align 4
@L3psycho_anal.s3ind_s = internal global [63 x [2 x i32]] zeroinitializer, align 4
@L3psycho_anal.numlines_s = internal global [63 x i32] zeroinitializer, align 4
@L3psycho_anal.numlines_l = internal global [63 x i32] zeroinitializer, align 4
@L3psycho_anal.partition_l = internal global [513 x i32] zeroinitializer, align 4
@L3psycho_anal.pe = internal global [4 x double] zeroinitializer, align 8
@L3psycho_anal.ms_ratio_s_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ratio_l_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ener_ratio_old = internal global double 2.500000e-01, align 8
@L3psycho_anal.blocktype_old = internal global [2 x i32] zeroinitializer, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [42 x i8] c"error, invalid sampling frequency: %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error in block selecting\0A\00", align 1
@psy_data = external global [0 x double], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"1. please check \22psy_data\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. please check \22psy_data\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"30:please check \22psy_data\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"31l: please check \22psy_data.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"w1,w2: %f %f \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"31s: please check \22psy_data.\22\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @L3psycho_anal(%struct.lame_global_flags*, i16**, i32, double*, double*, double*, [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]*, double*, double*, i32*) #0 {
  %12 = alloca %struct.lame_global_flags*, align 4
  %13 = alloca i16**, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 4
  %16 = alloca double*, align 4
  %17 = alloca double*, align 4
  %18 = alloca [2 x %struct.III_psy_ratio]*, align 4
  %19 = alloca [2 x %struct.III_psy_ratio]*, align 4
  %20 = alloca double*, align 4
  %21 = alloca double*, align 4
  %22 = alloca i32*, align 4
  %23 = alloca [1024 x float]*, align 4
  %24 = alloca [3 x [256 x float]]*, align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca [2 x i32], align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca [63 x double], align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca float, align 4
  %61 = alloca float, align 4
  %62 = alloca float, align 4
  %63 = alloca float, align 4
  %64 = alloca float, align 4
  %65 = alloca float, align 4
  %66 = alloca float, align 4
  %67 = alloca float, align 4
  %68 = alloca float, align 4
  %69 = alloca float, align 4
  %70 = alloca float, align 4
  %71 = alloca float, align 4
  %72 = alloca float, align 4
  %73 = alloca float, align 4
  %74 = alloca float, align 4
  %75 = alloca float, align 4
  %76 = alloca float, align 4
  %77 = alloca float, align 4
  %78 = alloca float, align 4
  %79 = alloca float, align 4
  %80 = alloca float, align 4
  %81 = alloca float, align 4
  %82 = alloca double, align 8
  %83 = alloca double, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca double, align 8
  %87 = alloca double, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca float, align 4
  %92 = alloca float, align 4
  %93 = alloca float, align 4
  %94 = alloca float, align 4
  %95 = alloca float, align 4
  %96 = alloca double, align 8
  %97 = alloca double, align 8
  %98 = alloca i32, align 4
  %99 = alloca float, align 4
  %100 = alloca double, align 8
  %101 = alloca double, align 8
  %102 = alloca double, align 8
  %103 = alloca double, align 8
  %104 = alloca double, align 8
  %105 = alloca double, align 8
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca double, align 8
  %109 = alloca double, align 8
  %110 = alloca double, align 8
  %111 = alloca double, align 8
  %112 = alloca double, align 8
  %113 = alloca i32, align 4
  %114 = alloca float, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %12, align 4
  store i16** %1, i16*** %13, align 4
  store i32 %2, i32* %14, align 4
  store double* %3, double** %15, align 4
  store double* %4, double** %16, align 4
  store double* %5, double** %17, align 4
  store [2 x %struct.III_psy_ratio]* %6, [2 x %struct.III_psy_ratio]** %18, align 4
  store [2 x %struct.III_psy_ratio]* %7, [2 x %struct.III_psy_ratio]** %19, align 4
  store double* %8, double** %20, align 4
  store double* %9, double** %21, align 4
  store i32* %10, i32** %22, align 4
  store double 0.000000e+00, double* %26, align 8
  store double 0.000000e+00, double* %27, align 8
  %115 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %116 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %115, i32 0, i32 39
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %530

; <label>:119:                                    ; preds = %11
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %530

; <label>:122:                                    ; preds = %119
  store i32 3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 0), align 4
  store i32 3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 1), align 4
  %123 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %124 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %33, align 4
  %126 = load i32, i32* %33, align 4
  switch i32 %126, label %133 [
    i32 32000, label %127
    i32 44100, label %128
    i32 48000, label %129
    i32 16000, label %130
    i32 22050, label %131
    i32 24000, label %132
  ]

; <label>:127:                                    ; preds = %122
  br label %137

; <label>:128:                                    ; preds = %122
  br label %137

; <label>:129:                                    ; preds = %122
  br label %137

; <label>:130:                                    ; preds = %122
  br label %137

; <label>:131:                                    ; preds = %122
  br label %137

; <label>:132:                                    ; preds = %122
  br label %137

; <label>:133:                                    ; preds = %122
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %135 = load i32, i32* %33, align 4
  %136 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %135)
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:137:                                    ; preds = %132, %131, %130, %129, %128, %127
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav to i8*), i8 0, i32 16416, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav to i8*), i8 0, i32 16416, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav to i8*), i8 0, i32 16416, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4 x %struct.III_psy_xmin]* @L3psycho_anal.en to i8*), i8 0, i32 1952, i32 8, i1 false)
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4 x %struct.III_psy_xmin]* @L3psycho_anal.thm to i8*), i8 0, i32 1952, i32 8, i1 false)
  store i32 6, i32* @L3psycho_anal.cw_lower_index, align 4
  %138 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %139 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %138, i32 0, i32 35
  %140 = load float, float* %139, align 4
  %141 = fcmp ogt float %140, 0.000000e+00
  br i1 %141, label %142, label %146

; <label>:142:                                    ; preds = %137
  %143 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %144 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %143, i32 0, i32 35
  %145 = load float, float* %144, align 4
  store float %145, float* %38, align 4
  br label %147

; <label>:146:                                    ; preds = %137
  store float 0x4021BE4F80000000, float* %38, align 4
  br label %147

; <label>:147:                                    ; preds = %146, %142
  %148 = load float, float* %38, align 4
  %149 = fpext float %148 to double
  %150 = fmul double %149, 1.000000e+03
  %151 = fmul double %150, 1.024000e+03
  %152 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %153 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sitofp i32 %154 to double
  %156 = fdiv double %151, %155
  %157 = fptosi double %156 to i32
  store i32 %157, i32* @L3psycho_anal.cw_upper_index, align 4
  %158 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  %159 = icmp slt i32 509, %158
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %147
  br label %163

; <label>:161:                                    ; preds = %147
  %162 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  br label %163

; <label>:163:                                    ; preds = %161, %160
  %164 = phi i32 [ 509, %160 ], [ %162, %161 ]
  store i32 %164, i32* @L3psycho_anal.cw_upper_index, align 4
  %165 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  %166 = icmp sgt i32 6, %165
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %163
  br label %170

; <label>:168:                                    ; preds = %163
  %169 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  br label %170

; <label>:170:                                    ; preds = %168, %167
  %171 = phi i32 [ 6, %167 ], [ %169, %168 ]
  store i32 %171, i32* @L3psycho_anal.cw_upper_index, align 4
  store i32 0, i32* %34, align 4
  br label %172

; <label>:172:                                    ; preds = %178, %170
  %173 = load i32, i32* %34, align 4
  %174 = icmp slt i32 %173, 513
  br i1 %174, label %175, label %181

; <label>:175:                                    ; preds = %172
  %176 = load i32, i32* %34, align 4
  %177 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %176
  store float 0x3FD99999A0000000, float* %177, align 4
  br label %178

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %34, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %34, align 4
  br label %172

; <label>:181:                                    ; preds = %172
  store i32 0, i32* %36, align 4
  br label %182

; <label>:182:                                    ; preds = %198, %181
  %183 = load i32, i32* %36, align 4
  %184 = icmp slt i32 %183, 12
  br i1 %184, label %185, label %201

; <label>:185:                                    ; preds = %182
  %186 = load i32, i32* %36, align 4
  %187 = sitofp i32 %186 to double
  %188 = fmul double 0x400921FB54442D18, %187
  %189 = fdiv double %188, 1.200000e+01
  %190 = call arm_aapcscc double @cos(double %189) #7
  %191 = fsub double 1.000000e+00, %190
  %192 = fmul double 1.250000e+00, %191
  %193 = fsub double %192, 2.500000e+00
  store double %193, double* %40, align 8
  %194 = load double, double* %40, align 8
  %195 = call arm_aapcscc double @pow(double 1.000000e+01, double %194) #7
  %196 = load i32, i32* %36, align 4
  %197 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i32 %196
  store double %195, double* %197, align 8
  br label %198

; <label>:198:                                    ; preds = %185
  %199 = load i32, i32* %36, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %36, align 4
  br label %182

; <label>:201:                                    ; preds = %182
  store i32 0, i32* %36, align 4
  br label %202

; <label>:202:                                    ; preds = %218, %201
  %203 = load i32, i32* %36, align 4
  %204 = icmp slt i32 %203, 21
  br i1 %204, label %205, label %221

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* %36, align 4
  %207 = sitofp i32 %206 to double
  %208 = fmul double 0x400921FB54442D18, %207
  %209 = fdiv double %208, 2.100000e+01
  %210 = call arm_aapcscc double @cos(double %209) #7
  %211 = fsub double 1.000000e+00, %210
  %212 = fmul double 1.250000e+00, %211
  %213 = fsub double %212, 2.500000e+00
  store double %213, double* %41, align 8
  %214 = load double, double* %41, align 8
  %215 = call arm_aapcscc double @pow(double 1.000000e+01, double %214) #7
  %216 = load i32, i32* %36, align 4
  %217 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i32 %216
  store double %215, double* %217, align 8
  br label %218

; <label>:218:                                    ; preds = %205
  %219 = load i32, i32* %36, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %36, align 4
  br label %202

; <label>:221:                                    ; preds = %202
  store i32 0, i32* %33, align 4
  br label %222

; <label>:222:                                    ; preds = %228, %221
  %223 = load i32, i32* %33, align 4
  %224 = icmp slt i32 %223, 513
  br i1 %224, label %225, label %231

; <label>:225:                                    ; preds = %222
  %226 = load i32, i32* %33, align 4
  %227 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i32 %226
  store i32 -1, i32* %227, align 4
  br label %228

; <label>:228:                                    ; preds = %225
  %229 = load i32, i32* %33, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %33, align 4
  br label %222

; <label>:231:                                    ; preds = %222
  %232 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %233 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = sitofp i32 %234 to double
  %236 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 0
  call arm_aapcscc void @L3para_read(double %235, i32* getelementptr inbounds ([63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i32 0), i32* getelementptr inbounds ([63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i32 0), i32* getelementptr inbounds ([513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i32 0), [64 x double]* getelementptr inbounds ([64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 0), [64 x double]* getelementptr inbounds ([64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i32 0), double* %236, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i32 0), i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 0), double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i32 0), double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i32 0))
  store i32 0, i32* @L3psycho_anal.npart_l_orig, align 4
  store i32 0, i32* @L3psycho_anal.npart_s_orig, align 4
  store i32 0, i32* %33, align 4
  br label %237

; <label>:237:                                    ; preds = %251, %231
  %238 = load i32, i32* %33, align 4
  %239 = icmp slt i32 %238, 513
  br i1 %239, label %240, label %254

; <label>:240:                                    ; preds = %237
  %241 = load i32, i32* %33, align 4
  %242 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i32 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %250

; <label>:246:                                    ; preds = %240
  %247 = load i32, i32* %33, align 4
  %248 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i32 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* @L3psycho_anal.npart_l_orig, align 4
  br label %250

; <label>:250:                                    ; preds = %246, %240
  br label %251

; <label>:251:                                    ; preds = %250
  %252 = load i32, i32* %33, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %33, align 4
  br label %237

; <label>:254:                                    ; preds = %237
  %255 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @L3psycho_anal.npart_l_orig, align 4
  store i32 0, i32* %33, align 4
  br label %257

; <label>:257:                                    ; preds = %263, %254
  %258 = load i32, i32* %33, align 4
  %259 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i32 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %266

; <label>:262:                                    ; preds = %257
  br label %263

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %33, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %33, align 4
  br label %257

; <label>:266:                                    ; preds = %257
  %267 = load i32, i32* %33, align 4
  store i32 %267, i32* @L3psycho_anal.npart_s_orig, align 4
  %268 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 20), align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* @L3psycho_anal.npart_l, align 4
  %270 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 11), align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* @L3psycho_anal.npart_s, align 4
  %272 = load i32, i32* @L3psycho_anal.npart_l, align 4
  %273 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %279

; <label>:275:                                    ; preds = %266
  %276 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  store i32 %276, i32* @L3psycho_anal.npart_l, align 4
  %277 = load i32, i32* @L3psycho_anal.npart_l, align 4
  %278 = sub nsw i32 %277, 1
  store i32 %278, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 20), align 4
  store double 1.000000e+00, double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i32 20), align 8
  br label %279

; <label>:279:                                    ; preds = %275, %266
  %280 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %281 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %287

; <label>:283:                                    ; preds = %279
  %284 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4
  store i32 %284, i32* @L3psycho_anal.npart_s, align 4
  %285 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %286 = sub nsw i32 %285, 1
  store i32 %286, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 11), align 4
  store double 1.000000e+00, double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i32 11), align 8
  br label %287

; <label>:287:                                    ; preds = %283, %279
  store i32 0, i32* %33, align 4
  br label %288

; <label>:288:                                    ; preds = %336, %287
  %289 = load i32, i32* %33, align 4
  %290 = load i32, i32* @L3psycho_anal.npart_l, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %339

; <label>:292:                                    ; preds = %288
  store i32 0, i32* %34, align 4
  br label %293

; <label>:293:                                    ; preds = %306, %292
  %294 = load i32, i32* %34, align 4
  %295 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %309

; <label>:297:                                    ; preds = %293
  %298 = load i32, i32* %33, align 4
  %299 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %298
  %300 = load i32, i32* %34, align 4
  %301 = getelementptr inbounds [64 x double], [64 x double]* %299, i32 0, i32 %300
  %302 = load double, double* %301, align 8
  %303 = fcmp une double %302, 0.000000e+00
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %297
  br label %309

; <label>:305:                                    ; preds = %297
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load i32, i32* %34, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %34, align 4
  br label %293

; <label>:309:                                    ; preds = %304, %293
  %310 = load i32, i32* %34, align 4
  %311 = load i32, i32* %33, align 4
  %312 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %311
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 4
  %314 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %315 = sub nsw i32 %314, 1
  store i32 %315, i32* %34, align 4
  br label %316

; <label>:316:                                    ; preds = %328, %309
  %317 = load i32, i32* %34, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %331

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* %33, align 4
  %321 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %320
  %322 = load i32, i32* %34, align 4
  %323 = getelementptr inbounds [64 x double], [64 x double]* %321, i32 0, i32 %322
  %324 = load double, double* %323, align 8
  %325 = fcmp une double %324, 0.000000e+00
  br i1 %325, label %326, label %327

; <label>:326:                                    ; preds = %319
  br label %331

; <label>:327:                                    ; preds = %319
  br label %328

; <label>:328:                                    ; preds = %327
  %329 = load i32, i32* %34, align 4
  %330 = add nsw i32 %329, -1
  store i32 %330, i32* %34, align 4
  br label %316

; <label>:331:                                    ; preds = %326, %316
  %332 = load i32, i32* %34, align 4
  %333 = load i32, i32* %33, align 4
  %334 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %333
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %334, i32 0, i32 1
  store i32 %332, i32* %335, align 4
  br label %336

; <label>:336:                                    ; preds = %331
  %337 = load i32, i32* %33, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %33, align 4
  br label %288

; <label>:339:                                    ; preds = %288
  store i32 0, i32* %33, align 4
  br label %340

; <label>:340:                                    ; preds = %388, %339
  %341 = load i32, i32* %33, align 4
  %342 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %391

; <label>:344:                                    ; preds = %340
  store i32 0, i32* %34, align 4
  br label %345

; <label>:345:                                    ; preds = %358, %344
  %346 = load i32, i32* %34, align 4
  %347 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %361

; <label>:349:                                    ; preds = %345
  %350 = load i32, i32* %33, align 4
  %351 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 %350
  %352 = load i32, i32* %34, align 4
  %353 = getelementptr inbounds [64 x double], [64 x double]* %351, i32 0, i32 %352
  %354 = load double, double* %353, align 8
  %355 = fcmp une double %354, 0.000000e+00
  br i1 %355, label %356, label %357

; <label>:356:                                    ; preds = %349
  br label %361

; <label>:357:                                    ; preds = %349
  br label %358

; <label>:358:                                    ; preds = %357
  %359 = load i32, i32* %34, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %34, align 4
  br label %345

; <label>:361:                                    ; preds = %356, %345
  %362 = load i32, i32* %34, align 4
  %363 = load i32, i32* %33, align 4
  %364 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %363
  %365 = getelementptr inbounds [2 x i32], [2 x i32]* %364, i32 0, i32 0
  store i32 %362, i32* %365, align 4
  %366 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4
  %367 = sub nsw i32 %366, 1
  store i32 %367, i32* %34, align 4
  br label %368

; <label>:368:                                    ; preds = %380, %361
  %369 = load i32, i32* %34, align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %383

; <label>:371:                                    ; preds = %368
  %372 = load i32, i32* %33, align 4
  %373 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 %372
  %374 = load i32, i32* %34, align 4
  %375 = getelementptr inbounds [64 x double], [64 x double]* %373, i32 0, i32 %374
  %376 = load double, double* %375, align 8
  %377 = fcmp une double %376, 0.000000e+00
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %371
  br label %383

; <label>:379:                                    ; preds = %371
  br label %380

; <label>:380:                                    ; preds = %379
  %381 = load i32, i32* %34, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %34, align 4
  br label %368

; <label>:383:                                    ; preds = %378, %368
  %384 = load i32, i32* %34, align 4
  %385 = load i32, i32* %33, align 4
  %386 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %385
  %387 = getelementptr inbounds [2 x i32], [2 x i32]* %386, i32 0, i32 1
  store i32 %384, i32* %387, align 4
  br label %388

; <label>:388:                                    ; preds = %383
  %389 = load i32, i32* %33, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %33, align 4
  br label %340

; <label>:391:                                    ; preds = %340
  store i32 0, i32* %32, align 4
  br label %392

; <label>:392:                                    ; preds = %445, %391
  %393 = load i32, i32* %32, align 4
  %394 = load i32, i32* @L3psycho_anal.npart_l, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %448

; <label>:396:                                    ; preds = %392
  store double 0.000000e+00, double* %42, align 8
  %397 = load i32, i32* %32, align 4
  %398 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %397
  %399 = getelementptr inbounds [2 x i32], [2 x i32]* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  store i32 %400, i32* %35, align 4
  br label %401

; <label>:401:                                    ; preds = %416, %396
  %402 = load i32, i32* %35, align 4
  %403 = load i32, i32* %32, align 4
  %404 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %403
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = icmp sle i32 %402, %406
  br i1 %407, label %408, label %419

; <label>:408:                                    ; preds = %401
  %409 = load i32, i32* %32, align 4
  %410 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %409
  %411 = load i32, i32* %35, align 4
  %412 = getelementptr inbounds [64 x double], [64 x double]* %410, i32 0, i32 %411
  %413 = load double, double* %412, align 8
  %414 = load double, double* %42, align 8
  %415 = fadd double %414, %413
  store double %415, double* %42, align 8
  br label %416

; <label>:416:                                    ; preds = %408
  %417 = load i32, i32* %35, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %35, align 4
  br label %401

; <label>:419:                                    ; preds = %401
  %420 = load i32, i32* %32, align 4
  %421 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %420
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %35, align 4
  br label %424

; <label>:424:                                    ; preds = %441, %419
  %425 = load i32, i32* %35, align 4
  %426 = load i32, i32* %32, align 4
  %427 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %426
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = icmp sle i32 %425, %429
  br i1 %430, label %431, label %444

; <label>:431:                                    ; preds = %424
  %432 = call arm_aapcscc double @exp(double 0xBFF61AD547A6661A) #7
  %433 = load double, double* %42, align 8
  %434 = fdiv double %432, %433
  %435 = load i32, i32* %32, align 4
  %436 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %435
  %437 = load i32, i32* %35, align 4
  %438 = getelementptr inbounds [64 x double], [64 x double]* %436, i32 0, i32 %437
  %439 = load double, double* %438, align 8
  %440 = fmul double %439, %434
  store double %440, double* %438, align 8
  br label %441

; <label>:441:                                    ; preds = %431
  %442 = load i32, i32* %35, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %35, align 4
  br label %424

; <label>:444:                                    ; preds = %424
  br label %445

; <label>:445:                                    ; preds = %444
  %446 = load i32, i32* %32, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %32, align 4
  br label %392

; <label>:448:                                    ; preds = %392
  %449 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %450 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %449, i32 0, i32 43
  %451 = load i32, i32* %450, align 4
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %453, label %470

; <label>:453:                                    ; preds = %448
  store i32 0, i32* %32, align 4
  br label %454

; <label>:454:                                    ; preds = %466, %453
  %455 = load i32, i32* %32, align 4
  %456 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %458, label %469

; <label>:458:                                    ; preds = %454
  %459 = load i32, i32* %32, align 4
  %460 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %459
  %461 = load double, double* %460, align 8
  %462 = fmul double %461, 0x3FCD791C5F888823
  %463 = call arm_aapcscc double @exp(double %462) #7
  %464 = load i32, i32* %32, align 4
  %465 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %464
  store double %463, double* %465, align 8
  br label %466

; <label>:466:                                    ; preds = %458
  %467 = load i32, i32* %32, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %32, align 4
  br label %454

; <label>:469:                                    ; preds = %454
  br label %470

; <label>:470:                                    ; preds = %469, %448
  store i32 0, i32* %32, align 4
  br label %471

; <label>:471:                                    ; preds = %526, %470
  %472 = load i32, i32* %32, align 4
  %473 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %529

; <label>:475:                                    ; preds = %471
  store double 0.000000e+00, double* %43, align 8
  %476 = load i32, i32* %32, align 4
  %477 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %476
  %478 = getelementptr inbounds [2 x i32], [2 x i32]* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  store i32 %479, i32* %35, align 4
  br label %480

; <label>:480:                                    ; preds = %495, %475
  %481 = load i32, i32* %35, align 4
  %482 = load i32, i32* %32, align 4
  %483 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %482
  %484 = getelementptr inbounds [2 x i32], [2 x i32]* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp sle i32 %481, %485
  br i1 %486, label %487, label %498

; <label>:487:                                    ; preds = %480
  %488 = load i32, i32* %32, align 4
  %489 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 %488
  %490 = load i32, i32* %35, align 4
  %491 = getelementptr inbounds [64 x double], [64 x double]* %489, i32 0, i32 %490
  %492 = load double, double* %491, align 8
  %493 = load double, double* %43, align 8
  %494 = fadd double %493, %492
  store double %494, double* %43, align 8
  br label %495

; <label>:495:                                    ; preds = %487
  %496 = load i32, i32* %35, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %35, align 4
  br label %480

; <label>:498:                                    ; preds = %480
  %499 = load i32, i32* %32, align 4
  %500 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %499
  %501 = getelementptr inbounds [2 x i32], [2 x i32]* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  store i32 %502, i32* %35, align 4
  br label %503

; <label>:503:                                    ; preds = %522, %498
  %504 = load i32, i32* %35, align 4
  %505 = load i32, i32* %32, align 4
  %506 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %505
  %507 = getelementptr inbounds [2 x i32], [2 x i32]* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp sle i32 %504, %508
  br i1 %509, label %510, label %525

; <label>:510:                                    ; preds = %503
  %511 = load i32, i32* %32, align 4
  %512 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %511
  %513 = load double, double* %512, align 8
  %514 = load double, double* %43, align 8
  %515 = fdiv double %513, %514
  %516 = load i32, i32* %32, align 4
  %517 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 %516
  %518 = load i32, i32* %35, align 4
  %519 = getelementptr inbounds [64 x double], [64 x double]* %517, i32 0, i32 %518
  %520 = load double, double* %519, align 8
  %521 = fmul double %520, %515
  store double %521, double* %519, align 8
  br label %522

; <label>:522:                                    ; preds = %510
  %523 = load i32, i32* %35, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %35, align 4
  br label %503

; <label>:525:                                    ; preds = %503
  br label %526

; <label>:526:                                    ; preds = %525
  %527 = load i32, i32* %32, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %32, align 4
  br label %471

; <label>:529:                                    ; preds = %471
  call arm_aapcscc void @init_fft()
  br label %530

; <label>:530:                                    ; preds = %529, %119, %11
  %531 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %532 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %531, i32 0, i32 46
  %533 = load i32, i32* %532, align 4
  store i32 %533, i32* %30, align 4
  %534 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %535 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 4
  %537 = icmp eq i32 %536, 1
  br i1 %537, label %538, label %539

; <label>:538:                                    ; preds = %530
  store i32 4, i32* %30, align 4
  br label %539

; <label>:539:                                    ; preds = %538, %530
  store i32 0, i32* %31, align 4
  br label %540

; <label>:540:                                    ; preds = %1853, %539
  %541 = load i32, i32* %31, align 4
  %542 = load i32, i32* %30, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %1856

; <label>:544:                                    ; preds = %540
  %545 = load i32, i32* %31, align 4
  %546 = and i32 %545, 1
  %547 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 0), i32 %546
  store [3 x [256 x float]]* %547, [3 x [256 x float]]** %24, align 4
  %548 = load i32, i32* %31, align 4
  %549 = and i32 %548, 1
  %550 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 0), i32 %549
  store [1024 x float]* %550, [1024 x float]** %23, align 4
  %551 = load i32, i32* %31, align 4
  %552 = icmp slt i32 %551, 2
  br i1 %552, label %553, label %588

; <label>:553:                                    ; preds = %544
  %554 = load [1024 x float]*, [1024 x float]** %23, align 4
  %555 = getelementptr inbounds [1024 x float], [1024 x float]* %554, i32 0, i32 0
  %556 = load i32, i32* %31, align 4
  %557 = load i16**, i16*** %13, align 4
  call arm_aapcscc void @fft_long(float* %555, i32 %556, i16** %557)
  %558 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %559 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %558, i32 0, i32 0
  %560 = load i32, i32* %31, align 4
  %561 = load i16**, i16*** %13, align 4
  call arm_aapcscc void @fft_short([256 x float]* %559, i32 %560, i16** %561)
  %562 = load i32, i32* %31, align 4
  %563 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %562
  %564 = load double, double* %563, align 8
  %565 = load double*, double** %20, align 4
  %566 = load i32, i32* %31, align 4
  %567 = getelementptr inbounds double, double* %565, i32 %566
  store double %564, double* %567, align 8
  %568 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %18, align 4
  %569 = load i32, i32* %14, align 4
  %570 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %568, i32 %569
  %571 = load i32, i32* %31, align 4
  %572 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %570, i32 0, i32 %571
  %573 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %572, i32 0, i32 0
  %574 = load i32, i32* %31, align 4
  %575 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %574
  %576 = bitcast %struct.III_psy_xmin* %573 to i8*
  %577 = bitcast %struct.III_psy_xmin* %575 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %576, i8* %577, i32 488, i32 8, i1 false)
  %578 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %18, align 4
  %579 = load i32, i32* %14, align 4
  %580 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %578, i32 %579
  %581 = load i32, i32* %31, align 4
  %582 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %580, i32 0, i32 %581
  %583 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %582, i32 0, i32 1
  %584 = load i32, i32* %31, align 4
  %585 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %584
  %586 = bitcast %struct.III_psy_xmin* %583 to i8*
  %587 = bitcast %struct.III_psy_xmin* %585 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %586, i8* %587, i32 488, i32 8, i1 false)
  br label %690

; <label>:588:                                    ; preds = %544
  %589 = load i32, i32* %31, align 4
  %590 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %589
  %591 = load double, double* %590, align 8
  %592 = load double*, double** %21, align 4
  %593 = load i32, i32* %31, align 4
  %594 = sub nsw i32 %593, 2
  %595 = getelementptr inbounds double, double* %592, i32 %594
  store double %591, double* %595, align 8
  %596 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %19, align 4
  %597 = load i32, i32* %14, align 4
  %598 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %596, i32 %597
  %599 = load i32, i32* %31, align 4
  %600 = sub nsw i32 %599, 2
  %601 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %598, i32 0, i32 %600
  %602 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %601, i32 0, i32 1
  %603 = load i32, i32* %31, align 4
  %604 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %603
  %605 = bitcast %struct.III_psy_xmin* %602 to i8*
  %606 = bitcast %struct.III_psy_xmin* %604 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %605, i8* %606, i32 488, i32 8, i1 false)
  %607 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %19, align 4
  %608 = load i32, i32* %14, align 4
  %609 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %607, i32 %608
  %610 = load i32, i32* %31, align 4
  %611 = sub nsw i32 %610, 2
  %612 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %609, i32 0, i32 %611
  %613 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %612, i32 0, i32 0
  %614 = load i32, i32* %31, align 4
  %615 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %614
  %616 = bitcast %struct.III_psy_xmin* %613 to i8*
  %617 = bitcast %struct.III_psy_xmin* %615 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %616, i8* %617, i32 488, i32 8, i1 false)
  %618 = load i32, i32* %31, align 4
  %619 = icmp eq i32 %618, 2
  br i1 %619, label %620, label %689

; <label>:620:                                    ; preds = %588
  store i32 1023, i32* %34, align 4
  br label %621

; <label>:621:                                    ; preds = %643, %620
  %622 = load i32, i32* %34, align 4
  %623 = icmp sge i32 %622, 0
  br i1 %623, label %624, label %646

; <label>:624:                                    ; preds = %621
  %625 = load i32, i32* %34, align 4
  %626 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 0), i32 0, i32 %625
  %627 = load float, float* %626, align 4
  store float %627, float* %44, align 4
  %628 = load i32, i32* %34, align 4
  %629 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 1), i32 0, i32 %628
  %630 = load float, float* %629, align 4
  store float %630, float* %45, align 4
  %631 = load float, float* %44, align 4
  %632 = load float, float* %45, align 4
  %633 = fadd float %631, %632
  %634 = fmul float %633, 0x3FE6A09E60000000
  %635 = load i32, i32* %34, align 4
  %636 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 0), i32 0, i32 %635
  store float %634, float* %636, align 4
  %637 = load float, float* %44, align 4
  %638 = load float, float* %45, align 4
  %639 = fsub float %637, %638
  %640 = fmul float %639, 0x3FE6A09E60000000
  %641 = load i32, i32* %34, align 4
  %642 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 1), i32 0, i32 %641
  store float %640, float* %642, align 4
  br label %643

; <label>:643:                                    ; preds = %624
  %644 = load i32, i32* %34, align 4
  %645 = add nsw i32 %644, -1
  store i32 %645, i32* %34, align 4
  br label %621

; <label>:646:                                    ; preds = %621
  store i32 2, i32* %32, align 4
  br label %647

; <label>:647:                                    ; preds = %685, %646
  %648 = load i32, i32* %32, align 4
  %649 = icmp sge i32 %648, 0
  br i1 %649, label %650, label %688

; <label>:650:                                    ; preds = %647
  store i32 255, i32* %34, align 4
  br label %651

; <label>:651:                                    ; preds = %681, %650
  %652 = load i32, i32* %34, align 4
  %653 = icmp sge i32 %652, 0
  br i1 %653, label %654, label %684

; <label>:654:                                    ; preds = %651
  %655 = load i32, i32* %32, align 4
  %656 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 0), i32 0, i32 %655
  %657 = load i32, i32* %34, align 4
  %658 = getelementptr inbounds [256 x float], [256 x float]* %656, i32 0, i32 %657
  %659 = load float, float* %658, align 4
  store float %659, float* %46, align 4
  %660 = load i32, i32* %32, align 4
  %661 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 1), i32 0, i32 %660
  %662 = load i32, i32* %34, align 4
  %663 = getelementptr inbounds [256 x float], [256 x float]* %661, i32 0, i32 %662
  %664 = load float, float* %663, align 4
  store float %664, float* %47, align 4
  %665 = load float, float* %46, align 4
  %666 = load float, float* %47, align 4
  %667 = fadd float %665, %666
  %668 = fmul float %667, 0x3FE6A09E60000000
  %669 = load i32, i32* %32, align 4
  %670 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 0), i32 0, i32 %669
  %671 = load i32, i32* %34, align 4
  %672 = getelementptr inbounds [256 x float], [256 x float]* %670, i32 0, i32 %671
  store float %668, float* %672, align 4
  %673 = load float, float* %46, align 4
  %674 = load float, float* %47, align 4
  %675 = fsub float %673, %674
  %676 = fmul float %675, 0x3FE6A09E60000000
  %677 = load i32, i32* %32, align 4
  %678 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 1), i32 0, i32 %677
  %679 = load i32, i32* %34, align 4
  %680 = getelementptr inbounds [256 x float], [256 x float]* %678, i32 0, i32 %679
  store float %676, float* %680, align 4
  br label %681

; <label>:681:                                    ; preds = %654
  %682 = load i32, i32* %34, align 4
  %683 = add nsw i32 %682, -1
  store i32 %683, i32* %34, align 4
  br label %651

; <label>:684:                                    ; preds = %651
  br label %685

; <label>:685:                                    ; preds = %684
  %686 = load i32, i32* %32, align 4
  %687 = add nsw i32 %686, -1
  store i32 %687, i32* %32, align 4
  br label %647

; <label>:688:                                    ; preds = %647
  br label %689

; <label>:689:                                    ; preds = %688, %588
  br label %690

; <label>:690:                                    ; preds = %689, %553
  %691 = load [1024 x float]*, [1024 x float]** %23, align 4
  %692 = getelementptr inbounds [1024 x float], [1024 x float]* %691, i32 0, i32 0
  %693 = load float, float* %692, align 4
  store float %693, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 0), align 4
  %694 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 0), align 4
  %695 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 0), align 4
  %696 = fmul float %695, %694
  store float %696, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 0), align 4
  %697 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 0), align 4
  %698 = load i32, i32* %31, align 4
  %699 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 %698
  store float %697, float* %699, align 4
  store i32 511, i32* %34, align 4
  br label %700

; <label>:700:                                    ; preds = %733, %690
  %701 = load i32, i32* %34, align 4
  %702 = icmp sge i32 %701, 0
  br i1 %702, label %703, label %736

; <label>:703:                                    ; preds = %700
  %704 = load [1024 x float]*, [1024 x float]** %23, align 4
  %705 = load i32, i32* %34, align 4
  %706 = sub nsw i32 512, %705
  %707 = getelementptr inbounds [1024 x float], [1024 x float]* %704, i32 0, i32 %706
  %708 = load float, float* %707, align 4
  store float %708, float* %48, align 4
  %709 = load [1024 x float]*, [1024 x float]** %23, align 4
  %710 = load i32, i32* %34, align 4
  %711 = add nsw i32 512, %710
  %712 = getelementptr inbounds [1024 x float], [1024 x float]* %709, i32 0, i32 %711
  %713 = load float, float* %712, align 4
  store float %713, float* %49, align 4
  %714 = load float, float* %48, align 4
  %715 = load float, float* %48, align 4
  %716 = fmul float %714, %715
  %717 = load float, float* %49, align 4
  %718 = load float, float* %49, align 4
  %719 = fmul float %717, %718
  %720 = fadd float %716, %719
  %721 = fmul float %720, 5.000000e-01
  %722 = load i32, i32* %34, align 4
  %723 = sub nsw i32 512, %722
  %724 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %723
  store float %721, float* %724, align 4
  %725 = load i32, i32* %34, align 4
  %726 = sub nsw i32 512, %725
  %727 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %726
  %728 = load float, float* %727, align 4
  %729 = load i32, i32* %31, align 4
  %730 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 %729
  %731 = load float, float* %730, align 4
  %732 = fadd float %731, %728
  store float %732, float* %730, align 4
  br label %733

; <label>:733:                                    ; preds = %703
  %734 = load i32, i32* %34, align 4
  %735 = add nsw i32 %734, -1
  store i32 %735, i32* %34, align 4
  br label %700

; <label>:736:                                    ; preds = %700
  store i32 2, i32* %32, align 4
  br label %737

; <label>:737:                                    ; preds = %793, %736
  %738 = load i32, i32* %32, align 4
  %739 = icmp sge i32 %738, 0
  br i1 %739, label %740, label %796

; <label>:740:                                    ; preds = %737
  %741 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %742 = load i32, i32* %32, align 4
  %743 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %741, i32 0, i32 %742
  %744 = getelementptr inbounds [256 x float], [256 x float]* %743, i32 0, i32 0
  %745 = load float, float* %744, align 4
  %746 = load i32, i32* %32, align 4
  %747 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %746
  %748 = getelementptr inbounds [129 x float], [129 x float]* %747, i32 0, i32 0
  store float %745, float* %748, align 4
  %749 = load i32, i32* %32, align 4
  %750 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %749
  %751 = getelementptr inbounds [129 x float], [129 x float]* %750, i32 0, i32 0
  %752 = load float, float* %751, align 4
  %753 = load i32, i32* %32, align 4
  %754 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %753
  %755 = getelementptr inbounds [129 x float], [129 x float]* %754, i32 0, i32 0
  %756 = load float, float* %755, align 4
  %757 = fmul float %756, %752
  store float %757, float* %755, align 4
  store i32 127, i32* %34, align 4
  br label %758

; <label>:758:                                    ; preds = %789, %740
  %759 = load i32, i32* %34, align 4
  %760 = icmp sge i32 %759, 0
  br i1 %760, label %761, label %792

; <label>:761:                                    ; preds = %758
  %762 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %763 = load i32, i32* %32, align 4
  %764 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %762, i32 0, i32 %763
  %765 = load i32, i32* %34, align 4
  %766 = sub nsw i32 128, %765
  %767 = getelementptr inbounds [256 x float], [256 x float]* %764, i32 0, i32 %766
  %768 = load float, float* %767, align 4
  store float %768, float* %50, align 4
  %769 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %770 = load i32, i32* %32, align 4
  %771 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %769, i32 0, i32 %770
  %772 = load i32, i32* %34, align 4
  %773 = add nsw i32 128, %772
  %774 = getelementptr inbounds [256 x float], [256 x float]* %771, i32 0, i32 %773
  %775 = load float, float* %774, align 4
  store float %775, float* %51, align 4
  %776 = load float, float* %50, align 4
  %777 = load float, float* %50, align 4
  %778 = fmul float %776, %777
  %779 = load float, float* %51, align 4
  %780 = load float, float* %51, align 4
  %781 = fmul float %779, %780
  %782 = fadd float %778, %781
  %783 = fmul float %782, 5.000000e-01
  %784 = load i32, i32* %32, align 4
  %785 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %784
  %786 = load i32, i32* %34, align 4
  %787 = sub nsw i32 128, %786
  %788 = getelementptr inbounds [129 x float], [129 x float]* %785, i32 0, i32 %787
  store float %783, float* %788, align 4
  br label %789

; <label>:789:                                    ; preds = %761
  %790 = load i32, i32* %34, align 4
  %791 = add nsw i32 %790, -1
  store i32 %791, i32* %34, align 4
  br label %758

; <label>:792:                                    ; preds = %758
  br label %793

; <label>:793:                                    ; preds = %792
  %794 = load i32, i32* %32, align 4
  %795 = add nsw i32 %794, -1
  store i32 %795, i32* %32, align 4
  br label %737

; <label>:796:                                    ; preds = %737
  store i32 0, i32* %34, align 4
  br label %797

; <label>:797:                                    ; preds = %994, %796
  %798 = load i32, i32* %34, align 4
  %799 = load i32, i32* @L3psycho_anal.cw_lower_index, align 4
  %800 = icmp slt i32 %798, %799
  br i1 %800, label %801, label %997

; <label>:801:                                    ; preds = %797
  %802 = load i32, i32* %31, align 4
  %803 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i32 %802
  %804 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %803, i32 0, i32 1
  %805 = load i32, i32* %34, align 4
  %806 = getelementptr inbounds [513 x float], [513 x float]* %804, i32 0, i32 %805
  %807 = load float, float* %806, align 4
  store float %807, float* %54, align 4
  %808 = load i32, i32* %31, align 4
  %809 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i32 %808
  %810 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %809, i32 0, i32 1
  %811 = load i32, i32* %34, align 4
  %812 = getelementptr inbounds [513 x float], [513 x float]* %810, i32 0, i32 %811
  %813 = load float, float* %812, align 4
  store float %813, float* %57, align 4
  %814 = load i32, i32* %31, align 4
  %815 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i32 %814
  %816 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %815, i32 0, i32 1
  %817 = load i32, i32* %34, align 4
  %818 = getelementptr inbounds [513 x float], [513 x float]* %816, i32 0, i32 %817
  %819 = load float, float* %818, align 4
  store float %819, float* %60, align 4
  %820 = load i32, i32* %31, align 4
  %821 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i32 %820
  %822 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %821, i32 0, i32 0
  %823 = load i32, i32* %34, align 4
  %824 = getelementptr inbounds [513 x float], [513 x float]* %822, i32 0, i32 %823
  %825 = load float, float* %824, align 4
  %826 = load i32, i32* %31, align 4
  %827 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i32 %826
  %828 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %827, i32 0, i32 1
  %829 = load i32, i32* %34, align 4
  %830 = getelementptr inbounds [513 x float], [513 x float]* %828, i32 0, i32 %829
  store float %825, float* %830, align 4
  store float %825, float* %53, align 4
  %831 = load i32, i32* %31, align 4
  %832 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i32 %831
  %833 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %832, i32 0, i32 0
  %834 = load i32, i32* %34, align 4
  %835 = getelementptr inbounds [513 x float], [513 x float]* %833, i32 0, i32 %834
  %836 = load float, float* %835, align 4
  %837 = load i32, i32* %31, align 4
  %838 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i32 %837
  %839 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %838, i32 0, i32 1
  %840 = load i32, i32* %34, align 4
  %841 = getelementptr inbounds [513 x float], [513 x float]* %839, i32 0, i32 %840
  store float %836, float* %841, align 4
  store float %836, float* %56, align 4
  %842 = load i32, i32* %31, align 4
  %843 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i32 %842
  %844 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %843, i32 0, i32 0
  %845 = load i32, i32* %34, align 4
  %846 = getelementptr inbounds [513 x float], [513 x float]* %844, i32 0, i32 %845
  %847 = load float, float* %846, align 4
  %848 = load i32, i32* %31, align 4
  %849 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i32 %848
  %850 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %849, i32 0, i32 1
  %851 = load i32, i32* %34, align 4
  %852 = getelementptr inbounds [513 x float], [513 x float]* %850, i32 0, i32 %851
  store float %847, float* %852, align 4
  store float %847, float* %59, align 4
  %853 = load [1024 x float]*, [1024 x float]** %23, align 4
  %854 = load i32, i32* %34, align 4
  %855 = getelementptr inbounds [1024 x float], [1024 x float]* %853, i32 0, i32 %854
  %856 = load float, float* %855, align 4
  %857 = load i32, i32* %31, align 4
  %858 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i32 %857
  %859 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %858, i32 0, i32 0
  %860 = load i32, i32* %34, align 4
  %861 = getelementptr inbounds [513 x float], [513 x float]* %859, i32 0, i32 %860
  store float %856, float* %861, align 4
  store float %856, float* %52, align 4
  %862 = load i32, i32* %34, align 4
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %868

; <label>:864:                                    ; preds = %801
  %865 = load [1024 x float]*, [1024 x float]** %23, align 4
  %866 = getelementptr inbounds [1024 x float], [1024 x float]* %865, i32 0, i32 0
  %867 = load float, float* %866, align 4
  br label %874

; <label>:868:                                    ; preds = %801
  %869 = load [1024 x float]*, [1024 x float]** %23, align 4
  %870 = load i32, i32* %34, align 4
  %871 = sub nsw i32 1024, %870
  %872 = getelementptr inbounds [1024 x float], [1024 x float]* %869, i32 0, i32 %871
  %873 = load float, float* %872, align 4
  br label %874

; <label>:874:                                    ; preds = %868, %864
  %875 = phi float [ %867, %864 ], [ %873, %868 ]
  %876 = load i32, i32* %31, align 4
  %877 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i32 %876
  %878 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %877, i32 0, i32 0
  %879 = load i32, i32* %34, align 4
  %880 = getelementptr inbounds [513 x float], [513 x float]* %878, i32 0, i32 %879
  store float %875, float* %880, align 4
  store float %875, float* %55, align 4
  %881 = load i32, i32* %34, align 4
  %882 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %881
  %883 = load float, float* %882, align 4
  %884 = fpext float %883 to double
  %885 = call arm_aapcscc double @sqrt(double %884) #7
  %886 = fptrunc double %885 to float
  %887 = load i32, i32* %31, align 4
  %888 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i32 %887
  %889 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %888, i32 0, i32 0
  %890 = load i32, i32* %34, align 4
  %891 = getelementptr inbounds [513 x float], [513 x float]* %889, i32 0, i32 %890
  store float %886, float* %891, align 4
  store float %886, float* %58, align 4
  %892 = load float, float* %59, align 4
  %893 = fcmp une float %892, 0.000000e+00
  br i1 %893, label %894, label %909

; <label>:894:                                    ; preds = %874
  %895 = load float, float* %53, align 4
  %896 = load float, float* %56, align 4
  %897 = fmul float %895, %896
  store float %897, float* %61, align 4
  %898 = load float, float* %53, align 4
  %899 = load float, float* %53, align 4
  %900 = fmul float %898, %899
  %901 = load float, float* %56, align 4
  %902 = load float, float* %56, align 4
  %903 = fmul float %901, %902
  %904 = fsub float %900, %903
  %905 = fmul float %904, 5.000000e-01
  store float %905, float* %62, align 4
  %906 = load float, float* %59, align 4
  %907 = load float, float* %59, align 4
  %908 = fmul float %906, %907
  store float %908, float* %63, align 4
  br label %910

; <label>:909:                                    ; preds = %874
  store float 1.000000e+00, float* %61, align 4
  store float 0.000000e+00, float* %62, align 4
  store float 1.000000e+00, float* %63, align 4
  br label %910

; <label>:910:                                    ; preds = %909, %894
  %911 = load float, float* %60, align 4
  %912 = fcmp une float %911, 0.000000e+00
  br i1 %912, label %913, label %938

; <label>:913:                                    ; preds = %910
  %914 = load float, float* %62, align 4
  %915 = load float, float* %61, align 4
  %916 = fadd float %914, %915
  %917 = load float, float* %54, align 4
  %918 = load float, float* %57, align 4
  %919 = fadd float %917, %918
  %920 = fmul float %916, %919
  %921 = fmul float %920, 5.000000e-01
  store float %921, float* %64, align 4
  %922 = load float, float* %54, align 4
  %923 = fsub float -0.000000e+00, %922
  %924 = load float, float* %61, align 4
  %925 = fmul float %923, %924
  %926 = load float, float* %64, align 4
  %927 = fadd float %925, %926
  store float %927, float* %65, align 4
  %928 = load float, float* %57, align 4
  %929 = fsub float -0.000000e+00, %928
  %930 = load float, float* %62, align 4
  %931 = fmul float %929, %930
  %932 = load float, float* %64, align 4
  %933 = fadd float %931, %932
  store float %933, float* %61, align 4
  %934 = load float, float* %65, align 4
  store float %934, float* %62, align 4
  %935 = load float, float* %60, align 4
  %936 = load float, float* %63, align 4
  %937 = fmul float %936, %935
  store float %937, float* %63, align 4
  br label %939

; <label>:938:                                    ; preds = %910
  br label %939

; <label>:939:                                    ; preds = %938, %913
  %940 = load float, float* %59, align 4
  %941 = fmul float 2.000000e+00, %940
  %942 = load float, float* %60, align 4
  %943 = fsub float %941, %942
  %944 = load float, float* %63, align 4
  %945 = fdiv float %943, %944
  store float %945, float* %66, align 4
  %946 = load float, float* %66, align 4
  %947 = load float, float* %61, align 4
  %948 = fmul float %947, %946
  store float %948, float* %61, align 4
  %949 = load float, float* %66, align 4
  %950 = load float, float* %62, align 4
  %951 = fmul float %950, %949
  store float %951, float* %62, align 4
  %952 = load float, float* %58, align 4
  %953 = fpext float %952 to double
  %954 = load float, float* %59, align 4
  %955 = fmul float 2.000000e+00, %954
  %956 = load float, float* %60, align 4
  %957 = fsub float %955, %956
  %958 = fpext float %957 to double
  %959 = call arm_aapcscc double @fabs(double %958) #8
  %960 = fadd double %953, %959
  %961 = fptrunc double %960 to float
  store float %961, float* %63, align 4
  %962 = load float, float* %63, align 4
  %963 = fcmp une float %962, 0.000000e+00
  br i1 %963, label %964, label %990

; <label>:964:                                    ; preds = %939
  %965 = load float, float* %52, align 4
  %966 = load float, float* %55, align 4
  %967 = fadd float %965, %966
  %968 = fmul float %967, 5.000000e-01
  %969 = load float, float* %61, align 4
  %970 = fsub float %968, %969
  store float %970, float* %61, align 4
  %971 = load float, float* %52, align 4
  %972 = load float, float* %55, align 4
  %973 = fsub float %971, %972
  %974 = fmul float %973, 5.000000e-01
  %975 = load float, float* %62, align 4
  %976 = fsub float %974, %975
  store float %976, float* %62, align 4
  %977 = load float, float* %61, align 4
  %978 = load float, float* %61, align 4
  %979 = fmul float %977, %978
  %980 = load float, float* %62, align 4
  %981 = load float, float* %62, align 4
  %982 = fmul float %980, %981
  %983 = fadd float %979, %982
  %984 = fpext float %983 to double
  %985 = call arm_aapcscc double @sqrt(double %984) #7
  %986 = load float, float* %63, align 4
  %987 = fpext float %986 to double
  %988 = fdiv double %985, %987
  %989 = fptrunc double %988 to float
  store float %989, float* %63, align 4
  br label %990

; <label>:990:                                    ; preds = %964, %939
  %991 = load float, float* %63, align 4
  %992 = load i32, i32* %34, align 4
  %993 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %992
  store float %991, float* %993, align 4
  br label %994

; <label>:994:                                    ; preds = %990
  %995 = load i32, i32* %34, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %34, align 4
  br label %797

; <label>:997:                                    ; preds = %797
  %998 = load i32, i32* @L3psycho_anal.cw_lower_index, align 4
  store i32 %998, i32* %34, align 4
  br label %999

; <label>:999:                                    ; preds = %1169, %997
  %1000 = load i32, i32* %34, align 4
  %1001 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  %1002 = icmp slt i32 %1000, %1001
  br i1 %1002, label %1003, label %1172

; <label>:1003:                                   ; preds = %999
  %1004 = load i32, i32* %34, align 4
  %1005 = add nsw i32 %1004, 2
  %1006 = sdiv i32 %1005, 4
  store i32 %1006, i32* %35, align 4
  %1007 = load i32, i32* %35, align 4
  %1008 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 0), i32 0, i32 %1007
  %1009 = load float, float* %1008, align 4
  store float %1009, float* %68, align 4
  %1010 = load float, float* %68, align 4
  %1011 = fcmp une float %1010, 0.000000e+00
  br i1 %1011, label %1012, label %1040

; <label>:1012:                                   ; preds = %1003
  %1013 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1014 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1013, i32 0, i32 0
  %1015 = load i32, i32* %35, align 4
  %1016 = getelementptr inbounds [256 x float], [256 x float]* %1014, i32 0, i32 %1015
  %1017 = load float, float* %1016, align 4
  store float %1017, float* %73, align 4
  %1018 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1019 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1018, i32 0, i32 0
  %1020 = load i32, i32* %35, align 4
  %1021 = sub nsw i32 256, %1020
  %1022 = getelementptr inbounds [256 x float], [256 x float]* %1019, i32 0, i32 %1021
  %1023 = load float, float* %1022, align 4
  store float %1023, float* %74, align 4
  %1024 = load float, float* %73, align 4
  %1025 = load float, float* %74, align 4
  %1026 = fmul float %1024, %1025
  store float %1026, float* %70, align 4
  %1027 = load float, float* %73, align 4
  %1028 = load float, float* %73, align 4
  %1029 = fmul float %1027, %1028
  %1030 = load float, float* %74, align 4
  %1031 = load float, float* %74, align 4
  %1032 = fmul float %1030, %1031
  %1033 = fsub float %1029, %1032
  %1034 = fmul float %1033, 5.000000e-01
  store float %1034, float* %71, align 4
  %1035 = load float, float* %68, align 4
  store float %1035, float* %72, align 4
  %1036 = load float, float* %68, align 4
  %1037 = fpext float %1036 to double
  %1038 = call arm_aapcscc double @sqrt(double %1037) #7
  %1039 = fptrunc double %1038 to float
  store float %1039, float* %68, align 4
  br label %1041

; <label>:1040:                                   ; preds = %1003
  store float 1.000000e+00, float* %70, align 4
  store float 0.000000e+00, float* %71, align 4
  store float 1.000000e+00, float* %72, align 4
  br label %1041

; <label>:1041:                                   ; preds = %1040, %1012
  %1042 = load i32, i32* %35, align 4
  %1043 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 2), i32 0, i32 %1042
  %1044 = load float, float* %1043, align 4
  store float %1044, float* %69, align 4
  %1045 = load float, float* %69, align 4
  %1046 = fcmp une float %1045, 0.000000e+00
  br i1 %1046, label %1047, label %1087

; <label>:1047:                                   ; preds = %1041
  %1048 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1049 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1048, i32 0, i32 2
  %1050 = load i32, i32* %35, align 4
  %1051 = getelementptr inbounds [256 x float], [256 x float]* %1049, i32 0, i32 %1050
  %1052 = load float, float* %1051, align 4
  store float %1052, float* %75, align 4
  %1053 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1054 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1053, i32 0, i32 2
  %1055 = load i32, i32* %35, align 4
  %1056 = sub nsw i32 256, %1055
  %1057 = getelementptr inbounds [256 x float], [256 x float]* %1054, i32 0, i32 %1056
  %1058 = load float, float* %1057, align 4
  store float %1058, float* %76, align 4
  %1059 = load float, float* %71, align 4
  %1060 = load float, float* %70, align 4
  %1061 = fadd float %1059, %1060
  %1062 = load float, float* %75, align 4
  %1063 = load float, float* %76, align 4
  %1064 = fadd float %1062, %1063
  %1065 = fmul float %1061, %1064
  %1066 = fmul float %1065, 5.000000e-01
  store float %1066, float* %77, align 4
  %1067 = load float, float* %75, align 4
  %1068 = fsub float -0.000000e+00, %1067
  %1069 = load float, float* %70, align 4
  %1070 = fmul float %1068, %1069
  %1071 = load float, float* %77, align 4
  %1072 = fadd float %1070, %1071
  store float %1072, float* %78, align 4
  %1073 = load float, float* %76, align 4
  %1074 = fsub float -0.000000e+00, %1073
  %1075 = load float, float* %71, align 4
  %1076 = fmul float %1074, %1075
  %1077 = load float, float* %77, align 4
  %1078 = fadd float %1076, %1077
  store float %1078, float* %70, align 4
  %1079 = load float, float* %78, align 4
  store float %1079, float* %71, align 4
  %1080 = load float, float* %69, align 4
  %1081 = fpext float %1080 to double
  %1082 = call arm_aapcscc double @sqrt(double %1081) #7
  %1083 = fptrunc double %1082 to float
  store float %1083, float* %69, align 4
  %1084 = load float, float* %69, align 4
  %1085 = load float, float* %72, align 4
  %1086 = fmul float %1085, %1084
  store float %1086, float* %72, align 4
  br label %1088

; <label>:1087:                                   ; preds = %1041
  br label %1088

; <label>:1088:                                   ; preds = %1087, %1047
  %1089 = load float, float* %68, align 4
  %1090 = fmul float 2.000000e+00, %1089
  %1091 = load float, float* %69, align 4
  %1092 = fsub float %1090, %1091
  %1093 = load float, float* %72, align 4
  %1094 = fdiv float %1092, %1093
  store float %1094, float* %79, align 4
  %1095 = load float, float* %79, align 4
  %1096 = load float, float* %70, align 4
  %1097 = fmul float %1096, %1095
  store float %1097, float* %70, align 4
  %1098 = load float, float* %79, align 4
  %1099 = load float, float* %71, align 4
  %1100 = fmul float %1099, %1098
  store float %1100, float* %71, align 4
  %1101 = load i32, i32* %35, align 4
  %1102 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 1), i32 0, i32 %1101
  %1103 = load float, float* %1102, align 4
  %1104 = fpext float %1103 to double
  %1105 = call arm_aapcscc double @sqrt(double %1104) #7
  %1106 = fptrunc double %1105 to float
  store float %1106, float* %67, align 4
  %1107 = load float, float* %67, align 4
  %1108 = fpext float %1107 to double
  %1109 = load float, float* %68, align 4
  %1110 = fmul float 2.000000e+00, %1109
  %1111 = load float, float* %69, align 4
  %1112 = fsub float %1110, %1111
  %1113 = fpext float %1112 to double
  %1114 = call arm_aapcscc double @fabs(double %1113) #8
  %1115 = fadd double %1108, %1114
  %1116 = fptrunc double %1115 to float
  store float %1116, float* %72, align 4
  %1117 = load float, float* %72, align 4
  %1118 = fcmp une float %1117, 0.000000e+00
  br i1 %1118, label %1119, label %1156

; <label>:1119:                                   ; preds = %1088
  %1120 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1121 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1120, i32 0, i32 1
  %1122 = load i32, i32* %35, align 4
  %1123 = getelementptr inbounds [256 x float], [256 x float]* %1121, i32 0, i32 %1122
  %1124 = load float, float* %1123, align 4
  store float %1124, float* %80, align 4
  %1125 = load [3 x [256 x float]]*, [3 x [256 x float]]** %24, align 4
  %1126 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %1125, i32 0, i32 1
  %1127 = load i32, i32* %35, align 4
  %1128 = sub nsw i32 256, %1127
  %1129 = getelementptr inbounds [256 x float], [256 x float]* %1126, i32 0, i32 %1128
  %1130 = load float, float* %1129, align 4
  store float %1130, float* %81, align 4
  %1131 = load float, float* %80, align 4
  %1132 = load float, float* %81, align 4
  %1133 = fadd float %1131, %1132
  %1134 = fmul float %1133, 5.000000e-01
  %1135 = load float, float* %70, align 4
  %1136 = fsub float %1134, %1135
  store float %1136, float* %70, align 4
  %1137 = load float, float* %80, align 4
  %1138 = load float, float* %81, align 4
  %1139 = fsub float %1137, %1138
  %1140 = fmul float %1139, 5.000000e-01
  %1141 = load float, float* %71, align 4
  %1142 = fsub float %1140, %1141
  store float %1142, float* %71, align 4
  %1143 = load float, float* %70, align 4
  %1144 = load float, float* %70, align 4
  %1145 = fmul float %1143, %1144
  %1146 = load float, float* %71, align 4
  %1147 = load float, float* %71, align 4
  %1148 = fmul float %1146, %1147
  %1149 = fadd float %1145, %1148
  %1150 = fpext float %1149 to double
  %1151 = call arm_aapcscc double @sqrt(double %1150) #7
  %1152 = load float, float* %72, align 4
  %1153 = fpext float %1152 to double
  %1154 = fdiv double %1151, %1153
  %1155 = fptrunc double %1154 to float
  store float %1155, float* %72, align 4
  br label %1156

; <label>:1156:                                   ; preds = %1119, %1088
  %1157 = load float, float* %72, align 4
  %1158 = load i32, i32* %34, align 4
  %1159 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1158
  store float %1157, float* %1159, align 4
  %1160 = load i32, i32* %34, align 4
  %1161 = add nsw i32 %1160, 3
  %1162 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1161
  store float %1157, float* %1162, align 4
  %1163 = load i32, i32* %34, align 4
  %1164 = add nsw i32 %1163, 2
  %1165 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1164
  store float %1157, float* %1165, align 4
  %1166 = load i32, i32* %34, align 4
  %1167 = add nsw i32 %1166, 1
  %1168 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1167
  store float %1157, float* %1168, align 4
  br label %1169

; <label>:1169:                                   ; preds = %1156
  %1170 = load i32, i32* %34, align 4
  %1171 = add nsw i32 %1170, 4
  store i32 %1171, i32* %34, align 4
  br label %999

; <label>:1172:                                   ; preds = %999
  store i32 0, i32* %32, align 4
  store i32 0, i32* %34, align 4
  br label %1173

; <label>:1173:                                   ; preds = %1221, %1172
  %1174 = load i32, i32* %34, align 4
  %1175 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4
  %1176 = icmp slt i32 %1174, %1175
  br i1 %1176, label %1177, label %1230

; <label>:1177:                                   ; preds = %1173
  %1178 = load i32, i32* %34, align 4
  %1179 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1178
  %1180 = load float, float* %1179, align 4
  %1181 = fpext float %1180 to double
  store double %1181, double* %82, align 8
  %1182 = load i32, i32* %34, align 4
  %1183 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1182
  %1184 = load float, float* %1183, align 4
  %1185 = load i32, i32* %34, align 4
  %1186 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1185
  %1187 = load float, float* %1186, align 4
  %1188 = fmul float %1184, %1187
  %1189 = fpext float %1188 to double
  store double %1189, double* %83, align 8
  %1190 = load i32, i32* %34, align 4
  %1191 = add nsw i32 %1190, 1
  store i32 %1191, i32* %34, align 4
  %1192 = load i32, i32* %32, align 4
  %1193 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i32 %1192
  %1194 = load i32, i32* %1193, align 4
  %1195 = sub nsw i32 %1194, 1
  store i32 %1195, i32* %84, align 4
  br label %1196

; <label>:1196:                                   ; preds = %1218, %1177
  %1197 = load i32, i32* %84, align 4
  %1198 = icmp sgt i32 %1197, 0
  br i1 %1198, label %1199, label %1221

; <label>:1199:                                   ; preds = %1196
  %1200 = load i32, i32* %34, align 4
  %1201 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1200
  %1202 = load float, float* %1201, align 4
  %1203 = fpext float %1202 to double
  %1204 = load double, double* %82, align 8
  %1205 = fadd double %1204, %1203
  store double %1205, double* %82, align 8
  %1206 = load i32, i32* %34, align 4
  %1207 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1206
  %1208 = load float, float* %1207, align 4
  %1209 = load i32, i32* %34, align 4
  %1210 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i32 %1209
  %1211 = load float, float* %1210, align 4
  %1212 = fmul float %1208, %1211
  %1213 = fpext float %1212 to double
  %1214 = load double, double* %83, align 8
  %1215 = fadd double %1214, %1213
  store double %1215, double* %83, align 8
  %1216 = load i32, i32* %34, align 4
  %1217 = add nsw i32 %1216, 1
  store i32 %1217, i32* %34, align 4
  br label %1218

; <label>:1218:                                   ; preds = %1199
  %1219 = load i32, i32* %84, align 4
  %1220 = add nsw i32 %1219, -1
  store i32 %1220, i32* %84, align 4
  br label %1196

; <label>:1221:                                   ; preds = %1196
  %1222 = load double, double* %82, align 8
  %1223 = load i32, i32* %32, align 4
  %1224 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1223
  store double %1222, double* %1224, align 8
  %1225 = load double, double* %83, align 8
  %1226 = load i32, i32* %32, align 4
  %1227 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i32 %1226
  store double %1225, double* %1227, align 8
  %1228 = load i32, i32* %32, align 4
  %1229 = add nsw i32 %1228, 1
  store i32 %1229, i32* %32, align 4
  br label %1173

; <label>:1230:                                   ; preds = %1173
  br label %1231

; <label>:1231:                                   ; preds = %1267, %1230
  %1232 = load i32, i32* %32, align 4
  %1233 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4
  %1234 = icmp slt i32 %1232, %1233
  br i1 %1234, label %1235, label %1270

; <label>:1235:                                   ; preds = %1231
  %1236 = load i32, i32* %34, align 4
  %1237 = add nsw i32 %1236, 1
  store i32 %1237, i32* %34, align 4
  %1238 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1236
  %1239 = load float, float* %1238, align 4
  %1240 = fpext float %1239 to double
  store double %1240, double* %86, align 8
  %1241 = load i32, i32* %32, align 4
  %1242 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i32 %1241
  %1243 = load i32, i32* %1242, align 4
  %1244 = sub nsw i32 %1243, 1
  store i32 %1244, i32* %85, align 4
  br label %1245

; <label>:1245:                                   ; preds = %1256, %1235
  %1246 = load i32, i32* %85, align 4
  %1247 = icmp sgt i32 %1246, 0
  br i1 %1247, label %1248, label %1259

; <label>:1248:                                   ; preds = %1245
  %1249 = load i32, i32* %34, align 4
  %1250 = add nsw i32 %1249, 1
  store i32 %1250, i32* %34, align 4
  %1251 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i32 %1249
  %1252 = load float, float* %1251, align 4
  %1253 = fpext float %1252 to double
  %1254 = load double, double* %86, align 8
  %1255 = fadd double %1254, %1253
  store double %1255, double* %86, align 8
  br label %1256

; <label>:1256:                                   ; preds = %1248
  %1257 = load i32, i32* %85, align 4
  %1258 = add nsw i32 %1257, -1
  store i32 %1258, i32* %85, align 4
  br label %1245

; <label>:1259:                                   ; preds = %1245
  %1260 = load double, double* %86, align 8
  %1261 = load i32, i32* %32, align 4
  %1262 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1261
  store double %1260, double* %1262, align 8
  %1263 = load double, double* %86, align 8
  %1264 = fmul double %1263, 4.000000e-01
  %1265 = load i32, i32* %32, align 4
  %1266 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i32 %1265
  store double %1264, double* %1266, align 8
  br label %1267

; <label>:1267:                                   ; preds = %1259
  %1268 = load i32, i32* %32, align 4
  %1269 = add nsw i32 %1268, 1
  store i32 %1269, i32* %32, align 4
  br label %1231

; <label>:1270:                                   ; preds = %1231
  %1271 = load i32, i32* %31, align 4
  %1272 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %1271
  store double 0.000000e+00, double* %1272, align 8
  store i32 0, i32* %32, align 4
  br label %1273

; <label>:1273:                                   ; preds = %1477, %1270
  %1274 = load i32, i32* %32, align 4
  %1275 = load i32, i32* @L3psycho_anal.npart_l, align 4
  %1276 = icmp slt i32 %1274, %1275
  br i1 %1276, label %1277, label %1480

; <label>:1277:                                   ; preds = %1273
  store double 0.000000e+00, double* %88, align 8
  store double 0.000000e+00, double* %89, align 8
  %1278 = load i32, i32* %32, align 4
  %1279 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %1278
  %1280 = getelementptr inbounds [2 x i32], [2 x i32]* %1279, i32 0, i32 0
  %1281 = load i32, i32* %1280, align 4
  store i32 %1281, i32* %35, align 4
  br label %1282

; <label>:1282:                                   ; preds = %1312, %1277
  %1283 = load i32, i32* %35, align 4
  %1284 = load i32, i32* %32, align 4
  %1285 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i32 %1284
  %1286 = getelementptr inbounds [2 x i32], [2 x i32]* %1285, i32 0, i32 1
  %1287 = load i32, i32* %1286, align 4
  %1288 = icmp sle i32 %1283, %1287
  br i1 %1288, label %1289, label %1315

; <label>:1289:                                   ; preds = %1282
  %1290 = load i32, i32* %32, align 4
  %1291 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %1290
  %1292 = load i32, i32* %35, align 4
  %1293 = getelementptr inbounds [64 x double], [64 x double]* %1291, i32 0, i32 %1292
  %1294 = load double, double* %1293, align 8
  %1295 = load i32, i32* %35, align 4
  %1296 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1295
  %1297 = load double, double* %1296, align 8
  %1298 = fmul double %1294, %1297
  %1299 = load double, double* %88, align 8
  %1300 = fadd double %1299, %1298
  store double %1300, double* %88, align 8
  %1301 = load i32, i32* %32, align 4
  %1302 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 %1301
  %1303 = load i32, i32* %35, align 4
  %1304 = getelementptr inbounds [64 x double], [64 x double]* %1302, i32 0, i32 %1303
  %1305 = load double, double* %1304, align 8
  %1306 = load i32, i32* %35, align 4
  %1307 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i32 %1306
  %1308 = load double, double* %1307, align 8
  %1309 = fmul double %1305, %1308
  %1310 = load double, double* %89, align 8
  %1311 = fadd double %1310, %1309
  store double %1311, double* %89, align 8
  br label %1312

; <label>:1312:                                   ; preds = %1289
  %1313 = load i32, i32* %35, align 4
  %1314 = add nsw i32 %1313, 1
  store i32 %1314, i32* %35, align 4
  br label %1282

; <label>:1315:                                   ; preds = %1282
  %1316 = load double, double* %88, align 8
  store double %1316, double* %87, align 8
  %1317 = load double, double* %87, align 8
  %1318 = fcmp une double %1317, 0.000000e+00
  br i1 %1318, label %1319, label %1340

; <label>:1319:                                   ; preds = %1315
  %1320 = load double, double* %89, align 8
  %1321 = load double, double* %87, align 8
  %1322 = fdiv double %1320, %1321
  store double %1322, double* %87, align 8
  %1323 = load double, double* %87, align 8
  %1324 = fcmp ole double %1323, 0x3FA8F6869E6F084D
  br i1 %1324, label %1325, label %1327

; <label>:1325:                                   ; preds = %1319
  %1326 = call arm_aapcscc double @exp(double 0xC0061AD547A6661A) #7
  store double %1326, double* %87, align 8
  br label %1339

; <label>:1327:                                   ; preds = %1319
  %1328 = load double, double* %87, align 8
  %1329 = fcmp ogt double %1328, 0x3FDFEDFBDEEA22F7
  br i1 %1329, label %1330, label %1331

; <label>:1330:                                   ; preds = %1327
  store double 1.000000e+00, double* %87, align 8
  br label %1338

; <label>:1331:                                   ; preds = %1327
  %1332 = load double, double* %87, align 8
  %1333 = call arm_aapcscc double @log(double %1332) #7
  store double %1333, double* %87, align 8
  %1334 = load double, double* %87, align 8
  %1335 = fmul double 0x3FF30298B36105E3, %1334
  %1336 = fadd double 0x3FEA6FF6E4078667, %1335
  %1337 = call arm_aapcscc double @exp(double %1336) #7
  store double %1337, double* %87, align 8
  br label %1338

; <label>:1338:                                   ; preds = %1331, %1330
  br label %1339

; <label>:1339:                                   ; preds = %1338, %1325
  br label %1340

; <label>:1340:                                   ; preds = %1339, %1315
  %1341 = load i32, i32* %32, align 4
  %1342 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i32 %1341
  %1343 = load double, double* %1342, align 8
  %1344 = load double, double* %87, align 8
  %1345 = fcmp olt double %1343, %1344
  br i1 %1345, label %1346, label %1350

; <label>:1346:                                   ; preds = %1340
  %1347 = load i32, i32* %32, align 4
  %1348 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i32 %1347
  %1349 = load double, double* %1348, align 8
  br label %1352

; <label>:1350:                                   ; preds = %1340
  %1351 = load double, double* %87, align 8
  br label %1352

; <label>:1352:                                   ; preds = %1350, %1346
  %1353 = phi double [ %1349, %1346 ], [ %1351, %1350 ]
  store double %1353, double* %87, align 8
  %1354 = load double, double* %87, align 8
  %1355 = load double, double* %88, align 8
  %1356 = fmul double %1355, %1354
  store double %1356, double* %88, align 8
  %1357 = load double, double* %88, align 8
  %1358 = load i32, i32* %31, align 4
  %1359 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1358
  %1360 = load i32, i32* %32, align 4
  %1361 = getelementptr inbounds [63 x double], [63 x double]* %1359, i32 0, i32 %1360
  %1362 = load double, double* %1361, align 8
  %1363 = fmul double 2.000000e+00, %1362
  %1364 = load i32, i32* %31, align 4
  %1365 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i32 %1364
  %1366 = load i32, i32* %32, align 4
  %1367 = getelementptr inbounds [63 x double], [63 x double]* %1365, i32 0, i32 %1366
  %1368 = load double, double* %1367, align 8
  %1369 = fmul double 1.600000e+01, %1368
  %1370 = fcmp olt double %1363, %1369
  br i1 %1370, label %1371, label %1378

; <label>:1371:                                   ; preds = %1352
  %1372 = load i32, i32* %31, align 4
  %1373 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1372
  %1374 = load i32, i32* %32, align 4
  %1375 = getelementptr inbounds [63 x double], [63 x double]* %1373, i32 0, i32 %1374
  %1376 = load double, double* %1375, align 8
  %1377 = fmul double 2.000000e+00, %1376
  br label %1385

; <label>:1378:                                   ; preds = %1352
  %1379 = load i32, i32* %31, align 4
  %1380 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i32 %1379
  %1381 = load i32, i32* %32, align 4
  %1382 = getelementptr inbounds [63 x double], [63 x double]* %1380, i32 0, i32 %1381
  %1383 = load double, double* %1382, align 8
  %1384 = fmul double 1.600000e+01, %1383
  br label %1385

; <label>:1385:                                   ; preds = %1378, %1371
  %1386 = phi double [ %1377, %1371 ], [ %1384, %1378 ]
  %1387 = fcmp olt double %1357, %1386
  br i1 %1387, label %1388, label %1390

; <label>:1388:                                   ; preds = %1385
  %1389 = load double, double* %88, align 8
  br label %1420

; <label>:1390:                                   ; preds = %1385
  %1391 = load i32, i32* %31, align 4
  %1392 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1391
  %1393 = load i32, i32* %32, align 4
  %1394 = getelementptr inbounds [63 x double], [63 x double]* %1392, i32 0, i32 %1393
  %1395 = load double, double* %1394, align 8
  %1396 = fmul double 2.000000e+00, %1395
  %1397 = load i32, i32* %31, align 4
  %1398 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i32 %1397
  %1399 = load i32, i32* %32, align 4
  %1400 = getelementptr inbounds [63 x double], [63 x double]* %1398, i32 0, i32 %1399
  %1401 = load double, double* %1400, align 8
  %1402 = fmul double 1.600000e+01, %1401
  %1403 = fcmp olt double %1396, %1402
  br i1 %1403, label %1404, label %1411

; <label>:1404:                                   ; preds = %1390
  %1405 = load i32, i32* %31, align 4
  %1406 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1405
  %1407 = load i32, i32* %32, align 4
  %1408 = getelementptr inbounds [63 x double], [63 x double]* %1406, i32 0, i32 %1407
  %1409 = load double, double* %1408, align 8
  %1410 = fmul double 2.000000e+00, %1409
  br label %1418

; <label>:1411:                                   ; preds = %1390
  %1412 = load i32, i32* %31, align 4
  %1413 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i32 %1412
  %1414 = load i32, i32* %32, align 4
  %1415 = getelementptr inbounds [63 x double], [63 x double]* %1413, i32 0, i32 %1414
  %1416 = load double, double* %1415, align 8
  %1417 = fmul double 1.600000e+01, %1416
  br label %1418

; <label>:1418:                                   ; preds = %1411, %1404
  %1419 = phi double [ %1410, %1404 ], [ %1417, %1411 ]
  br label %1420

; <label>:1420:                                   ; preds = %1418, %1388
  %1421 = phi double [ %1389, %1388 ], [ %1419, %1418 ]
  store double %1421, double* %90, align 8
  %1422 = load i32, i32* %32, align 4
  %1423 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i32 %1422
  %1424 = load double, double* %1423, align 8
  %1425 = load double, double* %90, align 8
  %1426 = fcmp ogt double %1424, %1425
  br i1 %1426, label %1427, label %1431

; <label>:1427:                                   ; preds = %1420
  %1428 = load i32, i32* %32, align 4
  %1429 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i32 %1428
  %1430 = load double, double* %1429, align 8
  br label %1433

; <label>:1431:                                   ; preds = %1420
  %1432 = load double, double* %90, align 8
  br label %1433

; <label>:1433:                                   ; preds = %1431, %1427
  %1434 = phi double [ %1430, %1427 ], [ %1432, %1431 ]
  %1435 = load i32, i32* %32, align 4
  %1436 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1435
  store double %1434, double* %1436, align 8
  %1437 = load i32, i32* %31, align 4
  %1438 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1437
  %1439 = load i32, i32* %32, align 4
  %1440 = getelementptr inbounds [63 x double], [63 x double]* %1438, i32 0, i32 %1439
  %1441 = load double, double* %1440, align 8
  %1442 = load i32, i32* %31, align 4
  %1443 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i32 %1442
  %1444 = load i32, i32* %32, align 4
  %1445 = getelementptr inbounds [63 x double], [63 x double]* %1443, i32 0, i32 %1444
  store double %1441, double* %1445, align 8
  %1446 = load double, double* %88, align 8
  %1447 = load i32, i32* %31, align 4
  %1448 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i32 %1447
  %1449 = load i32, i32* %32, align 4
  %1450 = getelementptr inbounds [63 x double], [63 x double]* %1448, i32 0, i32 %1449
  store double %1446, double* %1450, align 8
  %1451 = load i32, i32* %32, align 4
  %1452 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1451
  %1453 = load double, double* %1452, align 8
  %1454 = load i32, i32* %32, align 4
  %1455 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1454
  %1456 = load double, double* %1455, align 8
  %1457 = fcmp olt double %1453, %1456
  br i1 %1457, label %1458, label %1476

; <label>:1458:                                   ; preds = %1433
  %1459 = load i32, i32* %32, align 4
  %1460 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i32 %1459
  %1461 = load i32, i32* %1460, align 4
  %1462 = sitofp i32 %1461 to double
  %1463 = load i32, i32* %32, align 4
  %1464 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1463
  %1465 = load double, double* %1464, align 8
  %1466 = load i32, i32* %32, align 4
  %1467 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1466
  %1468 = load double, double* %1467, align 8
  %1469 = fdiv double %1465, %1468
  %1470 = call arm_aapcscc double @log(double %1469) #7
  %1471 = fmul double %1462, %1470
  %1472 = load i32, i32* %31, align 4
  %1473 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %1472
  %1474 = load double, double* %1473, align 8
  %1475 = fsub double %1474, %1471
  store double %1475, double* %1473, align 8
  br label %1476

; <label>:1476:                                   ; preds = %1458, %1433
  br label %1477

; <label>:1477:                                   ; preds = %1476
  %1478 = load i32, i32* %32, align 4
  %1479 = add nsw i32 %1478, 1
  store i32 %1479, i32* %32, align 4
  br label %1273

; <label>:1480:                                   ; preds = %1273
  %1481 = load i32, i32* %31, align 4
  %1482 = icmp slt i32 %1481, 2
  br i1 %1482, label %1483, label %1585

; <label>:1483:                                   ; preds = %1480
  %1484 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %1485 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1484, i32 0, i32 37
  %1486 = load i32, i32* %1485, align 4
  %1487 = icmp ne i32 %1486, 0
  br i1 %1487, label %1488, label %1491

; <label>:1488:                                   ; preds = %1483
  %1489 = load i32, i32* %31, align 4
  %1490 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %1489
  store i32 1, i32* %1490, align 4
  br label %1584

; <label>:1491:                                   ; preds = %1483
  %1492 = load i32, i32* %31, align 4
  %1493 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %1492
  %1494 = load double, double* %1493, align 8
  %1495 = fcmp ogt double %1494, 3.000000e+03
  br i1 %1495, label %1496, label %1499

; <label>:1496:                                   ; preds = %1491
  %1497 = load i32, i32* %31, align 4
  %1498 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %1497
  store i32 0, i32* %1498, align 4
  br label %1583

; <label>:1499:                                   ; preds = %1491
  store float 0.000000e+00, float* %93, align 4
  store float 0.000000e+00, float* %94, align 4
  store float 0.000000e+00, float* %95, align 4
  store i32 64, i32* %34, align 4
  br label %1500

; <label>:1500:                                   ; preds = %1519, %1499
  %1501 = load i32, i32* %34, align 4
  %1502 = icmp slt i32 %1501, 129
  br i1 %1502, label %1503, label %1522

; <label>:1503:                                   ; preds = %1500
  %1504 = load i32, i32* %34, align 4
  %1505 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 0), i32 0, i32 %1504
  %1506 = load float, float* %1505, align 4
  %1507 = load float, float* %93, align 4
  %1508 = fadd float %1507, %1506
  store float %1508, float* %93, align 4
  %1509 = load i32, i32* %34, align 4
  %1510 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 1), i32 0, i32 %1509
  %1511 = load float, float* %1510, align 4
  %1512 = load float, float* %94, align 4
  %1513 = fadd float %1512, %1511
  store float %1513, float* %94, align 4
  %1514 = load i32, i32* %34, align 4
  %1515 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 2), i32 0, i32 %1514
  %1516 = load float, float* %1515, align 4
  %1517 = load float, float* %95, align 4
  %1518 = fadd float %1517, %1516
  store float %1518, float* %95, align 4
  br label %1519

; <label>:1519:                                   ; preds = %1503
  %1520 = load i32, i32* %34, align 4
  %1521 = add nsw i32 %1520, 1
  store i32 %1521, i32* %34, align 4
  br label %1500

; <label>:1522:                                   ; preds = %1500
  %1523 = load float, float* %93, align 4
  %1524 = load float, float* %94, align 4
  %1525 = fcmp olt float %1523, %1524
  br i1 %1525, label %1526, label %1528

; <label>:1526:                                   ; preds = %1522
  %1527 = load float, float* %93, align 4
  br label %1530

; <label>:1528:                                   ; preds = %1522
  %1529 = load float, float* %94, align 4
  br label %1530

; <label>:1530:                                   ; preds = %1528, %1526
  %1531 = phi float [ %1527, %1526 ], [ %1529, %1528 ]
  store float %1531, float* %91, align 4
  %1532 = load float, float* %91, align 4
  %1533 = load float, float* %95, align 4
  %1534 = fcmp olt float %1532, %1533
  br i1 %1534, label %1535, label %1537

; <label>:1535:                                   ; preds = %1530
  %1536 = load float, float* %91, align 4
  br label %1539

; <label>:1537:                                   ; preds = %1530
  %1538 = load float, float* %95, align 4
  br label %1539

; <label>:1539:                                   ; preds = %1537, %1535
  %1540 = phi float [ %1536, %1535 ], [ %1538, %1537 ]
  store float %1540, float* %91, align 4
  %1541 = load float, float* %93, align 4
  %1542 = load float, float* %94, align 4
  %1543 = fcmp ogt float %1541, %1542
  br i1 %1543, label %1544, label %1546

; <label>:1544:                                   ; preds = %1539
  %1545 = load float, float* %93, align 4
  br label %1548

; <label>:1546:                                   ; preds = %1539
  %1547 = load float, float* %94, align 4
  br label %1548

; <label>:1548:                                   ; preds = %1546, %1544
  %1549 = phi float [ %1545, %1544 ], [ %1547, %1546 ]
  store float %1549, float* %92, align 4
  %1550 = load float, float* %92, align 4
  %1551 = load float, float* %95, align 4
  %1552 = fcmp ogt float %1550, %1551
  br i1 %1552, label %1553, label %1555

; <label>:1553:                                   ; preds = %1548
  %1554 = load float, float* %92, align 4
  br label %1557

; <label>:1555:                                   ; preds = %1548
  %1556 = load float, float* %95, align 4
  br label %1557

; <label>:1557:                                   ; preds = %1555, %1553
  %1558 = phi float [ %1554, %1553 ], [ %1556, %1555 ]
  store float %1558, float* %92, align 4
  %1559 = load i32, i32* %31, align 4
  %1560 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %1559
  store i32 1, i32* %1560, align 4
  %1561 = load float, float* %92, align 4
  %1562 = load float, float* %91, align 4
  %1563 = fmul float 3.000000e+01, %1562
  %1564 = fcmp ogt float %1561, %1563
  br i1 %1564, label %1565, label %1568

; <label>:1565:                                   ; preds = %1557
  %1566 = load i32, i32* %31, align 4
  %1567 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %1566
  store i32 0, i32* %1567, align 4
  br label %1582

; <label>:1568:                                   ; preds = %1557
  %1569 = load float, float* %92, align 4
  %1570 = load float, float* %91, align 4
  %1571 = fmul float 1.000000e+01, %1570
  %1572 = fcmp ogt float %1569, %1571
  br i1 %1572, label %1573, label %1581

; <label>:1573:                                   ; preds = %1568
  %1574 = load i32, i32* %31, align 4
  %1575 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i32 %1574
  %1576 = load double, double* %1575, align 8
  %1577 = fcmp ogt double %1576, 1.000000e+03
  br i1 %1577, label %1578, label %1581

; <label>:1578:                                   ; preds = %1573
  %1579 = load i32, i32* %31, align 4
  %1580 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %1579
  store i32 0, i32* %1580, align 4
  br label %1581

; <label>:1581:                                   ; preds = %1578, %1573, %1568
  br label %1582

; <label>:1582:                                   ; preds = %1581, %1565
  br label %1583

; <label>:1583:                                   ; preds = %1582, %1496
  br label %1584

; <label>:1584:                                   ; preds = %1583, %1488
  br label %1585

; <label>:1585:                                   ; preds = %1584, %1480
  store i32 0, i32* %36, align 4
  br label %1586

; <label>:1586:                                   ; preds = %1665, %1585
  %1587 = load i32, i32* %36, align 4
  %1588 = icmp slt i32 %1587, 21
  br i1 %1588, label %1589, label %1668

; <label>:1589:                                   ; preds = %1586
  %1590 = load i32, i32* %36, align 4
  %1591 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i32 %1590
  %1592 = load double, double* %1591, align 8
  %1593 = load i32, i32* %36, align 4
  %1594 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i32 %1593
  %1595 = load i32, i32* %1594, align 4
  %1596 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1595
  %1597 = load double, double* %1596, align 8
  %1598 = fmul double %1592, %1597
  %1599 = load i32, i32* %36, align 4
  %1600 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i32 %1599
  %1601 = load double, double* %1600, align 8
  %1602 = load i32, i32* %36, align 4
  %1603 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 %1602
  %1604 = load i32, i32* %1603, align 4
  %1605 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1604
  %1606 = load double, double* %1605, align 8
  %1607 = fmul double %1601, %1606
  %1608 = fadd double %1598, %1607
  store double %1608, double* %96, align 8
  %1609 = load i32, i32* %36, align 4
  %1610 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i32 %1609
  %1611 = load double, double* %1610, align 8
  %1612 = load i32, i32* %36, align 4
  %1613 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i32 %1612
  %1614 = load i32, i32* %1613, align 4
  %1615 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1614
  %1616 = load double, double* %1615, align 8
  %1617 = fmul double %1611, %1616
  %1618 = load i32, i32* %36, align 4
  %1619 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i32 %1618
  %1620 = load double, double* %1619, align 8
  %1621 = load i32, i32* %36, align 4
  %1622 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 %1621
  %1623 = load i32, i32* %1622, align 4
  %1624 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1623
  %1625 = load double, double* %1624, align 8
  %1626 = fmul double %1620, %1625
  %1627 = fadd double %1617, %1626
  store double %1627, double* %97, align 8
  %1628 = load i32, i32* %36, align 4
  %1629 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i32 %1628
  %1630 = load i32, i32* %1629, align 4
  %1631 = add nsw i32 %1630, 1
  store i32 %1631, i32* %32, align 4
  br label %1632

; <label>:1632:                                   ; preds = %1649, %1589
  %1633 = load i32, i32* %32, align 4
  %1634 = load i32, i32* %36, align 4
  %1635 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 %1634
  %1636 = load i32, i32* %1635, align 4
  %1637 = icmp slt i32 %1633, %1636
  br i1 %1637, label %1638, label %1652

; <label>:1638:                                   ; preds = %1632
  %1639 = load i32, i32* %32, align 4
  %1640 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1639
  %1641 = load double, double* %1640, align 8
  %1642 = load double, double* %96, align 8
  %1643 = fadd double %1642, %1641
  store double %1643, double* %96, align 8
  %1644 = load i32, i32* %32, align 4
  %1645 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1644
  %1646 = load double, double* %1645, align 8
  %1647 = load double, double* %97, align 8
  %1648 = fadd double %1647, %1646
  store double %1648, double* %97, align 8
  br label %1649

; <label>:1649:                                   ; preds = %1638
  %1650 = load i32, i32* %32, align 4
  %1651 = add nsw i32 %1650, 1
  store i32 %1651, i32* %32, align 4
  br label %1632

; <label>:1652:                                   ; preds = %1632
  %1653 = load double, double* %96, align 8
  %1654 = load i32, i32* %31, align 4
  %1655 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %1654
  %1656 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1655, i32 0, i32 0
  %1657 = load i32, i32* %36, align 4
  %1658 = getelementptr inbounds [22 x double], [22 x double]* %1656, i32 0, i32 %1657
  store double %1653, double* %1658, align 8
  %1659 = load double, double* %97, align 8
  %1660 = load i32, i32* %31, align 4
  %1661 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1660
  %1662 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1661, i32 0, i32 0
  %1663 = load i32, i32* %36, align 4
  %1664 = getelementptr inbounds [22 x double], [22 x double]* %1662, i32 0, i32 %1663
  store double %1659, double* %1664, align 8
  br label %1665

; <label>:1665:                                   ; preds = %1652
  %1666 = load i32, i32* %36, align 4
  %1667 = add nsw i32 %1666, 1
  store i32 %1667, i32* %36, align 4
  br label %1586

; <label>:1668:                                   ; preds = %1586
  store i32 0, i32* %37, align 4
  br label %1669

; <label>:1669:                                   ; preds = %1849, %1668
  %1670 = load i32, i32* %37, align 4
  %1671 = icmp slt i32 %1670, 3
  br i1 %1671, label %1672, label %1852

; <label>:1672:                                   ; preds = %1669
  store i32 0, i32* %34, align 4
  store i32 0, i32* %32, align 4
  br label %1673

; <label>:1673:                                   ; preds = %1707, %1672
  %1674 = load i32, i32* %32, align 4
  %1675 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4
  %1676 = icmp slt i32 %1674, %1675
  br i1 %1676, label %1677, label %1710

; <label>:1677:                                   ; preds = %1673
  %1678 = load i32, i32* %37, align 4
  %1679 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %1678
  %1680 = load i32, i32* %34, align 4
  %1681 = add nsw i32 %1680, 1
  store i32 %1681, i32* %34, align 4
  %1682 = getelementptr inbounds [129 x float], [129 x float]* %1679, i32 0, i32 %1680
  %1683 = load float, float* %1682, align 4
  store float %1683, float* %99, align 4
  %1684 = load i32, i32* %32, align 4
  %1685 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i32 %1684
  %1686 = load i32, i32* %1685, align 4
  store i32 %1686, i32* %98, align 4
  br label %1687

; <label>:1687:                                   ; preds = %1699, %1677
  %1688 = load i32, i32* %98, align 4
  %1689 = icmp sgt i32 %1688, 0
  br i1 %1689, label %1690, label %1702

; <label>:1690:                                   ; preds = %1687
  %1691 = load i32, i32* %37, align 4
  %1692 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i32 %1691
  %1693 = load i32, i32* %34, align 4
  %1694 = add nsw i32 %1693, 1
  store i32 %1694, i32* %34, align 4
  %1695 = getelementptr inbounds [129 x float], [129 x float]* %1692, i32 0, i32 %1693
  %1696 = load float, float* %1695, align 4
  %1697 = load float, float* %99, align 4
  %1698 = fadd float %1697, %1696
  store float %1698, float* %99, align 4
  br label %1699

; <label>:1699:                                   ; preds = %1690
  %1700 = load i32, i32* %98, align 4
  %1701 = add nsw i32 %1700, -1
  store i32 %1701, i32* %98, align 4
  br label %1687

; <label>:1702:                                   ; preds = %1687
  %1703 = load float, float* %99, align 4
  %1704 = fpext float %1703 to double
  %1705 = load i32, i32* %32, align 4
  %1706 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1705
  store double %1704, double* %1706, align 8
  br label %1707

; <label>:1707:                                   ; preds = %1702
  %1708 = load i32, i32* %32, align 4
  %1709 = add nsw i32 %1708, 1
  store i32 %1709, i32* %32, align 4
  br label %1673

; <label>:1710:                                   ; preds = %1673
  store i32 0, i32* %32, align 4
  br label %1711

; <label>:1711:                                   ; preds = %1758, %1710
  %1712 = load i32, i32* %32, align 4
  %1713 = load i32, i32* @L3psycho_anal.npart_s, align 4
  %1714 = icmp slt i32 %1712, %1713
  br i1 %1714, label %1715, label %1761

; <label>:1715:                                   ; preds = %1711
  store double 0.000000e+00, double* %100, align 8
  %1716 = load i32, i32* %32, align 4
  %1717 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %1716
  %1718 = getelementptr inbounds [2 x i32], [2 x i32]* %1717, i32 0, i32 0
  %1719 = load i32, i32* %1718, align 4
  store i32 %1719, i32* %35, align 4
  br label %1720

; <label>:1720:                                   ; preds = %1739, %1715
  %1721 = load i32, i32* %35, align 4
  %1722 = load i32, i32* %32, align 4
  %1723 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i32 %1722
  %1724 = getelementptr inbounds [2 x i32], [2 x i32]* %1723, i32 0, i32 1
  %1725 = load i32, i32* %1724, align 4
  %1726 = icmp sle i32 %1721, %1725
  br i1 %1726, label %1727, label %1742

; <label>:1727:                                   ; preds = %1720
  %1728 = load i32, i32* %32, align 4
  %1729 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 %1728
  %1730 = load i32, i32* %35, align 4
  %1731 = getelementptr inbounds [64 x double], [64 x double]* %1729, i32 0, i32 %1730
  %1732 = load double, double* %1731, align 8
  %1733 = load i32, i32* %35, align 4
  %1734 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1733
  %1735 = load double, double* %1734, align 8
  %1736 = fmul double %1732, %1735
  %1737 = load double, double* %100, align 8
  %1738 = fadd double %1737, %1736
  store double %1738, double* %100, align 8
  br label %1739

; <label>:1739:                                   ; preds = %1727
  %1740 = load i32, i32* %35, align 4
  %1741 = add nsw i32 %1740, 1
  store i32 %1741, i32* %35, align 4
  br label %1720

; <label>:1742:                                   ; preds = %1720
  %1743 = load i32, i32* %32, align 4
  %1744 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i32 %1743
  %1745 = load double, double* %1744, align 8
  %1746 = load double, double* %100, align 8
  %1747 = fcmp ogt double %1745, %1746
  br i1 %1747, label %1748, label %1752

; <label>:1748:                                   ; preds = %1742
  %1749 = load i32, i32* %32, align 4
  %1750 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i32 %1749
  %1751 = load double, double* %1750, align 8
  br label %1754

; <label>:1752:                                   ; preds = %1742
  %1753 = load double, double* %100, align 8
  br label %1754

; <label>:1754:                                   ; preds = %1752, %1748
  %1755 = phi double [ %1751, %1748 ], [ %1753, %1752 ]
  %1756 = load i32, i32* %32, align 4
  %1757 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1756
  store double %1755, double* %1757, align 8
  br label %1758

; <label>:1758:                                   ; preds = %1754
  %1759 = load i32, i32* %32, align 4
  %1760 = add nsw i32 %1759, 1
  store i32 %1760, i32* %32, align 4
  br label %1711

; <label>:1761:                                   ; preds = %1711
  store i32 0, i32* %36, align 4
  br label %1762

; <label>:1762:                                   ; preds = %1845, %1761
  %1763 = load i32, i32* %36, align 4
  %1764 = icmp slt i32 %1763, 12
  br i1 %1764, label %1765, label %1848

; <label>:1765:                                   ; preds = %1762
  %1766 = load i32, i32* %36, align 4
  %1767 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i32 %1766
  %1768 = load double, double* %1767, align 8
  %1769 = load i32, i32* %36, align 4
  %1770 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i32 %1769
  %1771 = load i32, i32* %1770, align 4
  %1772 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1771
  %1773 = load double, double* %1772, align 8
  %1774 = fmul double %1768, %1773
  %1775 = load i32, i32* %36, align 4
  %1776 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i32 %1775
  %1777 = load double, double* %1776, align 8
  %1778 = load i32, i32* %36, align 4
  %1779 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 %1778
  %1780 = load i32, i32* %1779, align 4
  %1781 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1780
  %1782 = load double, double* %1781, align 8
  %1783 = fmul double %1777, %1782
  %1784 = fadd double %1774, %1783
  store double %1784, double* %101, align 8
  %1785 = load i32, i32* %36, align 4
  %1786 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i32 %1785
  %1787 = load double, double* %1786, align 8
  %1788 = load i32, i32* %36, align 4
  %1789 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i32 %1788
  %1790 = load i32, i32* %1789, align 4
  %1791 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1790
  %1792 = load double, double* %1791, align 8
  %1793 = fmul double %1787, %1792
  %1794 = load i32, i32* %36, align 4
  %1795 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i32 %1794
  %1796 = load double, double* %1795, align 8
  %1797 = load i32, i32* %36, align 4
  %1798 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 %1797
  %1799 = load i32, i32* %1798, align 4
  %1800 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1799
  %1801 = load double, double* %1800, align 8
  %1802 = fmul double %1796, %1801
  %1803 = fadd double %1793, %1802
  store double %1803, double* %102, align 8
  %1804 = load i32, i32* %36, align 4
  %1805 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i32 %1804
  %1806 = load i32, i32* %1805, align 4
  %1807 = add nsw i32 %1806, 1
  store i32 %1807, i32* %32, align 4
  br label %1808

; <label>:1808:                                   ; preds = %1825, %1765
  %1809 = load i32, i32* %32, align 4
  %1810 = load i32, i32* %36, align 4
  %1811 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 %1810
  %1812 = load i32, i32* %1811, align 4
  %1813 = icmp slt i32 %1809, %1812
  br i1 %1813, label %1814, label %1828

; <label>:1814:                                   ; preds = %1808
  %1815 = load i32, i32* %32, align 4
  %1816 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i32 %1815
  %1817 = load double, double* %1816, align 8
  %1818 = load double, double* %101, align 8
  %1819 = fadd double %1818, %1817
  store double %1819, double* %101, align 8
  %1820 = load i32, i32* %32, align 4
  %1821 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i32 %1820
  %1822 = load double, double* %1821, align 8
  %1823 = load double, double* %102, align 8
  %1824 = fadd double %1823, %1822
  store double %1824, double* %102, align 8
  br label %1825

; <label>:1825:                                   ; preds = %1814
  %1826 = load i32, i32* %32, align 4
  %1827 = add nsw i32 %1826, 1
  store i32 %1827, i32* %32, align 4
  br label %1808

; <label>:1828:                                   ; preds = %1808
  %1829 = load double, double* %101, align 8
  %1830 = load i32, i32* %31, align 4
  %1831 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %1830
  %1832 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1831, i32 0, i32 1
  %1833 = load i32, i32* %36, align 4
  %1834 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %1832, i32 0, i32 %1833
  %1835 = load i32, i32* %37, align 4
  %1836 = getelementptr inbounds [3 x double], [3 x double]* %1834, i32 0, i32 %1835
  store double %1829, double* %1836, align 8
  %1837 = load double, double* %102, align 8
  %1838 = load i32, i32* %31, align 4
  %1839 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1838
  %1840 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1839, i32 0, i32 1
  %1841 = load i32, i32* %36, align 4
  %1842 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %1840, i32 0, i32 %1841
  %1843 = load i32, i32* %37, align 4
  %1844 = getelementptr inbounds [3 x double], [3 x double]* %1842, i32 0, i32 %1843
  store double %1837, double* %1844, align 8
  br label %1845

; <label>:1845:                                   ; preds = %1828
  %1846 = load i32, i32* %36, align 4
  %1847 = add nsw i32 %1846, 1
  store i32 %1847, i32* %36, align 4
  br label %1762

; <label>:1848:                                   ; preds = %1762
  br label %1849

; <label>:1849:                                   ; preds = %1848
  %1850 = load i32, i32* %37, align 4
  %1851 = add nsw i32 %1850, 1
  store i32 %1851, i32* %37, align 4
  br label %1669

; <label>:1852:                                   ; preds = %1669
  br label %1853

; <label>:1853:                                   ; preds = %1852
  %1854 = load i32, i32* %31, align 4
  %1855 = add nsw i32 %1854, 1
  store i32 %1855, i32* %31, align 4
  br label %540

; <label>:1856:                                   ; preds = %540
  %1857 = load i32, i32* %30, align 4
  %1858 = icmp eq i32 %1857, 4
  br i1 %1858, label %1859, label %2246

; <label>:1859:                                   ; preds = %1856
  store i32 2, i32* %106, align 4
  store i32 3, i32* %107, align 4
  store i32 0, i32* %36, align 4
  br label %1860

; <label>:1860:                                   ; preds = %2025, %1859
  %1861 = load i32, i32* %36, align 4
  %1862 = icmp slt i32 %1861, 21
  br i1 %1862, label %1863, label %2028

; <label>:1863:                                   ; preds = %1860
  %1864 = load i32, i32* %36, align 4
  %1865 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %1864
  %1866 = load double, double* %1865, align 8
  %1867 = load i32, i32* %36, align 4
  %1868 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %1867
  %1869 = load double, double* %1868, align 8
  %1870 = fmul double 1.580000e+00, %1869
  %1871 = fcmp ole double %1866, %1870
  br i1 %1871, label %1872, label %2024

; <label>:1872:                                   ; preds = %1863
  %1873 = load i32, i32* %36, align 4
  %1874 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %1873
  %1875 = load double, double* %1874, align 8
  %1876 = load i32, i32* %36, align 4
  %1877 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %1876
  %1878 = load double, double* %1877, align 8
  %1879 = fmul double 1.580000e+00, %1878
  %1880 = fcmp ole double %1875, %1879
  br i1 %1880, label %1881, label %2024

; <label>:1881:                                   ; preds = %1872
  %1882 = load i32, i32* %36, align 4
  %1883 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i32 %1882
  %1884 = load double, double* %1883, align 8
  %1885 = load i32, i32* %107, align 4
  %1886 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %1885
  %1887 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1886, i32 0, i32 0
  %1888 = load i32, i32* %36, align 4
  %1889 = getelementptr inbounds [22 x double], [22 x double]* %1887, i32 0, i32 %1888
  %1890 = load double, double* %1889, align 8
  %1891 = fmul double %1884, %1890
  store double %1891, double* %105, align 8
  %1892 = load i32, i32* %106, align 4
  %1893 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1892
  %1894 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1893, i32 0, i32 0
  %1895 = load i32, i32* %36, align 4
  %1896 = getelementptr inbounds [22 x double], [22 x double]* %1894, i32 0, i32 %1895
  %1897 = load double, double* %1896, align 8
  %1898 = load i32, i32* %107, align 4
  %1899 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1898
  %1900 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1899, i32 0, i32 0
  %1901 = load i32, i32* %36, align 4
  %1902 = getelementptr inbounds [22 x double], [22 x double]* %1900, i32 0, i32 %1901
  %1903 = load double, double* %1902, align 8
  %1904 = load double, double* %105, align 8
  %1905 = fcmp olt double %1903, %1904
  br i1 %1905, label %1906, label %1913

; <label>:1906:                                   ; preds = %1881
  %1907 = load i32, i32* %107, align 4
  %1908 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1907
  %1909 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1908, i32 0, i32 0
  %1910 = load i32, i32* %36, align 4
  %1911 = getelementptr inbounds [22 x double], [22 x double]* %1909, i32 0, i32 %1910
  %1912 = load double, double* %1911, align 8
  br label %1915

; <label>:1913:                                   ; preds = %1881
  %1914 = load double, double* %105, align 8
  br label %1915

; <label>:1915:                                   ; preds = %1913, %1906
  %1916 = phi double [ %1912, %1906 ], [ %1914, %1913 ]
  %1917 = fcmp ogt double %1897, %1916
  br i1 %1917, label %1918, label %1925

; <label>:1918:                                   ; preds = %1915
  %1919 = load i32, i32* %106, align 4
  %1920 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1919
  %1921 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1920, i32 0, i32 0
  %1922 = load i32, i32* %36, align 4
  %1923 = getelementptr inbounds [22 x double], [22 x double]* %1921, i32 0, i32 %1922
  %1924 = load double, double* %1923, align 8
  br label %1945

; <label>:1925:                                   ; preds = %1915
  %1926 = load i32, i32* %107, align 4
  %1927 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1926
  %1928 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1927, i32 0, i32 0
  %1929 = load i32, i32* %36, align 4
  %1930 = getelementptr inbounds [22 x double], [22 x double]* %1928, i32 0, i32 %1929
  %1931 = load double, double* %1930, align 8
  %1932 = load double, double* %105, align 8
  %1933 = fcmp olt double %1931, %1932
  br i1 %1933, label %1934, label %1941

; <label>:1934:                                   ; preds = %1925
  %1935 = load i32, i32* %107, align 4
  %1936 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1935
  %1937 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1936, i32 0, i32 0
  %1938 = load i32, i32* %36, align 4
  %1939 = getelementptr inbounds [22 x double], [22 x double]* %1937, i32 0, i32 %1938
  %1940 = load double, double* %1939, align 8
  br label %1943

; <label>:1941:                                   ; preds = %1925
  %1942 = load double, double* %105, align 8
  br label %1943

; <label>:1943:                                   ; preds = %1941, %1934
  %1944 = phi double [ %1940, %1934 ], [ %1942, %1941 ]
  br label %1945

; <label>:1945:                                   ; preds = %1943, %1918
  %1946 = phi double [ %1924, %1918 ], [ %1944, %1943 ]
  store double %1946, double* %104, align 8
  %1947 = load i32, i32* %36, align 4
  %1948 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i32 %1947
  %1949 = load double, double* %1948, align 8
  %1950 = load i32, i32* %106, align 4
  %1951 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %1950
  %1952 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1951, i32 0, i32 0
  %1953 = load i32, i32* %36, align 4
  %1954 = getelementptr inbounds [22 x double], [22 x double]* %1952, i32 0, i32 %1953
  %1955 = load double, double* %1954, align 8
  %1956 = fmul double %1949, %1955
  store double %1956, double* %105, align 8
  %1957 = load i32, i32* %107, align 4
  %1958 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1957
  %1959 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1958, i32 0, i32 0
  %1960 = load i32, i32* %36, align 4
  %1961 = getelementptr inbounds [22 x double], [22 x double]* %1959, i32 0, i32 %1960
  %1962 = load double, double* %1961, align 8
  %1963 = load i32, i32* %106, align 4
  %1964 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1963
  %1965 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1964, i32 0, i32 0
  %1966 = load i32, i32* %36, align 4
  %1967 = getelementptr inbounds [22 x double], [22 x double]* %1965, i32 0, i32 %1966
  %1968 = load double, double* %1967, align 8
  %1969 = load double, double* %105, align 8
  %1970 = fcmp olt double %1968, %1969
  br i1 %1970, label %1971, label %1978

; <label>:1971:                                   ; preds = %1945
  %1972 = load i32, i32* %106, align 4
  %1973 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1972
  %1974 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1973, i32 0, i32 0
  %1975 = load i32, i32* %36, align 4
  %1976 = getelementptr inbounds [22 x double], [22 x double]* %1974, i32 0, i32 %1975
  %1977 = load double, double* %1976, align 8
  br label %1980

; <label>:1978:                                   ; preds = %1945
  %1979 = load double, double* %105, align 8
  br label %1980

; <label>:1980:                                   ; preds = %1978, %1971
  %1981 = phi double [ %1977, %1971 ], [ %1979, %1978 ]
  %1982 = fcmp ogt double %1962, %1981
  br i1 %1982, label %1983, label %1990

; <label>:1983:                                   ; preds = %1980
  %1984 = load i32, i32* %107, align 4
  %1985 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1984
  %1986 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1985, i32 0, i32 0
  %1987 = load i32, i32* %36, align 4
  %1988 = getelementptr inbounds [22 x double], [22 x double]* %1986, i32 0, i32 %1987
  %1989 = load double, double* %1988, align 8
  br label %2010

; <label>:1990:                                   ; preds = %1980
  %1991 = load i32, i32* %106, align 4
  %1992 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %1991
  %1993 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %1992, i32 0, i32 0
  %1994 = load i32, i32* %36, align 4
  %1995 = getelementptr inbounds [22 x double], [22 x double]* %1993, i32 0, i32 %1994
  %1996 = load double, double* %1995, align 8
  %1997 = load double, double* %105, align 8
  %1998 = fcmp olt double %1996, %1997
  br i1 %1998, label %1999, label %2006

; <label>:1999:                                   ; preds = %1990
  %2000 = load i32, i32* %106, align 4
  %2001 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2000
  %2002 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2001, i32 0, i32 0
  %2003 = load i32, i32* %36, align 4
  %2004 = getelementptr inbounds [22 x double], [22 x double]* %2002, i32 0, i32 %2003
  %2005 = load double, double* %2004, align 8
  br label %2008

; <label>:2006:                                   ; preds = %1990
  %2007 = load double, double* %105, align 8
  br label %2008

; <label>:2008:                                   ; preds = %2006, %1999
  %2009 = phi double [ %2005, %1999 ], [ %2007, %2006 ]
  br label %2010

; <label>:2010:                                   ; preds = %2008, %1983
  %2011 = phi double [ %1989, %1983 ], [ %2009, %2008 ]
  store double %2011, double* %103, align 8
  %2012 = load double, double* %104, align 8
  %2013 = load i32, i32* %106, align 4
  %2014 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2013
  %2015 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2014, i32 0, i32 0
  %2016 = load i32, i32* %36, align 4
  %2017 = getelementptr inbounds [22 x double], [22 x double]* %2015, i32 0, i32 %2016
  store double %2012, double* %2017, align 8
  %2018 = load double, double* %103, align 8
  %2019 = load i32, i32* %107, align 4
  %2020 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2019
  %2021 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2020, i32 0, i32 0
  %2022 = load i32, i32* %36, align 4
  %2023 = getelementptr inbounds [22 x double], [22 x double]* %2021, i32 0, i32 %2022
  store double %2018, double* %2023, align 8
  br label %2024

; <label>:2024:                                   ; preds = %2010, %1872, %1863
  br label %2025

; <label>:2025:                                   ; preds = %2024
  %2026 = load i32, i32* %36, align 4
  %2027 = add nsw i32 %2026, 1
  store i32 %2027, i32* %36, align 4
  br label %1860

; <label>:2028:                                   ; preds = %1860
  store i32 0, i32* %36, align 4
  br label %2029

; <label>:2029:                                   ; preds = %2242, %2028
  %2030 = load i32, i32* %36, align 4
  %2031 = icmp slt i32 %2030, 12
  br i1 %2031, label %2032, label %2245

; <label>:2032:                                   ; preds = %2029
  store i32 0, i32* %37, align 4
  br label %2033

; <label>:2033:                                   ; preds = %2238, %2032
  %2034 = load i32, i32* %37, align 4
  %2035 = icmp slt i32 %2034, 3
  br i1 %2035, label %2036, label %2241

; <label>:2036:                                   ; preds = %2033
  %2037 = load i32, i32* %36, align 4
  %2038 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2037
  %2039 = load i32, i32* %37, align 4
  %2040 = getelementptr inbounds [3 x double], [3 x double]* %2038, i32 0, i32 %2039
  %2041 = load double, double* %2040, align 8
  %2042 = load i32, i32* %36, align 4
  %2043 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2042
  %2044 = load i32, i32* %37, align 4
  %2045 = getelementptr inbounds [3 x double], [3 x double]* %2043, i32 0, i32 %2044
  %2046 = load double, double* %2045, align 8
  %2047 = fmul double 1.580000e+00, %2046
  %2048 = fcmp ole double %2041, %2047
  br i1 %2048, label %2049, label %2237

; <label>:2049:                                   ; preds = %2036
  %2050 = load i32, i32* %36, align 4
  %2051 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2050
  %2052 = load i32, i32* %37, align 4
  %2053 = getelementptr inbounds [3 x double], [3 x double]* %2051, i32 0, i32 %2052
  %2054 = load double, double* %2053, align 8
  %2055 = load i32, i32* %36, align 4
  %2056 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2055
  %2057 = load i32, i32* %37, align 4
  %2058 = getelementptr inbounds [3 x double], [3 x double]* %2056, i32 0, i32 %2057
  %2059 = load double, double* %2058, align 8
  %2060 = fmul double 1.580000e+00, %2059
  %2061 = fcmp ole double %2054, %2060
  br i1 %2061, label %2062, label %2237

; <label>:2062:                                   ; preds = %2049
  %2063 = load i32, i32* %36, align 4
  %2064 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i32 %2063
  %2065 = load double, double* %2064, align 8
  %2066 = load i32, i32* %107, align 4
  %2067 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %2066
  %2068 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2067, i32 0, i32 1
  %2069 = load i32, i32* %36, align 4
  %2070 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2068, i32 0, i32 %2069
  %2071 = load i32, i32* %37, align 4
  %2072 = getelementptr inbounds [3 x double], [3 x double]* %2070, i32 0, i32 %2071
  %2073 = load double, double* %2072, align 8
  %2074 = fmul double %2065, %2073
  store double %2074, double* %105, align 8
  %2075 = load i32, i32* %106, align 4
  %2076 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2075
  %2077 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2076, i32 0, i32 1
  %2078 = load i32, i32* %36, align 4
  %2079 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2077, i32 0, i32 %2078
  %2080 = load i32, i32* %37, align 4
  %2081 = getelementptr inbounds [3 x double], [3 x double]* %2079, i32 0, i32 %2080
  %2082 = load double, double* %2081, align 8
  %2083 = load i32, i32* %107, align 4
  %2084 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2083
  %2085 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2084, i32 0, i32 1
  %2086 = load i32, i32* %36, align 4
  %2087 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2085, i32 0, i32 %2086
  %2088 = load i32, i32* %37, align 4
  %2089 = getelementptr inbounds [3 x double], [3 x double]* %2087, i32 0, i32 %2088
  %2090 = load double, double* %2089, align 8
  %2091 = load double, double* %105, align 8
  %2092 = fcmp olt double %2090, %2091
  br i1 %2092, label %2093, label %2102

; <label>:2093:                                   ; preds = %2062
  %2094 = load i32, i32* %107, align 4
  %2095 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2094
  %2096 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2095, i32 0, i32 1
  %2097 = load i32, i32* %36, align 4
  %2098 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2096, i32 0, i32 %2097
  %2099 = load i32, i32* %37, align 4
  %2100 = getelementptr inbounds [3 x double], [3 x double]* %2098, i32 0, i32 %2099
  %2101 = load double, double* %2100, align 8
  br label %2104

; <label>:2102:                                   ; preds = %2062
  %2103 = load double, double* %105, align 8
  br label %2104

; <label>:2104:                                   ; preds = %2102, %2093
  %2105 = phi double [ %2101, %2093 ], [ %2103, %2102 ]
  %2106 = fcmp ogt double %2082, %2105
  br i1 %2106, label %2107, label %2116

; <label>:2107:                                   ; preds = %2104
  %2108 = load i32, i32* %106, align 4
  %2109 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2108
  %2110 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2109, i32 0, i32 1
  %2111 = load i32, i32* %36, align 4
  %2112 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2110, i32 0, i32 %2111
  %2113 = load i32, i32* %37, align 4
  %2114 = getelementptr inbounds [3 x double], [3 x double]* %2112, i32 0, i32 %2113
  %2115 = load double, double* %2114, align 8
  br label %2140

; <label>:2116:                                   ; preds = %2104
  %2117 = load i32, i32* %107, align 4
  %2118 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2117
  %2119 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2118, i32 0, i32 1
  %2120 = load i32, i32* %36, align 4
  %2121 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2119, i32 0, i32 %2120
  %2122 = load i32, i32* %37, align 4
  %2123 = getelementptr inbounds [3 x double], [3 x double]* %2121, i32 0, i32 %2122
  %2124 = load double, double* %2123, align 8
  %2125 = load double, double* %105, align 8
  %2126 = fcmp olt double %2124, %2125
  br i1 %2126, label %2127, label %2136

; <label>:2127:                                   ; preds = %2116
  %2128 = load i32, i32* %107, align 4
  %2129 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2128
  %2130 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2129, i32 0, i32 1
  %2131 = load i32, i32* %36, align 4
  %2132 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2130, i32 0, i32 %2131
  %2133 = load i32, i32* %37, align 4
  %2134 = getelementptr inbounds [3 x double], [3 x double]* %2132, i32 0, i32 %2133
  %2135 = load double, double* %2134, align 8
  br label %2138

; <label>:2136:                                   ; preds = %2116
  %2137 = load double, double* %105, align 8
  br label %2138

; <label>:2138:                                   ; preds = %2136, %2127
  %2139 = phi double [ %2135, %2127 ], [ %2137, %2136 ]
  br label %2140

; <label>:2140:                                   ; preds = %2138, %2107
  %2141 = phi double [ %2115, %2107 ], [ %2139, %2138 ]
  store double %2141, double* %104, align 8
  %2142 = load i32, i32* %36, align 4
  %2143 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i32 %2142
  %2144 = load double, double* %2143, align 8
  %2145 = load i32, i32* %106, align 4
  %2146 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i32 %2145
  %2147 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2146, i32 0, i32 1
  %2148 = load i32, i32* %36, align 4
  %2149 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2147, i32 0, i32 %2148
  %2150 = load i32, i32* %37, align 4
  %2151 = getelementptr inbounds [3 x double], [3 x double]* %2149, i32 0, i32 %2150
  %2152 = load double, double* %2151, align 8
  %2153 = fmul double %2144, %2152
  store double %2153, double* %105, align 8
  %2154 = load i32, i32* %107, align 4
  %2155 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2154
  %2156 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2155, i32 0, i32 1
  %2157 = load i32, i32* %36, align 4
  %2158 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2156, i32 0, i32 %2157
  %2159 = load i32, i32* %37, align 4
  %2160 = getelementptr inbounds [3 x double], [3 x double]* %2158, i32 0, i32 %2159
  %2161 = load double, double* %2160, align 8
  %2162 = load i32, i32* %106, align 4
  %2163 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2162
  %2164 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2163, i32 0, i32 1
  %2165 = load i32, i32* %36, align 4
  %2166 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2164, i32 0, i32 %2165
  %2167 = load i32, i32* %37, align 4
  %2168 = getelementptr inbounds [3 x double], [3 x double]* %2166, i32 0, i32 %2167
  %2169 = load double, double* %2168, align 8
  %2170 = load double, double* %105, align 8
  %2171 = fcmp olt double %2169, %2170
  br i1 %2171, label %2172, label %2181

; <label>:2172:                                   ; preds = %2140
  %2173 = load i32, i32* %106, align 4
  %2174 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2173
  %2175 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2174, i32 0, i32 1
  %2176 = load i32, i32* %36, align 4
  %2177 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2175, i32 0, i32 %2176
  %2178 = load i32, i32* %37, align 4
  %2179 = getelementptr inbounds [3 x double], [3 x double]* %2177, i32 0, i32 %2178
  %2180 = load double, double* %2179, align 8
  br label %2183

; <label>:2181:                                   ; preds = %2140
  %2182 = load double, double* %105, align 8
  br label %2183

; <label>:2183:                                   ; preds = %2181, %2172
  %2184 = phi double [ %2180, %2172 ], [ %2182, %2181 ]
  %2185 = fcmp ogt double %2161, %2184
  br i1 %2185, label %2186, label %2195

; <label>:2186:                                   ; preds = %2183
  %2187 = load i32, i32* %107, align 4
  %2188 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2187
  %2189 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2188, i32 0, i32 1
  %2190 = load i32, i32* %36, align 4
  %2191 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2189, i32 0, i32 %2190
  %2192 = load i32, i32* %37, align 4
  %2193 = getelementptr inbounds [3 x double], [3 x double]* %2191, i32 0, i32 %2192
  %2194 = load double, double* %2193, align 8
  br label %2219

; <label>:2195:                                   ; preds = %2183
  %2196 = load i32, i32* %106, align 4
  %2197 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2196
  %2198 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2197, i32 0, i32 1
  %2199 = load i32, i32* %36, align 4
  %2200 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2198, i32 0, i32 %2199
  %2201 = load i32, i32* %37, align 4
  %2202 = getelementptr inbounds [3 x double], [3 x double]* %2200, i32 0, i32 %2201
  %2203 = load double, double* %2202, align 8
  %2204 = load double, double* %105, align 8
  %2205 = fcmp olt double %2203, %2204
  br i1 %2205, label %2206, label %2215

; <label>:2206:                                   ; preds = %2195
  %2207 = load i32, i32* %106, align 4
  %2208 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2207
  %2209 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2208, i32 0, i32 1
  %2210 = load i32, i32* %36, align 4
  %2211 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2209, i32 0, i32 %2210
  %2212 = load i32, i32* %37, align 4
  %2213 = getelementptr inbounds [3 x double], [3 x double]* %2211, i32 0, i32 %2212
  %2214 = load double, double* %2213, align 8
  br label %2217

; <label>:2215:                                   ; preds = %2195
  %2216 = load double, double* %105, align 8
  br label %2217

; <label>:2217:                                   ; preds = %2215, %2206
  %2218 = phi double [ %2214, %2206 ], [ %2216, %2215 ]
  br label %2219

; <label>:2219:                                   ; preds = %2217, %2186
  %2220 = phi double [ %2194, %2186 ], [ %2218, %2217 ]
  store double %2220, double* %103, align 8
  %2221 = load double, double* %104, align 8
  %2222 = load i32, i32* %106, align 4
  %2223 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2222
  %2224 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2223, i32 0, i32 1
  %2225 = load i32, i32* %36, align 4
  %2226 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2224, i32 0, i32 %2225
  %2227 = load i32, i32* %37, align 4
  %2228 = getelementptr inbounds [3 x double], [3 x double]* %2226, i32 0, i32 %2227
  store double %2221, double* %2228, align 8
  %2229 = load double, double* %103, align 8
  %2230 = load i32, i32* %107, align 4
  %2231 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 %2230
  %2232 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %2231, i32 0, i32 1
  %2233 = load i32, i32* %36, align 4
  %2234 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %2232, i32 0, i32 %2233
  %2235 = load i32, i32* %37, align 4
  %2236 = getelementptr inbounds [3 x double], [3 x double]* %2234, i32 0, i32 %2235
  store double %2229, double* %2236, align 8
  br label %2237

; <label>:2237:                                   ; preds = %2219, %2049, %2036
  br label %2238

; <label>:2238:                                   ; preds = %2237
  %2239 = load i32, i32* %37, align 4
  %2240 = add nsw i32 %2239, 1
  store i32 %2240, i32* %37, align 4
  br label %2033

; <label>:2241:                                   ; preds = %2033
  br label %2242

; <label>:2242:                                   ; preds = %2241
  %2243 = load i32, i32* %36, align 4
  %2244 = add nsw i32 %2243, 1
  store i32 %2244, i32* %36, align 4
  br label %2029

; <label>:2245:                                   ; preds = %2029
  br label %2246

; <label>:2246:                                   ; preds = %2245, %1856
  %2247 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2248 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2247, i32 0, i32 8
  %2249 = load i32, i32* %2248, align 4
  %2250 = icmp eq i32 %2249, 1
  br i1 %2250, label %2251, label %2414

; <label>:2251:                                   ; preds = %2246
  store double 0.000000e+00, double* %111, align 8
  store double 0.000000e+00, double* %112, align 8
  store i32 5, i32* %36, align 4
  br label %2252

; <label>:2252:                                   ; preds = %2306, %2251
  %2253 = load i32, i32* %36, align 4
  %2254 = icmp slt i32 %2253, 21
  br i1 %2254, label %2255, label %2309

; <label>:2255:                                   ; preds = %2252
  %2256 = load i32, i32* %36, align 4
  %2257 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %2256
  %2258 = load double, double* %2257, align 8
  %2259 = load i32, i32* %36, align 4
  %2260 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %2259
  %2261 = load double, double* %2260, align 8
  %2262 = fcmp olt double %2258, %2261
  br i1 %2262, label %2263, label %2267

; <label>:2263:                                   ; preds = %2255
  %2264 = load i32, i32* %36, align 4
  %2265 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %2264
  %2266 = load double, double* %2265, align 8
  br label %2271

; <label>:2267:                                   ; preds = %2255
  %2268 = load i32, i32* %36, align 4
  %2269 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %2268
  %2270 = load double, double* %2269, align 8
  br label %2271

; <label>:2271:                                   ; preds = %2267, %2263
  %2272 = phi double [ %2266, %2263 ], [ %2270, %2267 ]
  store double %2272, double* %109, align 8
  %2273 = load i32, i32* %36, align 4
  %2274 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %2273
  %2275 = load double, double* %2274, align 8
  %2276 = load i32, i32* %36, align 4
  %2277 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %2276
  %2278 = load double, double* %2277, align 8
  %2279 = fcmp ogt double %2275, %2278
  br i1 %2279, label %2280, label %2284

; <label>:2280:                                   ; preds = %2271
  %2281 = load i32, i32* %36, align 4
  %2282 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 0), i32 0, i32 %2281
  %2283 = load double, double* %2282, align 8
  br label %2288

; <label>:2284:                                   ; preds = %2271
  %2285 = load i32, i32* %36, align 4
  %2286 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 0), i32 0, i32 %2285
  %2287 = load double, double* %2286, align 8
  br label %2288

; <label>:2288:                                   ; preds = %2284, %2280
  %2289 = phi double [ %2283, %2280 ], [ %2287, %2284 ]
  store double %2289, double* %110, align 8
  %2290 = load double, double* %110, align 8
  %2291 = load double, double* %109, align 8
  %2292 = fmul double 1.000000e+03, %2291
  %2293 = fcmp oge double %2290, %2292
  br i1 %2293, label %2294, label %2295

; <label>:2294:                                   ; preds = %2288
  store double 3.000000e+00, double* %108, align 8
  br label %2300

; <label>:2295:                                   ; preds = %2288
  %2296 = load double, double* %110, align 8
  %2297 = load double, double* %109, align 8
  %2298 = fdiv double %2296, %2297
  %2299 = call arm_aapcscc double @log10(double %2298) #7
  store double %2299, double* %108, align 8
  br label %2300

; <label>:2300:                                   ; preds = %2295, %2294
  %2301 = load double, double* %108, align 8
  %2302 = load double, double* %111, align 8
  %2303 = fadd double %2302, %2301
  store double %2303, double* %111, align 8
  %2304 = load double, double* %112, align 8
  %2305 = fadd double %2304, 1.000000e+00
  store double %2305, double* %112, align 8
  br label %2306

; <label>:2306:                                   ; preds = %2300
  %2307 = load i32, i32* %36, align 4
  %2308 = add nsw i32 %2307, 1
  store i32 %2308, i32* %36, align 4
  br label %2252

; <label>:2309:                                   ; preds = %2252
  %2310 = load double, double* %111, align 8
  %2311 = load double, double* %112, align 8
  %2312 = fdiv double %2310, %2311
  %2313 = fmul double %2312, 7.000000e-01
  store double %2313, double* %26, align 8
  %2314 = load double, double* %26, align 8
  %2315 = fcmp olt double %2314, 5.000000e-01
  br i1 %2315, label %2316, label %2318

; <label>:2316:                                   ; preds = %2309
  %2317 = load double, double* %26, align 8
  br label %2319

; <label>:2318:                                   ; preds = %2309
  br label %2319

; <label>:2319:                                   ; preds = %2318, %2316
  %2320 = phi double [ %2317, %2316 ], [ 5.000000e-01, %2318 ]
  store double %2320, double* %26, align 8
  store double 0.000000e+00, double* %111, align 8
  store double 0.000000e+00, double* %112, align 8
  store i32 0, i32* %37, align 4
  br label %2321

; <label>:2321:                                   ; preds = %2399, %2319
  %2322 = load i32, i32* %37, align 4
  %2323 = icmp slt i32 %2322, 3
  br i1 %2323, label %2324, label %2402

; <label>:2324:                                   ; preds = %2321
  store i32 3, i32* %36, align 4
  br label %2325

; <label>:2325:                                   ; preds = %2395, %2324
  %2326 = load i32, i32* %36, align 4
  %2327 = icmp slt i32 %2326, 12
  br i1 %2327, label %2328, label %2398

; <label>:2328:                                   ; preds = %2325
  %2329 = load i32, i32* %36, align 4
  %2330 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2329
  %2331 = load i32, i32* %37, align 4
  %2332 = getelementptr inbounds [3 x double], [3 x double]* %2330, i32 0, i32 %2331
  %2333 = load double, double* %2332, align 8
  %2334 = load i32, i32* %36, align 4
  %2335 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2334
  %2336 = load i32, i32* %37, align 4
  %2337 = getelementptr inbounds [3 x double], [3 x double]* %2335, i32 0, i32 %2336
  %2338 = load double, double* %2337, align 8
  %2339 = fcmp olt double %2333, %2338
  br i1 %2339, label %2340, label %2346

; <label>:2340:                                   ; preds = %2328
  %2341 = load i32, i32* %36, align 4
  %2342 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2341
  %2343 = load i32, i32* %37, align 4
  %2344 = getelementptr inbounds [3 x double], [3 x double]* %2342, i32 0, i32 %2343
  %2345 = load double, double* %2344, align 8
  br label %2352

; <label>:2346:                                   ; preds = %2328
  %2347 = load i32, i32* %36, align 4
  %2348 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2347
  %2349 = load i32, i32* %37, align 4
  %2350 = getelementptr inbounds [3 x double], [3 x double]* %2348, i32 0, i32 %2349
  %2351 = load double, double* %2350, align 8
  br label %2352

; <label>:2352:                                   ; preds = %2346, %2340
  %2353 = phi double [ %2345, %2340 ], [ %2351, %2346 ]
  store double %2353, double* %109, align 8
  %2354 = load i32, i32* %36, align 4
  %2355 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2354
  %2356 = load i32, i32* %37, align 4
  %2357 = getelementptr inbounds [3 x double], [3 x double]* %2355, i32 0, i32 %2356
  %2358 = load double, double* %2357, align 8
  %2359 = load i32, i32* %36, align 4
  %2360 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2359
  %2361 = load i32, i32* %37, align 4
  %2362 = getelementptr inbounds [3 x double], [3 x double]* %2360, i32 0, i32 %2361
  %2363 = load double, double* %2362, align 8
  %2364 = fcmp ogt double %2358, %2363
  br i1 %2364, label %2365, label %2371

; <label>:2365:                                   ; preds = %2352
  %2366 = load i32, i32* %36, align 4
  %2367 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 0, i32 1), i32 0, i32 %2366
  %2368 = load i32, i32* %37, align 4
  %2369 = getelementptr inbounds [3 x double], [3 x double]* %2367, i32 0, i32 %2368
  %2370 = load double, double* %2369, align 8
  br label %2377

; <label>:2371:                                   ; preds = %2352
  %2372 = load i32, i32* %36, align 4
  %2373 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i32 1, i32 1), i32 0, i32 %2372
  %2374 = load i32, i32* %37, align 4
  %2375 = getelementptr inbounds [3 x double], [3 x double]* %2373, i32 0, i32 %2374
  %2376 = load double, double* %2375, align 8
  br label %2377

; <label>:2377:                                   ; preds = %2371, %2365
  %2378 = phi double [ %2370, %2365 ], [ %2376, %2371 ]
  store double %2378, double* %110, align 8
  %2379 = load double, double* %110, align 8
  %2380 = load double, double* %109, align 8
  %2381 = fmul double 1.000000e+03, %2380
  %2382 = fcmp oge double %2379, %2381
  br i1 %2382, label %2383, label %2384

; <label>:2383:                                   ; preds = %2377
  store double 3.000000e+00, double* %108, align 8
  br label %2389

; <label>:2384:                                   ; preds = %2377
  %2385 = load double, double* %110, align 8
  %2386 = load double, double* %109, align 8
  %2387 = fdiv double %2385, %2386
  %2388 = call arm_aapcscc double @log10(double %2387) #7
  store double %2388, double* %108, align 8
  br label %2389

; <label>:2389:                                   ; preds = %2384, %2383
  %2390 = load double, double* %108, align 8
  %2391 = load double, double* %111, align 8
  %2392 = fadd double %2391, %2390
  store double %2392, double* %111, align 8
  %2393 = load double, double* %112, align 8
  %2394 = fadd double %2393, 1.000000e+00
  store double %2394, double* %112, align 8
  br label %2395

; <label>:2395:                                   ; preds = %2389
  %2396 = load i32, i32* %36, align 4
  %2397 = add nsw i32 %2396, 1
  store i32 %2397, i32* %36, align 4
  br label %2325

; <label>:2398:                                   ; preds = %2325
  br label %2399

; <label>:2399:                                   ; preds = %2398
  %2400 = load i32, i32* %37, align 4
  %2401 = add nsw i32 %2400, 1
  store i32 %2401, i32* %37, align 4
  br label %2321

; <label>:2402:                                   ; preds = %2321
  %2403 = load double, double* %111, align 8
  %2404 = load double, double* %112, align 8
  %2405 = fdiv double %2403, %2404
  %2406 = fmul double %2405, 7.000000e-01
  store double %2406, double* %27, align 8
  %2407 = load double, double* %27, align 8
  %2408 = fcmp olt double %2407, 5.000000e-01
  br i1 %2408, label %2409, label %2411

; <label>:2409:                                   ; preds = %2402
  %2410 = load double, double* %27, align 8
  br label %2412

; <label>:2411:                                   ; preds = %2402
  br label %2412

; <label>:2412:                                   ; preds = %2411, %2409
  %2413 = phi double [ %2410, %2409 ], [ 5.000000e-01, %2411 ]
  store double %2413, double* %27, align 8
  br label %2414

; <label>:2414:                                   ; preds = %2412, %2246
  store i32 0, i32* %31, align 4
  br label %2415

; <label>:2415:                                   ; preds = %2424, %2414
  %2416 = load i32, i32* %31, align 4
  %2417 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2418 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2417, i32 0, i32 46
  %2419 = load i32, i32* %2418, align 4
  %2420 = icmp slt i32 %2416, %2419
  br i1 %2420, label %2421, label %2427

; <label>:2421:                                   ; preds = %2415
  %2422 = load i32, i32* %31, align 4
  %2423 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i32 0, i32 %2422
  store i32 0, i32* %2423, align 4
  br label %2424

; <label>:2424:                                   ; preds = %2421
  %2425 = load i32, i32* %31, align 4
  %2426 = add nsw i32 %2425, 1
  store i32 %2426, i32* %31, align 4
  br label %2415

; <label>:2427:                                   ; preds = %2415
  %2428 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2429 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2428, i32 0, i32 46
  %2430 = load i32, i32* %2429, align 4
  %2431 = icmp eq i32 %2430, 2
  br i1 %2431, label %2432, label %2460

; <label>:2432:                                   ; preds = %2427
  %2433 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2434 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2433, i32 0, i32 36
  %2435 = load i32, i32* %2434, align 4
  %2436 = icmp ne i32 %2435, 0
  br i1 %2436, label %2437, label %2442

; <label>:2437:                                   ; preds = %2432
  %2438 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2439 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2438, i32 0, i32 8
  %2440 = load i32, i32* %2439, align 4
  %2441 = icmp eq i32 %2440, 1
  br i1 %2441, label %2442, label %2459

; <label>:2442:                                   ; preds = %2437, %2432
  %2443 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 0
  %2444 = load i32, i32* %2443, align 4
  %2445 = icmp ne i32 %2444, 0
  br i1 %2445, label %2446, label %2450

; <label>:2446:                                   ; preds = %2442
  %2447 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 1
  %2448 = load i32, i32* %2447, align 4
  %2449 = icmp ne i32 %2448, 0
  br label %2450

; <label>:2450:                                   ; preds = %2446, %2442
  %2451 = phi i1 [ false, %2442 ], [ %2449, %2446 ]
  %2452 = zext i1 %2451 to i32
  store i32 %2452, i32* %113, align 4
  %2453 = load i32, i32* %113, align 4
  %2454 = icmp ne i32 %2453, 0
  br i1 %2454, label %2458, label %2455

; <label>:2455:                                   ; preds = %2450
  %2456 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 0
  store i32 0, i32* %2456, align 4
  %2457 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 1
  store i32 0, i32* %2457, align 4
  br label %2458

; <label>:2458:                                   ; preds = %2455, %2450
  br label %2459

; <label>:2459:                                   ; preds = %2458, %2437
  br label %2460

; <label>:2460:                                   ; preds = %2459, %2427
  store i32 0, i32* %31, align 4
  br label %2461

; <label>:2461:                                   ; preds = %2517, %2460
  %2462 = load i32, i32* %31, align 4
  %2463 = load %struct.lame_global_flags*, %struct.lame_global_flags** %12, align 4
  %2464 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2463, i32 0, i32 46
  %2465 = load i32, i32* %2464, align 4
  %2466 = icmp slt i32 %2462, %2465
  br i1 %2466, label %2467, label %2520

; <label>:2467:                                   ; preds = %2461
  %2468 = load i32, i32* %31, align 4
  %2469 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i32 0, i32 %2468
  %2470 = load i32, i32* %2469, align 4
  %2471 = icmp ne i32 %2470, 0
  br i1 %2471, label %2472, label %2486

; <label>:2472:                                   ; preds = %2467
  %2473 = load i32, i32* %31, align 4
  %2474 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2473
  %2475 = load i32, i32* %2474, align 4
  switch i32 %2475, label %2485 [
    i32 0, label %2476
    i32 3, label %2476
    i32 2, label %2479
    i32 1, label %2482
  ]

; <label>:2476:                                   ; preds = %2472, %2472
  %2477 = load i32, i32* %31, align 4
  %2478 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i32 0, i32 %2477
  store i32 0, i32* %2478, align 4
  br label %2485

; <label>:2479:                                   ; preds = %2472
  %2480 = load i32, i32* %31, align 4
  %2481 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i32 0, i32 %2480
  store i32 3, i32* %2481, align 4
  br label %2485

; <label>:2482:                                   ; preds = %2472
  %2483 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %2484 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2483, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call arm_aapcscc void @abort() #6
  unreachable

; <label>:2485:                                   ; preds = %2472, %2479, %2476
  br label %2505

; <label>:2486:                                   ; preds = %2467
  %2487 = load i32, i32* %31, align 4
  %2488 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i32 0, i32 %2487
  store i32 2, i32* %2488, align 4
  %2489 = load i32, i32* %31, align 4
  %2490 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2489
  %2491 = load i32, i32* %2490, align 4
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2493, label %2496

; <label>:2493:                                   ; preds = %2486
  %2494 = load i32, i32* %31, align 4
  %2495 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2494
  store i32 1, i32* %2495, align 4
  br label %2496

; <label>:2496:                                   ; preds = %2493, %2486
  %2497 = load i32, i32* %31, align 4
  %2498 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2497
  %2499 = load i32, i32* %2498, align 4
  %2500 = icmp eq i32 %2499, 3
  br i1 %2500, label %2501, label %2504

; <label>:2501:                                   ; preds = %2496
  %2502 = load i32, i32* %31, align 4
  %2503 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2502
  store i32 2, i32* %2503, align 4
  br label %2504

; <label>:2504:                                   ; preds = %2501, %2496
  br label %2505

; <label>:2505:                                   ; preds = %2504, %2485
  %2506 = load i32, i32* %31, align 4
  %2507 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2506
  %2508 = load i32, i32* %2507, align 4
  %2509 = load i32*, i32** %22, align 4
  %2510 = load i32, i32* %31, align 4
  %2511 = getelementptr inbounds i32, i32* %2509, i32 %2510
  store i32 %2508, i32* %2511, align 4
  %2512 = load i32, i32* %31, align 4
  %2513 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i32 0, i32 %2512
  %2514 = load i32, i32* %2513, align 4
  %2515 = load i32, i32* %31, align 4
  %2516 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i32 %2515
  store i32 %2514, i32* %2516, align 4
  br label %2517

; <label>:2517:                                   ; preds = %2505
  %2518 = load i32, i32* %31, align 4
  %2519 = add nsw i32 %2518, 1
  store i32 %2519, i32* %31, align 4
  br label %2461

; <label>:2520:                                   ; preds = %2461
  %2521 = load i32*, i32** %22, align 4
  %2522 = getelementptr inbounds i32, i32* %2521, i32 0
  %2523 = load i32, i32* %2522, align 4
  %2524 = icmp eq i32 %2523, 2
  br i1 %2524, label %2525, label %2528

; <label>:2525:                                   ; preds = %2520
  %2526 = load double, double* @L3psycho_anal.ms_ratio_s_old, align 8
  %2527 = load double*, double** %15, align 4
  store double %2526, double* %2527, align 8
  br label %2531

; <label>:2528:                                   ; preds = %2520
  %2529 = load double, double* @L3psycho_anal.ms_ratio_l_old, align 8
  %2530 = load double*, double** %15, align 4
  store double %2529, double* %2530, align 8
  br label %2531

; <label>:2531:                                   ; preds = %2528, %2525
  %2532 = load double, double* %27, align 8
  store double %2532, double* @L3psycho_anal.ms_ratio_s_old, align 8
  %2533 = load double, double* %26, align 8
  store double %2533, double* @L3psycho_anal.ms_ratio_l_old, align 8
  %2534 = load double, double* %26, align 8
  %2535 = load double*, double** %16, align 4
  store double %2534, double* %2535, align 8
  %2536 = load i32, i32* %30, align 4
  %2537 = icmp eq i32 %2536, 4
  br i1 %2537, label %2538, label %2555

; <label>:2538:                                   ; preds = %2531
  %2539 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  %2540 = load float, float* %2539, align 4
  %2541 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  %2542 = load float, float* %2541, align 4
  %2543 = fadd float %2540, %2542
  store float %2543, float* %114, align 4
  %2544 = load double, double* @L3psycho_anal.ms_ener_ratio_old, align 8
  %2545 = load double*, double** %17, align 4
  store double %2544, double* %2545, align 8
  store double 0.000000e+00, double* @L3psycho_anal.ms_ener_ratio_old, align 8
  %2546 = load float, float* %114, align 4
  %2547 = fcmp ogt float %2546, 0.000000e+00
  br i1 %2547, label %2548, label %2554

; <label>:2548:                                   ; preds = %2538
  %2549 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  %2550 = load float, float* %2549, align 4
  %2551 = load float, float* %114, align 4
  %2552 = fdiv float %2550, %2551
  %2553 = fpext float %2552 to double
  store double %2553, double* @L3psycho_anal.ms_ener_ratio_old, align 8
  br label %2554

; <label>:2554:                                   ; preds = %2548, %2538
  br label %2557

; <label>:2555:                                   ; preds = %2531
  %2556 = load double*, double** %17, align 4
  store double 0.000000e+00, double* %2556, align 8
  br label %2557

; <label>:2557:                                   ; preds = %2555, %2554
  ret void
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #4

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #4

; Function Attrs: nounwind
define arm_aapcscc void @L3para_read(double, i32*, i32*, i32*, double*, double*, [64 x double]*, [64 x double]*, double*, double*, i32*, i32*, double*, double*, i32*, i32*, double*, double*) #0 {
  %19 = alloca double, align 8
  %20 = alloca i32*, align 4
  %21 = alloca i32*, align 4
  %22 = alloca i32*, align 4
  %23 = alloca double*, align 4
  %24 = alloca double*, align 4
  %25 = alloca [64 x double]*, align 4
  %26 = alloca [64 x double]*, align 4
  %27 = alloca double*, align 4
  %28 = alloca double*, align 4
  %29 = alloca i32*, align 4
  %30 = alloca i32*, align 4
  %31 = alloca double*, align 4
  %32 = alloca double*, align 4
  %33 = alloca i32*, align 4
  %34 = alloca i32*, align 4
  %35 = alloca double*, align 4
  %36 = alloca double*, align 4
  %37 = alloca double, align 8
  %38 = alloca [63 x double], align 8
  %39 = alloca [63 x double], align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca double*, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  store double %0, double* %19, align 8
  store i32* %1, i32** %20, align 4
  store i32* %2, i32** %21, align 4
  store i32* %3, i32** %22, align 4
  store double* %4, double** %23, align 4
  store double* %5, double** %24, align 4
  store [64 x double]* %6, [64 x double]** %25, align 4
  store [64 x double]* %7, [64 x double]** %26, align 4
  store double* %8, double** %27, align 4
  store double* %9, double** %28, align 4
  store i32* %10, i32** %29, align 4
  store i32* %11, i32** %30, align 4
  store double* %12, double** %31, align 4
  store double* %13, double** %32, align 4
  store i32* %14, i32** %33, align 4
  store i32* %15, i32** %34, align 4
  store double* %16, double** %35, align 4
  store double* %17, double** %36, align 4
  store i32 0, i32* %40, align 4
  store double* getelementptr inbounds ([0 x double], [0 x double]* @psy_data, i32 0, i32 0), double** %42, align 4
  store i32 1, i32* %50, align 4
  store i32 0, i32* %48, align 4
  br label %59

; <label>:59:                                     ; preds = %153, %18
  %60 = load i32, i32* %48, align 4
  %61 = icmp slt i32 %60, 6
  br i1 %61, label %62, label %156

; <label>:62:                                     ; preds = %59
  %63 = load double*, double** %42, align 4
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %42, align 4
  %65 = load double, double* %63, align 8
  store double %65, double* %37, align 8
  %66 = load double*, double** %42, align 4
  %67 = getelementptr inbounds double, double* %66, i32 1
  store double* %67, double** %42, align 4
  %68 = load double, double* %66, align 8
  %69 = fptosi double %68 to i32
  store i32 %69, i32* %41, align 4
  %70 = load i32, i32* %41, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %41, align 4
  %72 = load double, double* %19, align 8
  %73 = load double, double* %37, align 8
  %74 = load i32, i32* %50, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  %77 = fcmp oeq double %72, %76
  br i1 %77, label %78, label %147

; <label>:78:                                     ; preds = %62
  %79 = load i32, i32* %41, align 4
  store i32 %79, i32* %40, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %47, align 4
  br label %80

; <label>:80:                                     ; preds = %143, %78
  %81 = load i32, i32* %44, align 4
  %82 = load i32, i32* %41, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %146

; <label>:84:                                     ; preds = %80
  %85 = load double*, double** %42, align 4
  %86 = getelementptr inbounds double, double* %85, i32 1
  store double* %86, double** %42, align 4
  %87 = load double, double* %85, align 8
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %45, align 4
  %89 = load double*, double** %42, align 4
  %90 = getelementptr inbounds double, double* %89, i32 1
  store double* %90, double** %42, align 4
  %91 = load double, double* %89, align 8
  %92 = fptosi double %91 to i32
  %93 = load i32*, i32** %20, align 4
  %94 = load i32, i32* %44, align 4
  %95 = getelementptr inbounds i32, i32* %93, i32 %94
  store i32 %92, i32* %95, align 4
  %96 = load double*, double** %42, align 4
  %97 = getelementptr inbounds double, double* %96, i32 1
  store double* %97, double** %42, align 4
  %98 = load double, double* %96, align 8
  %99 = fsub double %98, 6.000000e+00
  %100 = fsub double -0.000000e+00, %99
  %101 = fmul double %100, 0x3FCD791C5F888823
  %102 = call arm_aapcscc double @exp(double %101) #7
  %103 = load double*, double** %23, align 4
  %104 = load i32, i32* %44, align 4
  %105 = getelementptr inbounds double, double* %103, i32 %104
  store double %102, double* %105, align 8
  %106 = load double*, double** %42, align 4
  %107 = getelementptr inbounds double, double* %106, i32 1
  store double* %107, double** %42, align 4
  %108 = load double, double* %106, align 8
  %109 = load double*, double** %24, align 4
  %110 = load i32, i32* %44, align 4
  %111 = getelementptr inbounds double, double* %109, i32 %110
  store double %108, double* %111, align 8
  %112 = load double*, double** %42, align 4
  %113 = getelementptr inbounds double, double* %112, i32 1
  store double* %113, double** %42, align 4
  %114 = load double*, double** %42, align 4
  %115 = getelementptr inbounds double, double* %114, i32 1
  store double* %115, double** %42, align 4
  %116 = load double, double* %114, align 8
  %117 = load i32, i32* %44, align 4
  %118 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %117
  store double %116, double* %118, align 8
  %119 = load i32, i32* %45, align 4
  %120 = load i32, i32* %44, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %84
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %124 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:125:                                    ; preds = %84
  store i32 0, i32* %46, align 4
  br label %126

; <label>:126:                                    ; preds = %139, %125
  %127 = load i32, i32* %46, align 4
  %128 = load i32*, i32** %20, align 4
  %129 = load i32, i32* %44, align 4
  %130 = getelementptr inbounds i32, i32* %128, i32 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %142

; <label>:133:                                    ; preds = %126
  %134 = load i32, i32* %44, align 4
  %135 = load i32*, i32** %22, align 4
  %136 = load i32, i32* %47, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %47, align 4
  %138 = getelementptr inbounds i32, i32* %135, i32 %136
  store i32 %134, i32* %138, align 4
  br label %139

; <label>:139:                                    ; preds = %133
  %140 = load i32, i32* %46, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %46, align 4
  br label %126

; <label>:142:                                    ; preds = %126
  br label %143

; <label>:143:                                    ; preds = %142
  %144 = load i32, i32* %44, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %44, align 4
  br label %80

; <label>:146:                                    ; preds = %80
  br label %152

; <label>:147:                                    ; preds = %62
  %148 = load i32, i32* %41, align 4
  %149 = mul nsw i32 %148, 6
  %150 = load double*, double** %42, align 4
  %151 = getelementptr inbounds double, double* %150, i32 %149
  store double* %151, double** %42, align 4
  br label %152

; <label>:152:                                    ; preds = %147, %146
  br label %153

; <label>:153:                                    ; preds = %152
  %154 = load i32, i32* %48, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %48, align 4
  br label %59

; <label>:156:                                    ; preds = %59
  %157 = load i32, i32* %40, align 4
  store i32 %157, i32* %49, align 4
  store i32 0, i32* %44, align 4
  br label %158

; <label>:158:                                    ; preds = %265, %156
  %159 = load i32, i32* %44, align 4
  %160 = load i32, i32* %49, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %268

; <label>:162:                                    ; preds = %158
  store i32 0, i32* %45, align 4
  br label %163

; <label>:163:                                    ; preds = %261, %162
  %164 = load i32, i32* %45, align 4
  %165 = load i32, i32* %49, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %264

; <label>:167:                                    ; preds = %163
  %168 = load i32, i32* %45, align 4
  %169 = load i32, i32* %44, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %180

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %44, align 4
  %173 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %172
  %174 = load double, double* %173, align 8
  %175 = load i32, i32* %45, align 4
  %176 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %175
  %177 = load double, double* %176, align 8
  %178 = fsub double %174, %177
  %179 = fmul double %178, 3.000000e+00
  store double %179, double* %51, align 8
  br label %189

; <label>:180:                                    ; preds = %167
  %181 = load i32, i32* %44, align 4
  %182 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %181
  %183 = load double, double* %182, align 8
  %184 = load i32, i32* %45, align 4
  %185 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %184
  %186 = load double, double* %185, align 8
  %187 = fsub double %183, %186
  %188 = fmul double %187, 1.500000e+00
  store double %188, double* %51, align 8
  br label %189

; <label>:189:                                    ; preds = %180, %171
  %190 = load i32, i32* %44, align 4
  %191 = load i32, i32* %45, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %202

; <label>:193:                                    ; preds = %189
  %194 = load i32, i32* %44, align 4
  %195 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %194
  %196 = load double, double* %195, align 8
  %197 = load i32, i32* %45, align 4
  %198 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %197
  %199 = load double, double* %198, align 8
  %200 = fsub double %196, %199
  %201 = fmul double %200, 3.000000e+00
  store double %201, double* %51, align 8
  br label %211

; <label>:202:                                    ; preds = %189
  %203 = load i32, i32* %44, align 4
  %204 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %203
  %205 = load double, double* %204, align 8
  %206 = load i32, i32* %45, align 4
  %207 = getelementptr inbounds [63 x double], [63 x double]* %38, i32 0, i32 %206
  %208 = load double, double* %207, align 8
  %209 = fsub double %205, %208
  %210 = fmul double %209, 1.500000e+00
  store double %210, double* %51, align 8
  br label %211

; <label>:211:                                    ; preds = %202, %193
  %212 = load double, double* %51, align 8
  %213 = fcmp oge double %212, 5.000000e-01
  br i1 %213, label %214, label %227

; <label>:214:                                    ; preds = %211
  %215 = load double, double* %51, align 8
  %216 = fcmp ole double %215, 2.500000e+00
  br i1 %216, label %217, label %227

; <label>:217:                                    ; preds = %214
  %218 = load double, double* %51, align 8
  %219 = fsub double %218, 5.000000e-01
  store double %219, double* %54, align 8
  %220 = load double, double* %54, align 8
  %221 = load double, double* %54, align 8
  %222 = fmul double %220, %221
  %223 = load double, double* %54, align 8
  %224 = fmul double 2.000000e+00, %223
  %225 = fsub double %222, %224
  %226 = fmul double 8.000000e+00, %225
  store double %226, double* %52, align 8
  br label %228

; <label>:227:                                    ; preds = %214, %211
  store double 0.000000e+00, double* %52, align 8
  br label %228

; <label>:228:                                    ; preds = %227, %217
  %229 = load double, double* %51, align 8
  %230 = fadd double %229, 4.740000e-01
  store double %230, double* %51, align 8
  %231 = load double, double* %51, align 8
  %232 = fmul double 7.500000e+00, %231
  %233 = fadd double 0x402F9F6E6106AB15, %232
  %234 = load double, double* %51, align 8
  %235 = load double, double* %51, align 8
  %236 = fmul double %234, %235
  %237 = fadd double 1.000000e+00, %236
  %238 = call arm_aapcscc double @sqrt(double %237) #7
  %239 = fmul double 1.750000e+01, %238
  %240 = fsub double %233, %239
  store double %240, double* %53, align 8
  %241 = load double, double* %53, align 8
  %242 = fcmp ole double %241, -6.000000e+01
  br i1 %242, label %243, label %249

; <label>:243:                                    ; preds = %228
  %244 = load [64 x double]*, [64 x double]** %25, align 4
  %245 = load i32, i32* %44, align 4
  %246 = getelementptr inbounds [64 x double], [64 x double]* %244, i32 %245
  %247 = load i32, i32* %45, align 4
  %248 = getelementptr inbounds [64 x double], [64 x double]* %246, i32 0, i32 %247
  store double 0.000000e+00, double* %248, align 8
  br label %260

; <label>:249:                                    ; preds = %228
  %250 = load double, double* %52, align 8
  %251 = load double, double* %53, align 8
  %252 = fadd double %250, %251
  %253 = fmul double %252, 0x3FCD791C5F888823
  %254 = call arm_aapcscc double @exp(double %253) #7
  %255 = load [64 x double]*, [64 x double]** %25, align 4
  %256 = load i32, i32* %44, align 4
  %257 = getelementptr inbounds [64 x double], [64 x double]* %255, i32 %256
  %258 = load i32, i32* %45, align 4
  %259 = getelementptr inbounds [64 x double], [64 x double]* %257, i32 0, i32 %258
  store double %254, double* %259, align 8
  br label %260

; <label>:260:                                    ; preds = %249, %243
  br label %261

; <label>:261:                                    ; preds = %260
  %262 = load i32, i32* %45, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %45, align 4
  br label %163

; <label>:264:                                    ; preds = %163
  br label %265

; <label>:265:                                    ; preds = %264
  %266 = load i32, i32* %44, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %44, align 4
  br label %158

; <label>:268:                                    ; preds = %158
  store i32 0, i32* %48, align 4
  br label %269

; <label>:269:                                    ; preds = %350, %268
  %270 = load i32, i32* %48, align 4
  %271 = icmp slt i32 %270, 6
  br i1 %271, label %272, label %353

; <label>:272:                                    ; preds = %269
  %273 = load double*, double** %42, align 4
  %274 = getelementptr inbounds double, double* %273, i32 1
  store double* %274, double** %42, align 4
  %275 = load double, double* %273, align 8
  store double %275, double* %37, align 8
  %276 = load double*, double** %42, align 4
  %277 = getelementptr inbounds double, double* %276, i32 1
  store double* %277, double** %42, align 4
  %278 = load double, double* %276, align 8
  %279 = fptosi double %278 to i32
  store i32 %279, i32* %41, align 4
  %280 = load i32, i32* %41, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %41, align 4
  %282 = load double, double* %19, align 8
  %283 = load double, double* %37, align 8
  %284 = load i32, i32* %50, align 4
  %285 = sitofp i32 %284 to double
  %286 = fdiv double %283, %285
  %287 = fcmp oeq double %282, %286
  br i1 %287, label %288, label %344

; <label>:288:                                    ; preds = %272
  %289 = load i32, i32* %41, align 4
  store i32 %289, i32* %40, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %47, align 4
  br label %290

; <label>:290:                                    ; preds = %337, %288
  %291 = load i32, i32* %44, align 4
  %292 = load i32, i32* %41, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %340

; <label>:294:                                    ; preds = %290
  %295 = load double*, double** %42, align 4
  %296 = getelementptr inbounds double, double* %295, i32 1
  store double* %296, double** %42, align 4
  %297 = load double, double* %295, align 8
  %298 = fptosi double %297 to i32
  store i32 %298, i32* %45, align 4
  %299 = load double*, double** %42, align 4
  %300 = getelementptr inbounds double, double* %299, i32 1
  store double* %300, double** %42, align 4
  %301 = load double, double* %299, align 8
  %302 = fptosi double %301 to i32
  %303 = load i32*, i32** %21, align 4
  %304 = load i32, i32* %44, align 4
  %305 = getelementptr inbounds i32, i32* %303, i32 %304
  store i32 %302, i32* %305, align 4
  %306 = load double*, double** %42, align 4
  %307 = getelementptr inbounds double, double* %306, i32 1
  store double* %307, double** %42, align 4
  %308 = load double, double* %306, align 8
  %309 = load double*, double** %27, align 4
  %310 = load i32, i32* %44, align 4
  %311 = getelementptr inbounds double, double* %309, i32 %310
  store double %308, double* %311, align 8
  %312 = load double*, double** %42, align 4
  %313 = getelementptr inbounds double, double* %312, i32 1
  store double* %313, double** %42, align 4
  %314 = load double*, double** %42, align 4
  %315 = getelementptr inbounds double, double* %314, i32 1
  store double* %315, double** %42, align 4
  %316 = load double, double* %314, align 8
  %317 = load double*, double** %28, align 4
  %318 = load i32, i32* %44, align 4
  %319 = getelementptr inbounds double, double* %317, i32 %318
  store double %316, double* %319, align 8
  %320 = load double*, double** %42, align 4
  %321 = getelementptr inbounds double, double* %320, i32 1
  store double* %321, double** %42, align 4
  %322 = load double, double* %320, align 8
  %323 = load i32, i32* %44, align 4
  %324 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %323
  store double %322, double* %324, align 8
  %325 = load i32, i32* %45, align 4
  %326 = load i32, i32* %44, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %331

; <label>:328:                                    ; preds = %294
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %330 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:331:                                    ; preds = %294
  %332 = load i32*, i32** %21, align 4
  %333 = load i32, i32* %44, align 4
  %334 = getelementptr inbounds i32, i32* %332, i32 %333
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %334, align 4
  br label %337

; <label>:337:                                    ; preds = %331
  %338 = load i32, i32* %44, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %44, align 4
  br label %290

; <label>:340:                                    ; preds = %290
  %341 = load i32*, i32** %21, align 4
  %342 = load i32, i32* %44, align 4
  %343 = getelementptr inbounds i32, i32* %341, i32 %342
  store i32 -1, i32* %343, align 4
  br label %349

; <label>:344:                                    ; preds = %272
  %345 = load i32, i32* %41, align 4
  %346 = mul nsw i32 %345, 6
  %347 = load double*, double** %42, align 4
  %348 = getelementptr inbounds double, double* %347, i32 %346
  store double* %348, double** %42, align 4
  br label %349

; <label>:349:                                    ; preds = %344, %340
  br label %350

; <label>:350:                                    ; preds = %349
  %351 = load i32, i32* %48, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %48, align 4
  br label %269

; <label>:353:                                    ; preds = %269
  %354 = load i32, i32* %40, align 4
  store i32 %354, i32* %49, align 4
  store i32 0, i32* %44, align 4
  br label %355

; <label>:355:                                    ; preds = %462, %353
  %356 = load i32, i32* %44, align 4
  %357 = load i32, i32* %49, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %465

; <label>:359:                                    ; preds = %355
  store i32 0, i32* %45, align 4
  br label %360

; <label>:360:                                    ; preds = %458, %359
  %361 = load i32, i32* %45, align 4
  %362 = load i32, i32* %49, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %461

; <label>:364:                                    ; preds = %360
  %365 = load i32, i32* %45, align 4
  %366 = load i32, i32* %44, align 4
  %367 = icmp sge i32 %365, %366
  br i1 %367, label %368, label %377

; <label>:368:                                    ; preds = %364
  %369 = load i32, i32* %44, align 4
  %370 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %369
  %371 = load double, double* %370, align 8
  %372 = load i32, i32* %45, align 4
  %373 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %372
  %374 = load double, double* %373, align 8
  %375 = fsub double %371, %374
  %376 = fmul double %375, 3.000000e+00
  store double %376, double* %55, align 8
  br label %386

; <label>:377:                                    ; preds = %364
  %378 = load i32, i32* %44, align 4
  %379 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %378
  %380 = load double, double* %379, align 8
  %381 = load i32, i32* %45, align 4
  %382 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %381
  %383 = load double, double* %382, align 8
  %384 = fsub double %380, %383
  %385 = fmul double %384, 1.500000e+00
  store double %385, double* %55, align 8
  br label %386

; <label>:386:                                    ; preds = %377, %368
  %387 = load i32, i32* %44, align 4
  %388 = load i32, i32* %45, align 4
  %389 = icmp sge i32 %387, %388
  br i1 %389, label %390, label %399

; <label>:390:                                    ; preds = %386
  %391 = load i32, i32* %44, align 4
  %392 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %391
  %393 = load double, double* %392, align 8
  %394 = load i32, i32* %45, align 4
  %395 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %394
  %396 = load double, double* %395, align 8
  %397 = fsub double %393, %396
  %398 = fmul double %397, 3.000000e+00
  store double %398, double* %55, align 8
  br label %408

; <label>:399:                                    ; preds = %386
  %400 = load i32, i32* %44, align 4
  %401 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %400
  %402 = load double, double* %401, align 8
  %403 = load i32, i32* %45, align 4
  %404 = getelementptr inbounds [63 x double], [63 x double]* %39, i32 0, i32 %403
  %405 = load double, double* %404, align 8
  %406 = fsub double %402, %405
  %407 = fmul double %406, 1.500000e+00
  store double %407, double* %55, align 8
  br label %408

; <label>:408:                                    ; preds = %399, %390
  %409 = load double, double* %55, align 8
  %410 = fcmp oge double %409, 5.000000e-01
  br i1 %410, label %411, label %424

; <label>:411:                                    ; preds = %408
  %412 = load double, double* %55, align 8
  %413 = fcmp ole double %412, 2.500000e+00
  br i1 %413, label %414, label %424

; <label>:414:                                    ; preds = %411
  %415 = load double, double* %55, align 8
  %416 = fsub double %415, 5.000000e-01
  store double %416, double* %58, align 8
  %417 = load double, double* %58, align 8
  %418 = load double, double* %58, align 8
  %419 = fmul double %417, %418
  %420 = load double, double* %58, align 8
  %421 = fmul double 2.000000e+00, %420
  %422 = fsub double %419, %421
  %423 = fmul double 8.000000e+00, %422
  store double %423, double* %56, align 8
  br label %425

; <label>:424:                                    ; preds = %411, %408
  store double 0.000000e+00, double* %56, align 8
  br label %425

; <label>:425:                                    ; preds = %424, %414
  %426 = load double, double* %55, align 8
  %427 = fadd double %426, 4.740000e-01
  store double %427, double* %55, align 8
  %428 = load double, double* %55, align 8
  %429 = fmul double 7.500000e+00, %428
  %430 = fadd double 0x402F9F6E6106AB15, %429
  %431 = load double, double* %55, align 8
  %432 = load double, double* %55, align 8
  %433 = fmul double %431, %432
  %434 = fadd double 1.000000e+00, %433
  %435 = call arm_aapcscc double @sqrt(double %434) #7
  %436 = fmul double 1.750000e+01, %435
  %437 = fsub double %430, %436
  store double %437, double* %57, align 8
  %438 = load double, double* %57, align 8
  %439 = fcmp ole double %438, -6.000000e+01
  br i1 %439, label %440, label %446

; <label>:440:                                    ; preds = %425
  %441 = load [64 x double]*, [64 x double]** %26, align 4
  %442 = load i32, i32* %44, align 4
  %443 = getelementptr inbounds [64 x double], [64 x double]* %441, i32 %442
  %444 = load i32, i32* %45, align 4
  %445 = getelementptr inbounds [64 x double], [64 x double]* %443, i32 0, i32 %444
  store double 0.000000e+00, double* %445, align 8
  br label %457

; <label>:446:                                    ; preds = %425
  %447 = load double, double* %56, align 8
  %448 = load double, double* %57, align 8
  %449 = fadd double %447, %448
  %450 = fmul double %449, 0x3FCD791C5F888823
  %451 = call arm_aapcscc double @exp(double %450) #7
  %452 = load [64 x double]*, [64 x double]** %26, align 4
  %453 = load i32, i32* %44, align 4
  %454 = getelementptr inbounds [64 x double], [64 x double]* %452, i32 %453
  %455 = load i32, i32* %45, align 4
  %456 = getelementptr inbounds [64 x double], [64 x double]* %454, i32 0, i32 %455
  store double %451, double* %456, align 8
  br label %457

; <label>:457:                                    ; preds = %446, %440
  br label %458

; <label>:458:                                    ; preds = %457
  %459 = load i32, i32* %45, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %45, align 4
  br label %360

; <label>:461:                                    ; preds = %360
  br label %462

; <label>:462:                                    ; preds = %461
  %463 = load i32, i32* %44, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %44, align 4
  br label %355

; <label>:465:                                    ; preds = %355
  store i32 0, i32* %48, align 4
  br label %466

; <label>:466:                                    ; preds = %572, %465
  %467 = load i32, i32* %48, align 4
  %468 = icmp slt i32 %467, 6
  br i1 %468, label %469, label %575

; <label>:469:                                    ; preds = %466
  %470 = load double*, double** %42, align 4
  %471 = getelementptr inbounds double, double* %470, i32 1
  store double* %471, double** %42, align 4
  %472 = load double, double* %470, align 8
  store double %472, double* %37, align 8
  %473 = load double*, double** %42, align 4
  %474 = getelementptr inbounds double, double* %473, i32 1
  store double* %474, double** %42, align 4
  %475 = load double, double* %473, align 8
  %476 = fptosi double %475 to i32
  store i32 %476, i32* %43, align 4
  %477 = load i32, i32* %43, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %43, align 4
  %479 = load double, double* %19, align 8
  %480 = load double, double* %37, align 8
  %481 = load i32, i32* %50, align 4
  %482 = sitofp i32 %481 to double
  %483 = fdiv double %480, %482
  %484 = fcmp oeq double %479, %483
  br i1 %484, label %485, label %566

; <label>:485:                                    ; preds = %469
  store i32 0, i32* %44, align 4
  br label %486

; <label>:486:                                    ; preds = %562, %485
  %487 = load i32, i32* %44, align 4
  %488 = load i32, i32* %43, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %565

; <label>:490:                                    ; preds = %486
  %491 = load double*, double** %42, align 4
  %492 = getelementptr inbounds double, double* %491, i32 1
  store double* %492, double** %42, align 4
  %493 = load double, double* %491, align 8
  %494 = fptosi double %493 to i32
  store i32 %494, i32* %45, align 4
  %495 = load double*, double** %42, align 4
  %496 = getelementptr inbounds double, double* %495, i32 1
  store double* %496, double** %42, align 4
  %497 = load double*, double** %42, align 4
  %498 = getelementptr inbounds double, double* %497, i32 1
  store double* %498, double** %42, align 4
  %499 = load double, double* %497, align 8
  %500 = fptosi double %499 to i32
  %501 = load i32*, i32** %29, align 4
  %502 = load i32, i32* %44, align 4
  %503 = getelementptr inbounds i32, i32* %501, i32 %502
  store i32 %500, i32* %503, align 4
  %504 = load double*, double** %42, align 4
  %505 = getelementptr inbounds double, double* %504, i32 1
  store double* %505, double** %42, align 4
  %506 = load double, double* %504, align 8
  %507 = fptosi double %506 to i32
  %508 = load i32*, i32** %30, align 4
  %509 = load i32, i32* %44, align 4
  %510 = getelementptr inbounds i32, i32* %508, i32 %509
  store i32 %507, i32* %510, align 4
  %511 = load double*, double** %42, align 4
  %512 = getelementptr inbounds double, double* %511, i32 1
  store double* %512, double** %42, align 4
  %513 = load double, double* %511, align 8
  %514 = load double*, double** %31, align 4
  %515 = load i32, i32* %44, align 4
  %516 = getelementptr inbounds double, double* %514, i32 %515
  store double %513, double* %516, align 8
  %517 = load double*, double** %42, align 4
  %518 = getelementptr inbounds double, double* %517, i32 1
  store double* %518, double** %42, align 4
  %519 = load double, double* %517, align 8
  %520 = load double*, double** %32, align 4
  %521 = load i32, i32* %44, align 4
  %522 = getelementptr inbounds double, double* %520, i32 %521
  store double %519, double* %522, align 8
  %523 = load i32, i32* %45, align 4
  %524 = load i32, i32* %44, align 4
  %525 = icmp ne i32 %523, %524
  br i1 %525, label %526, label %529

; <label>:526:                                    ; preds = %490
  %527 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %528 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %527, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:529:                                    ; preds = %490
  %530 = load i32, i32* %44, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %561

; <label>:532:                                    ; preds = %529
  %533 = load double*, double** %31, align 4
  %534 = load i32, i32* %44, align 4
  %535 = getelementptr inbounds double, double* %533, i32 %534
  %536 = load double, double* %535, align 8
  %537 = fsub double 1.000000e+00, %536
  %538 = load double*, double** %32, align 4
  %539 = load i32, i32* %44, align 4
  %540 = sub nsw i32 %539, 1
  %541 = getelementptr inbounds double, double* %538, i32 %540
  %542 = load double, double* %541, align 8
  %543 = fsub double %537, %542
  %544 = call arm_aapcscc double @fabs(double %543) #8
  %545 = fcmp ogt double %544, 1.000000e-02
  br i1 %545, label %546, label %560

; <label>:546:                                    ; preds = %532
  %547 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %548 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %547, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  %549 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %550 = load double*, double** %31, align 4
  %551 = load i32, i32* %44, align 4
  %552 = getelementptr inbounds double, double* %550, i32 %551
  %553 = load double, double* %552, align 8
  %554 = load double*, double** %32, align 4
  %555 = load i32, i32* %44, align 4
  %556 = sub nsw i32 %555, 1
  %557 = getelementptr inbounds double, double* %554, i32 %556
  %558 = load double, double* %557, align 8
  %559 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %549, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), double %553, double %558)
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:560:                                    ; preds = %532
  br label %561

; <label>:561:                                    ; preds = %560, %529
  br label %562

; <label>:562:                                    ; preds = %561
  %563 = load i32, i32* %44, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %44, align 4
  br label %486

; <label>:565:                                    ; preds = %486
  br label %571

; <label>:566:                                    ; preds = %469
  %567 = load i32, i32* %43, align 4
  %568 = mul nsw i32 %567, 6
  %569 = load double*, double** %42, align 4
  %570 = getelementptr inbounds double, double* %569, i32 %568
  store double* %570, double** %42, align 4
  br label %571

; <label>:571:                                    ; preds = %566, %565
  br label %572

; <label>:572:                                    ; preds = %571
  %573 = load i32, i32* %48, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %48, align 4
  br label %466

; <label>:575:                                    ; preds = %466
  store i32 0, i32* %48, align 4
  br label %576

; <label>:576:                                    ; preds = %682, %575
  %577 = load i32, i32* %48, align 4
  %578 = icmp slt i32 %577, 6
  br i1 %578, label %579, label %685

; <label>:579:                                    ; preds = %576
  %580 = load double*, double** %42, align 4
  %581 = getelementptr inbounds double, double* %580, i32 1
  store double* %581, double** %42, align 4
  %582 = load double, double* %580, align 8
  store double %582, double* %37, align 8
  %583 = load double*, double** %42, align 4
  %584 = getelementptr inbounds double, double* %583, i32 1
  store double* %584, double** %42, align 4
  %585 = load double, double* %583, align 8
  %586 = fptosi double %585 to i32
  store i32 %586, i32* %43, align 4
  %587 = load i32, i32* %43, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %43, align 4
  %589 = load double, double* %19, align 8
  %590 = load double, double* %37, align 8
  %591 = load i32, i32* %50, align 4
  %592 = sitofp i32 %591 to double
  %593 = fdiv double %590, %592
  %594 = fcmp oeq double %589, %593
  br i1 %594, label %595, label %676

; <label>:595:                                    ; preds = %579
  store i32 0, i32* %44, align 4
  br label %596

; <label>:596:                                    ; preds = %672, %595
  %597 = load i32, i32* %44, align 4
  %598 = load i32, i32* %43, align 4
  %599 = icmp slt i32 %597, %598
  br i1 %599, label %600, label %675

; <label>:600:                                    ; preds = %596
  %601 = load double*, double** %42, align 4
  %602 = getelementptr inbounds double, double* %601, i32 1
  store double* %602, double** %42, align 4
  %603 = load double, double* %601, align 8
  %604 = fptosi double %603 to i32
  store i32 %604, i32* %45, align 4
  %605 = load double*, double** %42, align 4
  %606 = getelementptr inbounds double, double* %605, i32 1
  store double* %606, double** %42, align 4
  %607 = load double*, double** %42, align 4
  %608 = getelementptr inbounds double, double* %607, i32 1
  store double* %608, double** %42, align 4
  %609 = load double, double* %607, align 8
  %610 = fptosi double %609 to i32
  %611 = load i32*, i32** %33, align 4
  %612 = load i32, i32* %44, align 4
  %613 = getelementptr inbounds i32, i32* %611, i32 %612
  store i32 %610, i32* %613, align 4
  %614 = load double*, double** %42, align 4
  %615 = getelementptr inbounds double, double* %614, i32 1
  store double* %615, double** %42, align 4
  %616 = load double, double* %614, align 8
  %617 = fptosi double %616 to i32
  %618 = load i32*, i32** %34, align 4
  %619 = load i32, i32* %44, align 4
  %620 = getelementptr inbounds i32, i32* %618, i32 %619
  store i32 %617, i32* %620, align 4
  %621 = load double*, double** %42, align 4
  %622 = getelementptr inbounds double, double* %621, i32 1
  store double* %622, double** %42, align 4
  %623 = load double, double* %621, align 8
  %624 = load double*, double** %35, align 4
  %625 = load i32, i32* %44, align 4
  %626 = getelementptr inbounds double, double* %624, i32 %625
  store double %623, double* %626, align 8
  %627 = load double*, double** %42, align 4
  %628 = getelementptr inbounds double, double* %627, i32 1
  store double* %628, double** %42, align 4
  %629 = load double, double* %627, align 8
  %630 = load double*, double** %36, align 4
  %631 = load i32, i32* %44, align 4
  %632 = getelementptr inbounds double, double* %630, i32 %631
  store double %629, double* %632, align 8
  %633 = load i32, i32* %45, align 4
  %634 = load i32, i32* %44, align 4
  %635 = icmp ne i32 %633, %634
  br i1 %635, label %636, label %639

; <label>:636:                                    ; preds = %600
  %637 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %638 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %637, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:639:                                    ; preds = %600
  %640 = load i32, i32* %44, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %671

; <label>:642:                                    ; preds = %639
  %643 = load double*, double** %35, align 4
  %644 = load i32, i32* %44, align 4
  %645 = getelementptr inbounds double, double* %643, i32 %644
  %646 = load double, double* %645, align 8
  %647 = fsub double 1.000000e+00, %646
  %648 = load double*, double** %36, align 4
  %649 = load i32, i32* %44, align 4
  %650 = sub nsw i32 %649, 1
  %651 = getelementptr inbounds double, double* %648, i32 %650
  %652 = load double, double* %651, align 8
  %653 = fsub double %647, %652
  %654 = call arm_aapcscc double @fabs(double %653) #8
  %655 = fcmp ogt double %654, 1.000000e-02
  br i1 %655, label %656, label %670

; <label>:656:                                    ; preds = %642
  %657 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %658 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %657, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  %659 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %660 = load double*, double** %35, align 4
  %661 = load i32, i32* %44, align 4
  %662 = getelementptr inbounds double, double* %660, i32 %661
  %663 = load double, double* %662, align 8
  %664 = load double*, double** %36, align 4
  %665 = load i32, i32* %44, align 4
  %666 = sub nsw i32 %665, 1
  %667 = getelementptr inbounds double, double* %664, i32 %666
  %668 = load double, double* %667, align 8
  %669 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %659, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), double %663, double %668)
  call arm_aapcscc void @exit(i32 -1) #6
  unreachable

; <label>:670:                                    ; preds = %642
  br label %671

; <label>:671:                                    ; preds = %670, %639
  br label %672

; <label>:672:                                    ; preds = %671
  %673 = load i32, i32* %44, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %44, align 4
  br label %596

; <label>:675:                                    ; preds = %596
  br label %681

; <label>:676:                                    ; preds = %579
  %677 = load i32, i32* %43, align 4
  %678 = mul nsw i32 %677, 6
  %679 = load double*, double** %42, align 4
  %680 = getelementptr inbounds double, double* %679, i32 %678
  store double* %680, double** %42, align 4
  br label %681

; <label>:681:                                    ; preds = %676, %675
  br label %682

; <label>:682:                                    ; preds = %681
  %683 = load i32, i32* %48, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %48, align 4
  br label %576

; <label>:685:                                    ; preds = %576
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @exp(double) #4

declare arm_aapcscc void @init_fft() #1

declare arm_aapcscc void @fft_long(float*, i32, i16**) #1

declare arm_aapcscc void @fft_short([256 x float]*, i32, i16**) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #5

; Function Attrs: nounwind
declare arm_aapcscc double @log(double) #4

; Function Attrs: nounwind
declare arm_aapcscc double @log10(double) #4

; Function Attrs: noreturn
declare arm_aapcscc void @abort() #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
