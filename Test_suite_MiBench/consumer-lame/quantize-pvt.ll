; ModuleID = 'quantize-pvt.c'
source_filename = "quantize-pvt.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct._IO_FILE = type opaque
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }

@masking_lower = global float 1.000000e+00, align 4
@nr_of_sfb_block = global [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 5, i32 5], [4 x i32] [i32 9, i32 9, i32 9, i32 9], [4 x i32] [i32 6, i32 9, i32 9, i32 9]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 7, i32 3], [4 x i32] [i32 9, i32 9, i32 12, i32 6], [4 x i32] [i32 6, i32 9, i32 12, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 11, i32 10, i32 0, i32 0], [4 x i32] [i32 18, i32 18, i32 0, i32 0], [4 x i32] [i32 15, i32 18, i32 0, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 12, i32 12, i32 12, i32 0], [4 x i32] [i32 6, i32 15, i32 12, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 6, i32 6, i32 3], [4 x i32] [i32 12, i32 9, i32 9, i32 6], [4 x i32] [i32 6, i32 12, i32 9, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 8, i32 8, i32 5, i32 0], [4 x i32] [i32 15, i32 12, i32 9, i32 0], [4 x i32] [i32 6, i32 18, i32 9, i32 0]]], align 4
@pretab = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2], align 4
@sfBandIndex = global [6 x %struct.scalefac_struct] [%struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 24, i32 32, i32 42, i32 56, i32 74, i32 100, i32 132, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 114, i32 136, i32 162, i32 194, i32 232, i32 278, i32 332, i32 394, i32 464, i32 540, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 136, i32 180, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 134, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 52, i32 62, i32 74, i32 90, i32 110, i32 134, i32 162, i32 196, i32 238, i32 288, i32 342, i32 418, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 40, i32 52, i32 66, i32 84, i32 106, i32 136, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 42, i32 50, i32 60, i32 72, i32 88, i32 106, i32 128, i32 156, i32 190, i32 230, i32 276, i32 330, i32 384, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 28, i32 38, i32 50, i32 64, i32 80, i32 100, i32 126, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 82, i32 102, i32 126, i32 156, i32 194, i32 240, i32 296, i32 364, i32 448, i32 550, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 42, i32 58, i32 78, i32 104, i32 138, i32 180, i32 192] }], align 4
@scalefac_band = common global %struct.scalefac_struct zeroinitializer, align 4
@ATH_l = internal global [21 x double] zeroinitializer, align 8
@ATH_s = internal global [21 x double] zeroinitializer, align 8
@pow43 = common global [8208 x double] zeroinitializer, align 8
@adj43 = internal global [8208 x double] zeroinitializer, align 8
@adj43asm = internal global [8208 x double] zeroinitializer, align 8
@ipow20 = common global [256 x double] zeroinitializer, align 8
@pow20 = common global [256 x double] zeroinitializer, align 8
@convert_mdct = common global i32 0, align 4
@reduce_sidechannel = common global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"max_bits >= 0\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"quantize-pvt.c\00", align 1
@__func__.inner_loop = private unnamed_addr constant [11 x i8] c"inner_loop\00", align 1
@scale_bitcount.slen1 = internal global [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 4
@scale_bitcount.slen2 = internal global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 4
@scale_bitcount.slen1_tab = internal global [16 x i32] [i32 0, i32 18, i32 36, i32 54, i32 54, i32 36, i32 54, i32 72, i32 54, i32 72, i32 90, i32 72, i32 90, i32 108, i32 108, i32 126], align 4
@scale_bitcount.slen2_tab = internal global [16 x i32] [i32 0, i32 10, i32 20, i32 30, i32 33, i32 21, i32 31, i32 41, i32 32, i32 42, i32 52, i32 43, i32 53, i32 63, i32 64, i32 74], align 4
@max_range_sfac_tab = internal global [6 x [4 x i32]] [[4 x i32] [i32 15, i32 15, i32 7, i32 7], [4 x i32] [i32 15, i32 15, i32 7, i32 0], [4 x i32] [i32 7, i32 3, i32 0, i32 0], [4 x i32] [i32 15, i32 31, i32 31, i32 0], [4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0]], align 4
@scale_bitcount_lsf.log2tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"intensity stereo not implemented yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cod_info->sfb_partition_table\00", align 1
@__func__.scale_bitcount_lsf = private unnamed_addr constant [19 x i8] c"scale_bitcount_lsf\00", align 1
@bin_search_StepSize2.CurrentStep = internal global i32 4, align 4
@ATH_mdct_long = common global [576 x double] zeroinitializer, align 8
@ATH_mdct_short = common global [192 x double] zeroinitializer, align 8

; Function Attrs: nounwind
define arm_aapcscc void @iteration_init(%struct.lame_global_flags*, %struct.III_side_info_t*, [2 x [576 x i32]]*) #0 {
  %4 = alloca %struct.lame_global_flags*, align 4
  %5 = alloca %struct.III_side_info_t*, align 4
  %6 = alloca [2 x [576 x i32]]*, align 4
  %7 = alloca %struct.gr_info*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %4, align 4
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %5, align 4
  store [2 x [576 x i32]]* %2, [2 x [576 x i32]]** %6, align 4
  %11 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %12 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %14 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 39
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %152

; <label>:17:                                     ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

; <label>:18:                                     ; preds = %37, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 23
  br i1 %20, label %21, label %40

; <label>:21:                                     ; preds = %18
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %23 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %22, i32 0, i32 51
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %26 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %25, i32 0, i32 43
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i32 %24, %28
  %30 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i32 %29
  %31 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [23 x i32], [23 x i32]* %31, i32 0, i32 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %35
  store i32 %34, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %21
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %18

; <label>:40:                                     ; preds = %18
  store i32 0, i32* %10, align 4
  br label %41

; <label>:41:                                     ; preds = %60, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 14
  br i1 %43, label %44, label %63

; <label>:44:                                     ; preds = %41
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %46 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 51
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 43
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 3
  %52 = add nsw i32 %47, %51
  %53 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i32 %52
  %54 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [14 x i32], [14 x i32]* %54, i32 0, i32 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %58
  store i32 %57, i32* %59, align 4
  br label %60

; <label>:60:                                     ; preds = %44
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %41

; <label>:63:                                     ; preds = %41
  %64 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %65 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  call arm_aapcscc void @compute_ath(%struct.lame_global_flags* %66, double* getelementptr inbounds ([21 x double], [21 x double]* @ATH_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @ATH_s, i32 0, i32 0))
  store i32 0, i32* %10, align 4
  br label %67

; <label>:67:                                     ; preds = %76, %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 8208
  br i1 %69, label %70, label %79

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = sitofp i32 %71 to double
  %73 = call arm_aapcscc double @pow(double %72, double 0x3FF5555555555555) #5
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %74
  store double %73, double* %75, align 8
  br label %76

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %67

; <label>:79:                                     ; preds = %67
  store i32 0, i32* %10, align 4
  br label %80

; <label>:80:                                     ; preds = %100, %79
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 8207
  br i1 %82, label %83, label %103

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = sitofp i32 %85 to double
  %87 = load i32, i32* %10, align 4
  %88 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %87
  %89 = load double, double* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %91
  %93 = load double, double* %92, align 8
  %94 = fadd double %89, %93
  %95 = fmul double 5.000000e-01, %94
  %96 = call arm_aapcscc double @pow(double %95, double 7.500000e-01) #5
  %97 = fsub double %86, %96
  %98 = load i32, i32* %10, align 4
  %99 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %98
  store double %97, double* %99, align 8
  br label %100

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %80

; <label>:103:                                    ; preds = %80
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %104
  store double 5.000000e-01, double* %105, align 8
  store double 0.000000e+00, double* getelementptr inbounds ([8208 x double], [8208 x double]* @adj43asm, i32 0, i32 0), align 8
  store i32 1, i32* %10, align 4
  br label %106

; <label>:106:                                    ; preds = %126, %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 8208
  br i1 %108, label %109, label %129

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = sitofp i32 %110 to double
  %112 = fsub double %111, 5.000000e-01
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %114
  %116 = load double, double* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %117
  %119 = load double, double* %118, align 8
  %120 = fadd double %116, %119
  %121 = fmul double 5.000000e-01, %120
  %122 = call arm_aapcscc double @pow(double %121, double 7.500000e-01) #5
  %123 = fsub double %112, %122
  %124 = load i32, i32* %10, align 4
  %125 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43asm, i32 0, i32 %124
  store double %123, double* %125, align 8
  br label %126

; <label>:126:                                    ; preds = %109
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %106

; <label>:129:                                    ; preds = %106
  store i32 0, i32* %10, align 4
  br label %130

; <label>:130:                                    ; preds = %148, %129
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 256
  br i1 %132, label %133, label %151

; <label>:133:                                    ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %134, 210
  %136 = sitofp i32 %135 to double
  %137 = fmul double %136, -1.875000e-01
  %138 = call arm_aapcscc double @pow(double 2.000000e+00, double %137) #5
  %139 = load i32, i32* %10, align 4
  %140 = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i32 %139
  store double %138, double* %140, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sub nsw i32 %141, 210
  %143 = sitofp i32 %142 to double
  %144 = fmul double %143, 2.500000e-01
  %145 = call arm_aapcscc double @pow(double 2.000000e+00, double %144) #5
  %146 = load i32, i32* %10, align 4
  %147 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i32 %146
  store double %145, double* %147, align 8
  br label %148

; <label>:148:                                    ; preds = %133
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %130

; <label>:151:                                    ; preds = %130
  br label %152

; <label>:152:                                    ; preds = %151, %3
  store i32 0, i32* @convert_mdct, align 4
  store i32 0, i32* @reduce_sidechannel, align 4
  %153 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %154 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %153, i32 0, i32 52
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %152
  store i32 1, i32* @convert_mdct, align 4
  store i32 1, i32* @reduce_sidechannel, align 4
  br label %158

; <label>:158:                                    ; preds = %157, %152
  store i32 0, i32* %9, align 4
  br label %159

; <label>:159:                                    ; preds = %200, %158
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %162 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %161, i32 0, i32 45
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %203

; <label>:165:                                    ; preds = %159
  store i32 0, i32* %8, align 4
  br label %166

; <label>:166:                                    ; preds = %196, %165
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %169 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %168, i32 0, i32 46
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %199

; <label>:172:                                    ; preds = %166
  %173 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %174 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %173, i32 0, i32 4
  %175 = load i32, i32* %9, align 4
  %176 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %174, i32 0, i32 %175
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 0
  %178 = load i32, i32* %8, align 4
  %179 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %177, i32 0, i32 %178
  %180 = bitcast %struct.gr_info_ss* %179 to %struct.gr_info*
  store %struct.gr_info* %180, %struct.gr_info** %7, align 4
  %181 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %182 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %190

; <label>:185:                                    ; preds = %172
  %186 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %187 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %186, i32 0, i32 16
  store i32 0, i32* %187, align 4
  %188 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %189 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %188, i32 0, i32 17
  store i32 0, i32* %189, align 4
  br label %195

; <label>:190:                                    ; preds = %172
  %191 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %192 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %191, i32 0, i32 16
  store i32 21, i32* %192, align 4
  %193 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %194 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %193, i32 0, i32 17
  store i32 12, i32* %194, align 4
  br label %195

; <label>:195:                                    ; preds = %190, %185
  br label %196

; <label>:196:                                    ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %166

; <label>:199:                                    ; preds = %166
  br label %200

; <label>:200:                                    ; preds = %199
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %159

; <label>:203:                                    ; preds = %159
  store i32 0, i32* %8, align 4
  br label %204

; <label>:204:                                    ; preds = %225, %203
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %207 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %206, i32 0, i32 46
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %228

; <label>:210:                                    ; preds = %204
  store i32 0, i32* %10, align 4
  br label %211

; <label>:211:                                    ; preds = %221, %210
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %224

; <label>:214:                                    ; preds = %211
  %215 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %216 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %215, i32 0, i32 3
  %217 = load i32, i32* %8, align 4
  %218 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %216, i32 0, i32 %217
  %219 = load i32, i32* %10, align 4
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %218, i32 0, i32 %219
  store i32 0, i32* %220, align 4
  br label %221

; <label>:221:                                    ; preds = %214
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %211

; <label>:224:                                    ; preds = %211
  br label %225

; <label>:225:                                    ; preds = %224
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %204

; <label>:228:                                    ; preds = %204
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @compute_ath(%struct.lame_global_flags*, double*, double*) #0 {
  %4 = alloca %struct.lame_global_flags*, align 4
  %5 = alloca double*, align 4
  %6 = alloca double*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %4, align 4
  store double* %1, double** %5, align 4
  store double* %2, double** %6, align 4
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %14 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+03
  store double %17, double* %12, align 8
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %67, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 21
  br i1 %20, label %21, label %70

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load double*, double** %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds double, double* %29, i32 %30
  store double 1.000000e+99, double* %31, align 8
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %8, align 4
  br label %33

; <label>:33:                                     ; preds = %63, %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %66

; <label>:37:                                     ; preds = %33
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %39 = load double, double* %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double %39, %41
  %43 = fdiv double %42, 1.152000e+03
  %44 = call arm_aapcscc double @ATHformula(%struct.lame_global_flags* %38, double %43)
  store double %44, double* %11, align 8
  %45 = load double*, double** %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds double, double* %45, i32 %46
  %48 = load double, double* %47, align 8
  %49 = load double, double* %11, align 8
  %50 = fcmp olt double %48, %49
  br i1 %50, label %51, label %56

; <label>:51:                                     ; preds = %37
  %52 = load double*, double** %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds double, double* %52, i32 %53
  %55 = load double, double* %54, align 8
  br label %58

; <label>:56:                                     ; preds = %37
  %57 = load double, double* %11, align 8
  br label %58

; <label>:58:                                     ; preds = %56, %51
  %59 = phi double [ %55, %51 ], [ %57, %56 ]
  %60 = load double*, double** %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds double, double* %60, i32 %61
  store double %59, double* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %33

; <label>:66:                                     ; preds = %33
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %18

; <label>:70:                                     ; preds = %18
  store i32 0, i32* %7, align 4
  br label %71

; <label>:71:                                     ; preds = %120, %70
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 12
  br i1 %73, label %74, label %123

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load double*, double** %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds double, double* %82, i32 %83
  store double 1.000000e+99, double* %84, align 8
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %8, align 4
  br label %86

; <label>:86:                                     ; preds = %116, %74
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %119

; <label>:90:                                     ; preds = %86
  %91 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %92 = load double, double* %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sitofp i32 %93 to double
  %95 = fmul double %92, %94
  %96 = fdiv double %95, 3.840000e+02
  %97 = call arm_aapcscc double @ATHformula(%struct.lame_global_flags* %91, double %96)
  store double %97, double* %11, align 8
  %98 = load double*, double** %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = getelementptr inbounds double, double* %98, i32 %99
  %101 = load double, double* %100, align 8
  %102 = load double, double* %11, align 8
  %103 = fcmp olt double %101, %102
  br i1 %103, label %104, label %109

; <label>:104:                                    ; preds = %90
  %105 = load double*, double** %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = getelementptr inbounds double, double* %105, i32 %106
  %108 = load double, double* %107, align 8
  br label %111

; <label>:109:                                    ; preds = %90
  %110 = load double, double* %11, align 8
  br label %111

; <label>:111:                                    ; preds = %109, %104
  %112 = phi double [ %108, %104 ], [ %110, %109 ]
  %113 = load double*, double** %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds double, double* %113, i32 %114
  store double %112, double* %115, align 8
  br label %116

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %86

; <label>:119:                                    ; preds = %86
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %71

; <label>:123:                                    ; preds = %71
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

; Function Attrs: nounwind
define arm_aapcscc double @ATHformula(%struct.lame_global_flags*, double) #0 {
  %3 = alloca %struct.lame_global_flags*, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ogt double 2.000000e-02, %6
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  br label %11

; <label>:9:                                      ; preds = %2
  %10 = load double, double* %4, align 8
  br label %11

; <label>:11:                                     ; preds = %9, %8
  %12 = phi double [ 2.000000e-02, %8 ], [ %10, %9 ]
  store double %12, double* %4, align 8
  %13 = load double, double* %4, align 8
  %14 = call arm_aapcscc double @pow(double %13, double -8.000000e-01) #5
  %15 = fmul double 3.640000e+00, %14
  %16 = load double, double* %4, align 8
  %17 = fsub double %16, 3.300000e+00
  %18 = call arm_aapcscc double @pow(double %17, double 2.000000e+00) #5
  %19 = fmul double -6.000000e-01, %18
  %20 = call arm_aapcscc double @exp(double %19) #5
  %21 = fmul double 6.500000e+00, %20
  %22 = fsub double %15, %21
  %23 = load double, double* %4, align 8
  %24 = call arm_aapcscc double @pow(double %23, double 4.000000e+00) #5
  %25 = fmul double 1.000000e-03, %24
  %26 = fadd double %22, %25
  store double %26, double* %5, align 8
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %28 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 34
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %11
  %32 = load double, double* %5, align 8
  %33 = fsub double %32, 2.000000e+02
  store double %33, double* %5, align 8
  br label %37

; <label>:34:                                     ; preds = %11
  %35 = load double, double* %5, align 8
  %36 = fsub double %35, 1.140000e+02
  store double %36, double* %5, align 8
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load double, double* %5, align 8
  %39 = fdiv double %38, 1.000000e+01
  %40 = call arm_aapcscc double @pow(double 1.000000e+01, double %39) #5
  store double %40, double* %5, align 8
  %41 = load double, double* %5, align 8
  ret double %41
}

; Function Attrs: nounwind
declare arm_aapcscc double @exp(double) #1

; Function Attrs: nounwind
define arm_aapcscc void @ms_convert([576 x double]*, [576 x double]*) #0 {
  %3 = alloca [576 x double]*, align 4
  %4 = alloca [576 x double]*, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store [576 x double]* %0, [576 x double]** %3, align 4
  store [576 x double]* %1, [576 x double]** %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %38, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 576
  br i1 %10, label %11, label %41

; <label>:11:                                     ; preds = %8
  %12 = load [576 x double]*, [576 x double]** %4, align 4
  %13 = getelementptr inbounds [576 x double], [576 x double]* %12, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [576 x double], [576 x double]* %13, i32 0, i32 %14
  %16 = load double, double* %15, align 8
  store double %16, double* %6, align 8
  %17 = load [576 x double]*, [576 x double]** %4, align 4
  %18 = getelementptr inbounds [576 x double], [576 x double]* %17, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [576 x double], [576 x double]* %18, i32 0, i32 %19
  %21 = load double, double* %20, align 8
  store double %21, double* %7, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %7, align 8
  %24 = fadd double %22, %23
  %25 = fmul double %24, 0x3FE6A09E667F3BCD
  %26 = load [576 x double]*, [576 x double]** %3, align 4
  %27 = getelementptr inbounds [576 x double], [576 x double]* %26, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [576 x double], [576 x double]* %27, i32 0, i32 %28
  store double %25, double* %29, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* %7, align 8
  %32 = fsub double %30, %31
  %33 = fmul double %32, 0x3FE6A09E667F3BCD
  %34 = load [576 x double]*, [576 x double]** %3, align 4
  %35 = getelementptr inbounds [576 x double], [576 x double]* %34, i32 1
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [576 x double], [576 x double]* %35, i32 0, i32 %36
  store double %33, double* %37, align 8
  br label %38

; <label>:38:                                     ; preds = %11
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %8

; <label>:41:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @on_pe(%struct.lame_global_flags*, [2 x double]*, %struct.III_side_info_t*, i32*, i32, i32) #0 {
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca [2 x double]*, align 4
  %9 = alloca %struct.III_side_info_t*, align 4
  %10 = alloca i32*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gr_info*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store [2 x double]* %1, [2 x double]** %8, align 4
  store %struct.III_side_info_t* %2, %struct.III_side_info_t** %9, align 4
  store i32* %3, i32** %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  call arm_aapcscc void @ResvMaxBits(i32 %19, i32* %15, i32* %14, i32 %20)
  store i32 0, i32* %18, align 4
  br label %21

; <label>:21:                                     ; preds = %130, %6
  %22 = load i32, i32* %18, align 4
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 46
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %133

; <label>:27:                                     ; preds = %21
  %28 = load %struct.III_side_info_t*, %struct.III_side_info_t** %9, align 4
  %29 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %28, i32 0, i32 4
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %29, i32 0, i32 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i32, i32* %18, align 4
  %34 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %32, i32 0, i32 %33
  %35 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %34, i32 0, i32 0
  store %struct.gr_info* %35, %struct.gr_info** %13, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 46
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = load i32*, i32** %10, align 4
  %42 = load i32, i32* %18, align 4
  %43 = getelementptr inbounds i32, i32* %41, i32 %42
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %16, align 4
  %44 = load [2 x double]*, [2 x double]** %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds [2 x double], [2 x double]* %44, i32 %45
  %47 = load i32, i32* %18, align 4
  %48 = getelementptr inbounds [2 x double], [2 x double]* %46, i32 0, i32 %47
  %49 = load double, double* %48, align 8
  %50 = fsub double %49, 7.500000e+02
  %51 = fdiv double %50, 1.550000e+00
  %52 = fptosi double %51 to i32
  %53 = load i32, i32* %18, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %53
  store i32 %52, i32* %54, align 4
  %55 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %56 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %68

; <label>:59:                                     ; preds = %27
  %60 = load i32, i32* %18, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 500
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* %18, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %65
  store i32 500, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %64, %59
  br label %68

; <label>:68:                                     ; preds = %67, %27
  %69 = load i32, i32* %18, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %18, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %74
  store i32 0, i32* %75, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %68
  %77 = load i32, i32* %18, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %95

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %18, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load i32, i32* %16, align 4
  %92 = sdiv i32 %90, %91
  %93 = load i32, i32* %18, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %93
  store i32 %92, i32* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %85, %76
  %96 = load i32*, i32** %10, align 4
  %97 = load i32, i32* %18, align 4
  %98 = getelementptr inbounds i32, i32* %96, i32 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %18, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = icmp sgt i32 %103, 4095
  br i1 %104, label %105, label %113

; <label>:105:                                    ; preds = %95
  %106 = load i32*, i32** %10, align 4
  %107 = load i32, i32* %18, align 4
  %108 = getelementptr inbounds i32, i32* %106, i32 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 4095, %109
  %111 = load i32, i32* %18, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %111
  store i32 %110, i32* %112, align 4
  br label %113

; <label>:113:                                    ; preds = %105, %95
  %114 = load i32*, i32** %10, align 4
  %115 = load i32, i32* %18, align 4
  %116 = getelementptr inbounds i32, i32* %114, i32 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %18, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = load i32*, i32** %10, align 4
  %123 = load i32, i32* %18, align 4
  %124 = getelementptr inbounds i32, i32* %122, i32 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %18, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i32 0, i32 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %130

; <label>:130:                                    ; preds = %113
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %21

; <label>:133:                                    ; preds = %21
  ret void
}

declare arm_aapcscc void @ResvMaxBits(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
define arm_aapcscc void @reduce_side(i32*, double, i32) #0 {
  %4 = alloca i32*, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 2, i32* %8, align 4
  %11 = load double, double* %5, align 8
  %12 = fsub double 5.000000e-01, %11
  %13 = fmul double 3.300000e-01, %12
  %14 = fdiv double %13, 5.000000e-01
  %15 = fptrunc double %14 to float
  store float %15, float* %9, align 4
  %16 = load float, float* %9, align 4
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %3
  store float 0.000000e+00, float* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %3
  %20 = load i32*, i32** %4, align 4
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 125
  br i1 %23, label %24, label %74

; <label>:24:                                     ; preds = %19
  %25 = load i32*, i32** %4, align 4
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to float
  %29 = load i32*, i32** %4, align 4
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sitofp i32 %31 to float
  %33 = load float, float* %9, align 4
  %34 = fmul float %32, %33
  %35 = fsub float %28, %34
  %36 = fcmp ogt float %35, 1.250000e+02
  br i1 %36, label %37, label %62

; <label>:37:                                     ; preds = %24
  %38 = load i32*, i32** %4, align 4
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %9, align 4
  %43 = fmul float %41, %42
  %44 = load i32*, i32** %4, align 4
  %45 = getelementptr inbounds i32, i32* %44, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to float
  %48 = fadd float %47, %43
  %49 = fptosi float %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i32*, i32** %4, align 4
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to float
  %54 = load float, float* %9, align 4
  %55 = fmul float %53, %54
  %56 = load i32*, i32** %4, align 4
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to float
  %60 = fsub float %59, %55
  %61 = fptosi float %60 to i32
  store i32 %61, i32* %57, align 4
  br label %73

; <label>:62:                                     ; preds = %24
  %63 = load i32*, i32** %4, align 4
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 125
  %67 = load i32*, i32** %4, align 4
  %68 = getelementptr inbounds i32, i32* %67, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %4, align 4
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32 125, i32* %72, align 4
  br label %73

; <label>:73:                                     ; preds = %62, %37
  br label %74

; <label>:74:                                     ; preds = %73, %19
  store i32 0, i32* %7, align 4
  br label %75

; <label>:75:                                     ; preds = %103, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %106

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = sdiv i32 %80, 2
  %82 = add nsw i32 %81, 1200
  %83 = icmp slt i32 4095, %82
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %79
  br label %89

; <label>:85:                                     ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %86, 2
  %88 = add nsw i32 %87, 1200
  br label %89

; <label>:89:                                     ; preds = %85, %84
  %90 = phi i32 [ 4095, %84 ], [ %88, %85 ]
  store i32 %90, i32* %10, align 4
  %91 = load i32*, i32** %4, align 4
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds i32, i32* %91, i32 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

; <label>:97:                                     ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %4, align 4
  %100 = load i32, i32* %7, align 4
  %101 = getelementptr inbounds i32, i32* %99, i32 %100
  store i32 %98, i32* %101, align 4
  br label %102

; <label>:102:                                    ; preds = %97, %89
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %75

; <label>:106:                                    ; preds = %75
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @inner_loop(%struct.lame_global_flags*, double*, i32*, i32, %struct.gr_info*) #0 {
  %6 = alloca %struct.lame_global_flags*, align 4
  %7 = alloca double*, align 4
  %8 = alloca i32*, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gr_info*, align 4
  %11 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %6, align 4
  store double* %1, double** %7, align 4
  store i32* %2, i32** %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gr_info* %4, %struct.gr_info** %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %5
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.inner_loop, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %5
  %16 = phi i1 [ true, %5 ], [ false, %14 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.gr_info*, %struct.gr_info** %10, align 4
  %19 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %19, align 4
  br label %22

; <label>:22:                                     ; preds = %32, %15
  %23 = load %struct.gr_info*, %struct.gr_info** %10, align 4
  %24 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %28 = load i32*, i32** %8, align 4
  %29 = load double*, double** %7, align 4
  %30 = load %struct.gr_info*, %struct.gr_info** %10, align 4
  %31 = call arm_aapcscc i32 @count_bits(%struct.lame_global_flags* %27, i32* %28, double* %29, %struct.gr_info* %30)
  store i32 %31, i32* %11, align 4
  br label %32

; <label>:32:                                     ; preds = %22
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %22, label %36

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #2

declare arm_aapcscc i32 @count_bits(%struct.lame_global_flags*, i32*, double*, %struct.gr_info*) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @scale_bitcount(%struct.III_scalefac_t*, %struct.gr_info*) #0 {
  %3 = alloca %struct.III_scalefac_t*, align 4
  %4 = alloca %struct.gr_info*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 4
  store %struct.III_scalefac_t* %0, %struct.III_scalefac_t** %3, align 4
  store %struct.gr_info* %1, %struct.gr_info** %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %12 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %13 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %77

; <label>:16:                                     ; preds = %2
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @scale_bitcount.slen1_tab, i32 0, i32 0), i32** %11, align 4
  store i32 0, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %73, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %76

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %43, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %46

; <label>:24:                                     ; preds = %21
  %25 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %26 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %26, i32 0, i32 %27
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i32 0, i32 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %24
  %35 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %36 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %35, i32 0, i32 1
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %36, i32 0, i32 %37
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %38, i32 0, i32 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

; <label>:42:                                     ; preds = %34, %24
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %21

; <label>:46:                                     ; preds = %21
  store i32 6, i32* %7, align 4
  br label %47

; <label>:47:                                     ; preds = %69, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 12
  br i1 %49, label %50, label %72

; <label>:50:                                     ; preds = %47
  %51 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %52 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %51, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %52, i32 0, i32 %53
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %54, i32 0, i32 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %68

; <label>:60:                                     ; preds = %50
  %61 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %62 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %61, i32 0, i32 1
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %62, i32 0, i32 %63
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %64, i32 0, i32 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

; <label>:68:                                     ; preds = %60, %50
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %47

; <label>:72:                                     ; preds = %47
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %17

; <label>:76:                                     ; preds = %17
  br label %170

; <label>:77:                                     ; preds = %2
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @scale_bitcount.slen2_tab, i32 0, i32 0), i32** %11, align 4
  store i32 0, i32* %7, align 4
  br label %78

; <label>:78:                                     ; preds = %96, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 11
  br i1 %80, label %81, label %99

; <label>:81:                                     ; preds = %78
  %82 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %83 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %82, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = getelementptr inbounds [22 x i32], [22 x i32]* %83, i32 0, i32 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %95

; <label>:89:                                     ; preds = %81
  %90 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %91 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %90, i32 0, i32 0
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds [22 x i32], [22 x i32]* %91, i32 0, i32 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  br label %95

; <label>:95:                                     ; preds = %89, %81
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %78

; <label>:99:                                     ; preds = %78
  %100 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %101 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %147, label %104

; <label>:104:                                    ; preds = %99
  store i32 11, i32* %7, align 4
  br label %105

; <label>:105:                                    ; preds = %120, %104
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 21
  br i1 %107, label %108, label %123

; <label>:108:                                    ; preds = %105
  %109 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %110 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %109, i32 0, i32 0
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds [22 x i32], [22 x i32]* %110, i32 0, i32 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i32 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %108
  br label %123

; <label>:119:                                    ; preds = %108
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %105

; <label>:123:                                    ; preds = %118, %105
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 21
  br i1 %125, label %126, label %146

; <label>:126:                                    ; preds = %123
  %127 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %128 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %127, i32 0, i32 12
  store i32 1, i32* %128, align 4
  store i32 11, i32* %7, align 4
  br label %129

; <label>:129:                                    ; preds = %142, %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 21
  br i1 %131, label %132, label %145

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i32 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %137 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %136, i32 0, i32 0
  %138 = load i32, i32* %7, align 4
  %139 = getelementptr inbounds [22 x i32], [22 x i32]* %137, i32 0, i32 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %135
  store i32 %141, i32* %139, align 4
  br label %142

; <label>:142:                                    ; preds = %132
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %129

; <label>:145:                                    ; preds = %129
  br label %146

; <label>:146:                                    ; preds = %145, %123
  br label %147

; <label>:147:                                    ; preds = %146, %99
  store i32 11, i32* %7, align 4
  br label %148

; <label>:148:                                    ; preds = %166, %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 21
  br i1 %150, label %151, label %169

; <label>:151:                                    ; preds = %148
  %152 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %153 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %152, i32 0, i32 0
  %154 = load i32, i32* %7, align 4
  %155 = getelementptr inbounds [22 x i32], [22 x i32]* %153, i32 0, i32 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %165

; <label>:159:                                    ; preds = %151
  %160 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %161 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %160, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  %163 = getelementptr inbounds [22 x i32], [22 x i32]* %161, i32 0, i32 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %9, align 4
  br label %165

; <label>:165:                                    ; preds = %159, %151
  br label %166

; <label>:166:                                    ; preds = %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %148

; <label>:169:                                    ; preds = %148
  br label %170

; <label>:170:                                    ; preds = %169, %76
  %171 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %172 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %171, i32 0, i32 15
  store i32 100000, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %173

; <label>:173:                                    ; preds = %208, %170
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 16
  br i1 %175, label %176, label %211

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %6, align 4
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount.slen1, i32 0, i32 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %207

; <label>:182:                                    ; preds = %176
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %6, align 4
  %185 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount.slen2, i32 0, i32 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %207

; <label>:188:                                    ; preds = %182
  %189 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %190 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %11, align 4
  %193 = load i32, i32* %6, align 4
  %194 = getelementptr inbounds i32, i32* %192, i32 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %191, %195
  br i1 %196, label %197, label %207

; <label>:197:                                    ; preds = %188
  %198 = load i32*, i32** %11, align 4
  %199 = load i32, i32* %6, align 4
  %200 = getelementptr inbounds i32, i32* %198, i32 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %203 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %202, i32 0, i32 15
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %206 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 4
  store i32 0, i32* %10, align 4
  br label %207

; <label>:207:                                    ; preds = %197, %188, %182, %176
  br label %208

; <label>:208:                                    ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %173

; <label>:211:                                    ; preds = %173
  %212 = load i32, i32* %10, align 4
  ret i32 %212
}

; Function Attrs: nounwind
define arm_aapcscc i32 @scale_bitcount_lsf(%struct.III_scalefac_t*, %struct.gr_info*) #0 {
  %3 = alloca %struct.III_scalefac_t*, align 4
  %4 = alloca %struct.gr_info*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 4
  %14 = alloca i32*, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.III_scalefac_t* %0, %struct.III_scalefac_t** %3, align 4
  store %struct.gr_info* %1, %struct.gr_info** %4, align 4
  %19 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %20 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %2
  store i32 2, i32* %5, align 4
  br label %25

; <label>:24:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %23
  store i32 0, i32* %11, align 4
  br label %26

; <label>:26:                                     ; preds = %32, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %30
  store i32 0, i32* %31, align 4
  br label %32

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %26

; <label>:35:                                     ; preds = %26
  %36 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %37 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %100

; <label>:40:                                     ; preds = %35
  store i32 1, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i32 %41
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %42, i32 0, i32 %43
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32* %45, i32** %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %46

; <label>:46:                                     ; preds = %96, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %99

; <label>:49:                                     ; preds = %46
  %50 = load i32*, i32** %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds i32, i32* %50, i32 %51
  %53 = load i32, i32* %52, align 4
  %54 = udiv i32 %53, 3
  store i32 %54, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %55

; <label>:55:                                     ; preds = %90, %49
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %95

; <label>:59:                                     ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

; <label>:60:                                     ; preds = %86, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %89

; <label>:63:                                     ; preds = %60
  %64 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %65 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %64, i32 0, i32 1
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %65, i32 0, i32 %66
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %67, i32 0, i32 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %85

; <label>:75:                                     ; preds = %63
  %76 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %77 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %76, i32 0, i32 1
  %78 = load i32, i32* %12, align 4
  %79 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %77, i32 0, i32 %78
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %79, i32 0, i32 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %83
  store i32 %82, i32* %84, align 4
  br label %85

; <label>:85:                                     ; preds = %75, %63
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %60

; <label>:89:                                     ; preds = %60
  br label %90

; <label>:90:                                     ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %55

; <label>:95:                                     ; preds = %55
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %46

; <label>:99:                                     ; preds = %46
  br label %147

; <label>:100:                                    ; preds = %35
  store i32 0, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i32 %101
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %102, i32 0, i32 %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i32 0, i32 0
  store i32* %105, i32** %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %106

; <label>:106:                                    ; preds = %143, %100
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %146

; <label>:109:                                    ; preds = %106
  %110 = load i32*, i32** %14, align 4
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds i32, i32* %110, i32 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %114

; <label>:114:                                    ; preds = %137, %109
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %142

; <label>:118:                                    ; preds = %114
  %119 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %120 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %119, i32 0, i32 0
  %121 = load i32, i32* %12, align 4
  %122 = getelementptr inbounds [22 x i32], [22 x i32]* %120, i32 0, i32 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %136

; <label>:128:                                    ; preds = %118
  %129 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %3, align 4
  %130 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %129, i32 0, i32 0
  %131 = load i32, i32* %12, align 4
  %132 = getelementptr inbounds [22 x i32], [22 x i32]* %130, i32 0, i32 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %134
  store i32 %133, i32* %135, align 4
  br label %136

; <label>:136:                                    ; preds = %128, %118
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %114

; <label>:142:                                    ; preds = %114
  br label %143

; <label>:143:                                    ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %106

; <label>:146:                                    ; preds = %106
  br label %147

; <label>:147:                                    ; preds = %146, %99
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %148

; <label>:148:                                    ; preds = %165, %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %168

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* @max_range_sfac_tab, i32 0, i32 %155
  %157 = load i32, i32* %7, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i32 0, i32 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %154, %159
  br i1 %160, label %161, label %164

; <label>:161:                                    ; preds = %151
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %164

; <label>:164:                                    ; preds = %161, %151
  br label %165

; <label>:165:                                    ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %148

; <label>:168:                                    ; preds = %148
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %249, label %171

; <label>:171:                                    ; preds = %168
  %172 = load i32, i32* %5, align 4
  %173 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i32 %172
  %174 = load i32, i32* %6, align 4
  %175 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %173, i32 0, i32 %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i32 0, i32 0
  %177 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %178 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %177, i32 0, i32 19
  store i32* %176, i32** %178, align 4
  store i32 0, i32* %7, align 4
  br label %179

; <label>:179:                                    ; preds = %192, %171
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %195

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %183
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount_lsf.log2tab, i32 0, i32 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %189 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %188, i32 0, i32 20
  %190 = load i32, i32* %7, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %189, i32 0, i32 %190
  store i32 %187, i32* %191, align 4
  br label %192

; <label>:192:                                    ; preds = %182
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %179

; <label>:195:                                    ; preds = %179
  %196 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %197 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %196, i32 0, i32 20
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %15, align 4
  %200 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %201 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %200, i32 0, i32 20
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %16, align 4
  %204 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %205 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %204, i32 0, i32 20
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %17, align 4
  %208 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %209 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %208, i32 0, i32 20
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %5, align 4
  switch i32 %212, label %245 [
    i32 0, label %213
    i32 1, label %226
    i32 2, label %237
  ]

; <label>:213:                                    ; preds = %195
  %214 = load i32, i32* %15, align 4
  %215 = mul i32 %214, 5
  %216 = load i32, i32* %16, align 4
  %217 = add i32 %215, %216
  %218 = shl i32 %217, 4
  %219 = load i32, i32* %17, align 4
  %220 = shl i32 %219, 2
  %221 = add i32 %218, %220
  %222 = load i32, i32* %18, align 4
  %223 = add i32 %221, %222
  %224 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %225 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 4
  br label %248

; <label>:226:                                    ; preds = %195
  %227 = load i32, i32* %15, align 4
  %228 = mul i32 %227, 5
  %229 = load i32, i32* %16, align 4
  %230 = add i32 %228, %229
  %231 = shl i32 %230, 2
  %232 = add i32 400, %231
  %233 = load i32, i32* %17, align 4
  %234 = add i32 %232, %233
  %235 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %236 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  br label %248

; <label>:237:                                    ; preds = %195
  %238 = load i32, i32* %15, align 4
  %239 = mul i32 %238, 3
  %240 = add i32 500, %239
  %241 = load i32, i32* %16, align 4
  %242 = add i32 %240, %241
  %243 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %244 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 4
  br label %248

; <label>:245:                                    ; preds = %195
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %247 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #6
  unreachable

; <label>:248:                                    ; preds = %237, %226, %213
  br label %249

; <label>:249:                                    ; preds = %248, %168
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %287, label %252

; <label>:252:                                    ; preds = %249
  %253 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %254 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %253, i32 0, i32 19
  %255 = load i32*, i32** %254, align 4
  %256 = icmp ne i32* %255, null
  br i1 %256, label %258, label %257

; <label>:257:                                    ; preds = %252
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 665, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.scale_bitcount_lsf, i32 0, i32 0))
  br label %258

; <label>:258:                                    ; preds = %257, %252
  %259 = phi i1 [ true, %252 ], [ false, %257 ]
  %260 = zext i1 %259 to i32
  %261 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %262 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %261, i32 0, i32 15
  store i32 0, i32* %262, align 4
  store i32 0, i32* %7, align 4
  br label %263

; <label>:263:                                    ; preds = %283, %258
  %264 = load i32, i32* %7, align 4
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %266, label %286

; <label>:266:                                    ; preds = %263
  %267 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %268 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %267, i32 0, i32 20
  %269 = load i32, i32* %7, align 4
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %268, i32 0, i32 %269
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %273 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %272, i32 0, i32 19
  %274 = load i32*, i32** %273, align 4
  %275 = load i32, i32* %7, align 4
  %276 = getelementptr inbounds i32, i32* %274, i32 %275
  %277 = load i32, i32* %276, align 4
  %278 = mul i32 %271, %277
  %279 = load %struct.gr_info*, %struct.gr_info** %4, align 4
  %280 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %279, i32 0, i32 15
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, %278
  store i32 %282, i32* %280, align 4
  br label %283

; <label>:283:                                    ; preds = %266
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %263

; <label>:286:                                    ; preds = %263
  br label %287

; <label>:287:                                    ; preds = %286, %249
  %288 = load i32, i32* %10, align 4
  ret i32 %288
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

; Function Attrs: nounwind
define arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags*, double*, %struct.III_psy_ratio*, %struct.gr_info*, %struct.III_psy_xmin*) #0 {
  %6 = alloca %struct.lame_global_flags*, align 4
  %7 = alloca double*, align 4
  %8 = alloca %struct.III_psy_ratio*, align 4
  %9 = alloca %struct.gr_info*, align 4
  %10 = alloca %struct.III_psy_xmin*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %6, align 4
  store double* %1, double** %7, align 4
  store %struct.III_psy_ratio* %2, %struct.III_psy_ratio** %8, align 4
  store %struct.gr_info* %3, %struct.gr_info** %9, align 4
  store %struct.III_psy_xmin* %4, %struct.III_psy_xmin** %10, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %22 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 33
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

; <label>:25:                                     ; preds = %5
  %26 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %27 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  br label %29

; <label>:29:                                     ; preds = %50, %25
  %30 = load i32, i32* %17, align 4
  %31 = icmp ult i32 %30, 12
  br i1 %31, label %32, label %53

; <label>:32:                                     ; preds = %29
  store i32 0, i32* %15, align 4
  br label %33

; <label>:33:                                     ; preds = %46, %32
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %17, align 4
  %38 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i32 %37
  %39 = load double, double* %38, align 8
  %40 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %10, align 4
  %41 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %40, i32 0, i32 1
  %42 = load i32, i32* %17, align 4
  %43 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %41, i32 0, i32 %42
  %44 = load i32, i32* %15, align 4
  %45 = getelementptr inbounds [3 x double], [3 x double]* %43, i32 0, i32 %44
  store double %39, double* %45, align 8
  br label %46

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  br label %33

; <label>:49:                                     ; preds = %33
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %17, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %29

; <label>:53:                                     ; preds = %29
  store i32 0, i32* %17, align 4
  br label %54

; <label>:54:                                     ; preds = %68, %53
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %57 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %56, i32 0, i32 16
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %17, align 4
  %62 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i32 %61
  %63 = load double, double* %62, align 8
  %64 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %10, align 4
  %65 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %64, i32 0, i32 0
  %66 = load i32, i32* %17, align 4
  %67 = getelementptr inbounds [22 x double], [22 x double]* %65, i32 0, i32 %66
  store double %63, double* %67, align 8
  br label %68

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %17, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %54

; <label>:71:                                     ; preds = %54
  br label %280

; <label>:72:                                     ; preds = %5
  %73 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %74 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %17, align 4
  br label %76

; <label>:76:                                     ; preds = %180, %72
  %77 = load i32, i32* %17, align 4
  %78 = icmp ult i32 %77, 12
  br i1 %78, label %79, label %183

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %17, align 4
  %81 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %17, align 4
  %84 = add i32 %83, 1
  %85 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %90

; <label>:90:                                     ; preds = %176, %79
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %179

; <label>:93:                                     ; preds = %90
  store double 0.000000e+00, double* %18, align 8
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %14, align 4
  br label %95

; <label>:95:                                     ; preds = %113, %93
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %116

; <label>:99:                                     ; preds = %95
  %100 = load double*, double** %7, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %101, 3
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = getelementptr inbounds double, double* %100, i32 %104
  %106 = load double, double* %105, align 8
  store double %106, double* %20, align 8
  %107 = load double, double* %20, align 8
  %108 = load double, double* %20, align 8
  %109 = fmul double %107, %108
  store double %109, double* %20, align 8
  %110 = load double, double* %20, align 8
  %111 = load double, double* %18, align 8
  %112 = fadd double %111, %110
  store double %112, double* %18, align 8
  br label %113

; <label>:113:                                    ; preds = %99
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %95

; <label>:116:                                    ; preds = %95
  %117 = load i32, i32* %13, align 4
  %118 = sitofp i32 %117 to double
  %119 = load double, double* %18, align 8
  %120 = fdiv double %119, %118
  store double %120, double* %18, align 8
  %121 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %8, align 4
  %122 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %122, i32 0, i32 1
  %124 = load i32, i32* %17, align 4
  %125 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %123, i32 0, i32 %124
  %126 = load i32, i32* %15, align 4
  %127 = getelementptr inbounds [3 x double], [3 x double]* %125, i32 0, i32 %126
  %128 = load double, double* %127, align 8
  store double %128, double* %19, align 8
  %129 = load double, double* %19, align 8
  %130 = fcmp ogt double %129, 0.000000e+00
  br i1 %130, label %131, label %147

; <label>:131:                                    ; preds = %116
  %132 = load double, double* %18, align 8
  %133 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %8, align 4
  %134 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %134, i32 0, i32 1
  %136 = load i32, i32* %17, align 4
  %137 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %135, i32 0, i32 %136
  %138 = load i32, i32* %15, align 4
  %139 = getelementptr inbounds [3 x double], [3 x double]* %137, i32 0, i32 %138
  %140 = load double, double* %139, align 8
  %141 = fmul double %132, %140
  %142 = load float, float* @masking_lower, align 4
  %143 = fpext float %142 to double
  %144 = fmul double %141, %143
  %145 = load double, double* %19, align 8
  %146 = fdiv double %144, %145
  store double %146, double* %19, align 8
  br label %147

; <label>:147:                                    ; preds = %131, %116
  %148 = load i32, i32* %17, align 4
  %149 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i32 %148
  %150 = load double, double* %149, align 8
  %151 = load double, double* %19, align 8
  %152 = fcmp ogt double %150, %151
  br i1 %152, label %153, label %157

; <label>:153:                                    ; preds = %147
  %154 = load i32, i32* %17, align 4
  %155 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i32 %154
  %156 = load double, double* %155, align 8
  br label %159

; <label>:157:                                    ; preds = %147
  %158 = load double, double* %19, align 8
  br label %159

; <label>:159:                                    ; preds = %157, %153
  %160 = phi double [ %156, %153 ], [ %158, %157 ]
  %161 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %10, align 4
  %162 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %161, i32 0, i32 1
  %163 = load i32, i32* %17, align 4
  %164 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %162, i32 0, i32 %163
  %165 = load i32, i32* %15, align 4
  %166 = getelementptr inbounds [3 x double], [3 x double]* %164, i32 0, i32 %165
  store double %160, double* %166, align 8
  %167 = load double, double* %18, align 8
  %168 = load i32, i32* %17, align 4
  %169 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i32 %168
  %170 = load double, double* %169, align 8
  %171 = fcmp ogt double %167, %170
  br i1 %171, label %172, label %175

; <label>:172:                                    ; preds = %159
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %175

; <label>:175:                                    ; preds = %172, %159
  br label %176

; <label>:176:                                    ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %90

; <label>:179:                                    ; preds = %90
  br label %180

; <label>:180:                                    ; preds = %179
  %181 = load i32, i32* %17, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %76

; <label>:183:                                    ; preds = %76
  store i32 0, i32* %17, align 4
  br label %184

; <label>:184:                                    ; preds = %276, %183
  %185 = load i32, i32* %17, align 4
  %186 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %187 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %186, i32 0, i32 16
  %188 = load i32, i32* %187, align 4
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %190, label %279

; <label>:190:                                    ; preds = %184
  %191 = load i32, i32* %17, align 4
  %192 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %17, align 4
  %195 = add i32 %194, 1
  %196 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %13, align 4
  store double 0.000000e+00, double* %18, align 8
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %14, align 4
  br label %202

; <label>:202:                                    ; preds = %219, %190
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %222

; <label>:206:                                    ; preds = %202
  %207 = load double*, double** %7, align 4
  %208 = load i32, i32* %14, align 4
  %209 = getelementptr inbounds double, double* %207, i32 %208
  %210 = load double, double* %209, align 8
  %211 = load double*, double** %7, align 4
  %212 = load i32, i32* %14, align 4
  %213 = getelementptr inbounds double, double* %211, i32 %212
  %214 = load double, double* %213, align 8
  %215 = fmul double %210, %214
  store double %215, double* %20, align 8
  %216 = load double, double* %20, align 8
  %217 = load double, double* %18, align 8
  %218 = fadd double %217, %216
  store double %218, double* %18, align 8
  br label %219

; <label>:219:                                    ; preds = %206
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %202

; <label>:222:                                    ; preds = %202
  %223 = load i32, i32* %13, align 4
  %224 = sitofp i32 %223 to double
  %225 = load double, double* %18, align 8
  %226 = fdiv double %225, %224
  store double %226, double* %18, align 8
  %227 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %8, align 4
  %228 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %228, i32 0, i32 0
  %230 = load i32, i32* %17, align 4
  %231 = getelementptr inbounds [22 x double], [22 x double]* %229, i32 0, i32 %230
  %232 = load double, double* %231, align 8
  store double %232, double* %19, align 8
  %233 = load double, double* %19, align 8
  %234 = fcmp ogt double %233, 0.000000e+00
  br i1 %234, label %235, label %249

; <label>:235:                                    ; preds = %222
  %236 = load double, double* %18, align 8
  %237 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %8, align 4
  %238 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %238, i32 0, i32 0
  %240 = load i32, i32* %17, align 4
  %241 = getelementptr inbounds [22 x double], [22 x double]* %239, i32 0, i32 %240
  %242 = load double, double* %241, align 8
  %243 = fmul double %236, %242
  %244 = load float, float* @masking_lower, align 4
  %245 = fpext float %244 to double
  %246 = fmul double %243, %245
  %247 = load double, double* %19, align 8
  %248 = fdiv double %246, %247
  store double %248, double* %19, align 8
  br label %249

; <label>:249:                                    ; preds = %235, %222
  %250 = load i32, i32* %17, align 4
  %251 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i32 %250
  %252 = load double, double* %251, align 8
  %253 = load double, double* %19, align 8
  %254 = fcmp ogt double %252, %253
  br i1 %254, label %255, label %259

; <label>:255:                                    ; preds = %249
  %256 = load i32, i32* %17, align 4
  %257 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i32 %256
  %258 = load double, double* %257, align 8
  br label %261

; <label>:259:                                    ; preds = %249
  %260 = load double, double* %19, align 8
  br label %261

; <label>:261:                                    ; preds = %259, %255
  %262 = phi double [ %258, %255 ], [ %260, %259 ]
  %263 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %10, align 4
  %264 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %263, i32 0, i32 0
  %265 = load i32, i32* %17, align 4
  %266 = getelementptr inbounds [22 x double], [22 x double]* %264, i32 0, i32 %265
  store double %262, double* %266, align 8
  %267 = load double, double* %18, align 8
  %268 = load i32, i32* %17, align 4
  %269 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i32 %268
  %270 = load double, double* %269, align 8
  %271 = fcmp ogt double %267, %270
  br i1 %271, label %272, label %275

; <label>:272:                                    ; preds = %261
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %16, align 4
  br label %275

; <label>:275:                                    ; preds = %272, %261
  br label %276

; <label>:276:                                    ; preds = %275
  %277 = load i32, i32* %17, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %17, align 4
  br label %184

; <label>:279:                                    ; preds = %184
  br label %280

; <label>:280:                                    ; preds = %279, %71
  %281 = load i32, i32* %16, align 4
  ret i32 %281
}

; Function Attrs: nounwind
define arm_aapcscc i32 @loop_break(%struct.III_scalefac_t*, %struct.gr_info*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.III_scalefac_t*, align 4
  %5 = alloca %struct.gr_info*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.III_scalefac_t* %0, %struct.III_scalefac_t** %4, align 4
  store %struct.gr_info* %1, %struct.gr_info** %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %11 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %8
  %15 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %4, align 4
  %16 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [22 x i32], [22 x i32]* %16, i32 0, i32 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

; <label>:22:                                     ; preds = %14
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %28 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %27, i32 0, i32 17
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %30

; <label>:30:                                     ; preds = %52, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %31, 12
  br i1 %32, label %33, label %55

; <label>:33:                                     ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

; <label>:34:                                     ; preds = %48, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %51

; <label>:37:                                     ; preds = %34
  %38 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %4, align 4
  %39 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %38, i32 0, i32 1
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %39, i32 0, i32 %40
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i32 0, i32 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %37
  store i32 0, i32* %3, align 4
  br label %56

; <label>:47:                                     ; preds = %37
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %34

; <label>:51:                                     ; preds = %34
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %30

; <label>:55:                                     ; preds = %30
  store i32 1, i32* %3, align 4
  br label %56

; <label>:56:                                     ; preds = %55, %46, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bin_search_StepSize2(%struct.lame_global_flags*, i32, i32, i32*, double*, %struct.gr_info*) #0 {
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 4
  %11 = alloca double*, align 4
  %12 = alloca %struct.gr_info*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 4
  store double* %4, double** %11, align 4
  store %struct.gr_info* %5, %struct.gr_info** %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %18

; <label>:18:                                     ; preds = %81, %6
  %19 = load i32, i32* %15, align 4
  %20 = load %struct.gr_info*, %struct.gr_info** %12, align 4
  %21 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %23 = load i32*, i32** %10, align 4
  %24 = load double*, double** %11, align 4
  %25 = load %struct.gr_info*, %struct.gr_info** %12, align 4
  %26 = call arm_aapcscc i32 @count_bits(%struct.lame_global_flags* %22, i32* %23, double* %24, %struct.gr_info* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %18
  br label %82

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* @bin_search_StepSize2.CurrentStep, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %30
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %57

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %16, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  store i32 1, i32* %14, align 4
  %47 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* @bin_search_StepSize2.CurrentStep, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %43, %40
  store i32 1, i32* %16, align 4
  %50 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %49
  br label %82

; <label>:56:                                     ; preds = %49
  br label %80

; <label>:57:                                     ; preds = %36
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

; <label>:67:                                     ; preds = %64
  store i32 1, i32* %14, align 4
  %68 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* @bin_search_StepSize2.CurrentStep, align 4
  br label %70

; <label>:70:                                     ; preds = %67, %64, %61
  store i32 2, i32* %16, align 4
  %71 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %70
  br label %82

; <label>:77:                                     ; preds = %70
  br label %79

; <label>:78:                                     ; preds = %57
  br label %82

; <label>:79:                                     ; preds = %77
  br label %80

; <label>:80:                                     ; preds = %79, %56
  br label %81

; <label>:81:                                     ; preds = %80
  br i1 true, label %18, label %82

; <label>:82:                                     ; preds = %81, %78, %76, %55, %29
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call arm_aapcscc i32 @abs(i32 %85) #7
  store i32 %86, i32* @bin_search_StepSize2.CurrentStep, align 4
  %87 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4
  %88 = icmp sge i32 %87, 4
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %82
  store i32 4, i32* @bin_search_StepSize2.CurrentStep, align 4
  br label %91

; <label>:90:                                     ; preds = %82
  store i32 2, i32* @bin_search_StepSize2.CurrentStep, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %89
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

; Function Attrs: nounwind readnone
declare arm_aapcscc i32 @abs(i32) #4

; Function Attrs: nounwind
define arm_aapcscc void @quantize_xrpow(double*, i32*, %struct.gr_info*) #0 {
  %4 = alloca double*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca %struct.gr_info*, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store double* %0, double** %4, align 4
  store i32* %1, i32** %5, align 4
  store %struct.gr_info* %2, %struct.gr_info** %6, align 4
  %25 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %26 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i32 %27
  %29 = load double, double* %28, align 8
  store double %29, double* %7, align 8
  store i32 72, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %162, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %165

; <label>:33:                                     ; preds = %30
  %34 = load double*, double** %4, align 4
  %35 = getelementptr inbounds double, double* %34, i32 1
  store double* %35, double** %4, align 4
  %36 = load double, double* %34, align 8
  %37 = load double, double* %7, align 8
  %38 = fmul double %36, %37
  store double %38, double* %9, align 8
  %39 = load double*, double** %4, align 4
  %40 = getelementptr inbounds double, double* %39, i32 1
  store double* %40, double** %4, align 4
  %41 = load double, double* %39, align 8
  %42 = load double, double* %7, align 8
  %43 = fmul double %41, %42
  store double %43, double* %10, align 8
  %44 = load double, double* %9, align 8
  %45 = fptosi double %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load double*, double** %4, align 4
  %47 = getelementptr inbounds double, double* %46, i32 1
  store double* %47, double** %4, align 4
  %48 = load double, double* %46, align 8
  %49 = load double, double* %7, align 8
  %50 = fmul double %48, %49
  store double %50, double* %11, align 8
  %51 = load double, double* %10, align 8
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %18, align 4
  %53 = load double*, double** %4, align 4
  %54 = getelementptr inbounds double, double* %53, i32 1
  store double* %54, double** %4, align 4
  %55 = load double, double* %53, align 8
  %56 = load double, double* %7, align 8
  %57 = fmul double %55, %56
  store double %57, double* %12, align 8
  %58 = load double, double* %11, align 8
  %59 = fptosi double %58 to i32
  store i32 %59, i32* %19, align 4
  %60 = load double*, double** %4, align 4
  %61 = getelementptr inbounds double, double* %60, i32 1
  store double* %61, double** %4, align 4
  %62 = load double, double* %60, align 8
  %63 = load double, double* %7, align 8
  %64 = fmul double %62, %63
  store double %64, double* %13, align 8
  %65 = load double, double* %12, align 8
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %20, align 4
  %67 = load double*, double** %4, align 4
  %68 = getelementptr inbounds double, double* %67, i32 1
  store double* %68, double** %4, align 4
  %69 = load double, double* %67, align 8
  %70 = load double, double* %7, align 8
  %71 = fmul double %69, %70
  store double %71, double* %14, align 8
  %72 = load double, double* %13, align 8
  %73 = fptosi double %72 to i32
  store i32 %73, i32* %21, align 4
  %74 = load double*, double** %4, align 4
  %75 = getelementptr inbounds double, double* %74, i32 1
  store double* %75, double** %4, align 4
  %76 = load double, double* %74, align 8
  %77 = load double, double* %7, align 8
  %78 = fmul double %76, %77
  store double %78, double* %15, align 8
  %79 = load double, double* %14, align 8
  %80 = fptosi double %79 to i32
  store i32 %80, i32* %22, align 4
  %81 = load double*, double** %4, align 4
  %82 = getelementptr inbounds double, double* %81, i32 1
  store double* %82, double** %4, align 4
  %83 = load double, double* %81, align 8
  %84 = load double, double* %7, align 8
  %85 = fmul double %83, %84
  store double %85, double* %16, align 8
  %86 = load double, double* %15, align 8
  %87 = fptosi double %86 to i32
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %17, align 4
  %89 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %88
  %90 = load double, double* %89, align 8
  %91 = load double, double* %9, align 8
  %92 = fadd double %91, %90
  store double %92, double* %9, align 8
  %93 = load double, double* %16, align 8
  %94 = fptosi double %93 to i32
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %18, align 4
  %96 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %95
  %97 = load double, double* %96, align 8
  %98 = load double, double* %10, align 8
  %99 = fadd double %98, %97
  store double %99, double* %10, align 8
  %100 = load double, double* %9, align 8
  %101 = fptosi double %100 to i32
  %102 = load i32*, i32** %5, align 4
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %5, align 4
  store i32 %101, i32* %102, align 4
  %104 = load i32, i32* %19, align 4
  %105 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %104
  %106 = load double, double* %105, align 8
  %107 = load double, double* %11, align 8
  %108 = fadd double %107, %106
  store double %108, double* %11, align 8
  %109 = load double, double* %10, align 8
  %110 = fptosi double %109 to i32
  %111 = load i32*, i32** %5, align 4
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %5, align 4
  store i32 %110, i32* %111, align 4
  %113 = load i32, i32* %20, align 4
  %114 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %113
  %115 = load double, double* %114, align 8
  %116 = load double, double* %12, align 8
  %117 = fadd double %116, %115
  store double %117, double* %12, align 8
  %118 = load double, double* %11, align 8
  %119 = fptosi double %118 to i32
  %120 = load i32*, i32** %5, align 4
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %5, align 4
  store i32 %119, i32* %120, align 4
  %122 = load i32, i32* %21, align 4
  %123 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %122
  %124 = load double, double* %123, align 8
  %125 = load double, double* %13, align 8
  %126 = fadd double %125, %124
  store double %126, double* %13, align 8
  %127 = load double, double* %12, align 8
  %128 = fptosi double %127 to i32
  %129 = load i32*, i32** %5, align 4
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %5, align 4
  store i32 %128, i32* %129, align 4
  %131 = load i32, i32* %22, align 4
  %132 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %131
  %133 = load double, double* %132, align 8
  %134 = load double, double* %14, align 8
  %135 = fadd double %134, %133
  store double %135, double* %14, align 8
  %136 = load double, double* %13, align 8
  %137 = fptosi double %136 to i32
  %138 = load i32*, i32** %5, align 4
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %5, align 4
  store i32 %137, i32* %138, align 4
  %140 = load i32, i32* %23, align 4
  %141 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %140
  %142 = load double, double* %141, align 8
  %143 = load double, double* %15, align 8
  %144 = fadd double %143, %142
  store double %144, double* %15, align 8
  %145 = load double, double* %14, align 8
  %146 = fptosi double %145 to i32
  %147 = load i32*, i32** %5, align 4
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %5, align 4
  store i32 %146, i32* %147, align 4
  %149 = load i32, i32* %24, align 4
  %150 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i32 %149
  %151 = load double, double* %150, align 8
  %152 = load double, double* %16, align 8
  %153 = fadd double %152, %151
  store double %153, double* %16, align 8
  %154 = load double, double* %15, align 8
  %155 = fptosi double %154 to i32
  %156 = load i32*, i32** %5, align 4
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %5, align 4
  store i32 %155, i32* %156, align 4
  %158 = load double, double* %16, align 8
  %159 = fptosi double %158 to i32
  %160 = load i32*, i32** %5, align 4
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %5, align 4
  store i32 %159, i32* %160, align 4
  br label %162

; <label>:162:                                    ; preds = %33
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  br label %30

; <label>:165:                                    ; preds = %30
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @quantize_xrpow_ISO(double*, i32*, %struct.gr_info*) #0 {
  %4 = alloca double*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca %struct.gr_info*, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store double* %0, double** %4, align 4
  store i32* %1, i32** %5, align 4
  store %struct.gr_info* %2, %struct.gr_info** %6, align 4
  %10 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %11 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i32 %12
  %14 = load double, double* %13, align 8
  store double %14, double* %7, align 8
  %15 = load double, double* %7, align 8
  %16 = fdiv double 5.946000e-01, %15
  store double %16, double* %9, align 8
  store i32 576, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %41, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %44

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %9, align 8
  %22 = load double*, double** %4, align 4
  %23 = load double, double* %22, align 8
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %20
  %26 = load i32*, i32** %5, align 4
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 4
  store i32 0, i32* %26, align 4
  %28 = load double*, double** %4, align 4
  %29 = getelementptr inbounds double, double* %28, i32 1
  store double* %29, double** %4, align 4
  br label %40

; <label>:30:                                     ; preds = %20
  %31 = load double, double* %7, align 8
  %32 = load double*, double** %4, align 4
  %33 = getelementptr inbounds double, double* %32, i32 1
  store double* %33, double** %4, align 4
  %34 = load double, double* %32, align 8
  %35 = fmul double %31, %34
  %36 = fadd double %35, 4.054000e-01
  %37 = fptosi double %36 to i32
  %38 = load i32*, i32** %5, align 4
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 4
  store i32 %37, i32* %38, align 4
  br label %40

; <label>:40:                                     ; preds = %30, %25
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %17

; <label>:44:                                     ; preds = %17
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
