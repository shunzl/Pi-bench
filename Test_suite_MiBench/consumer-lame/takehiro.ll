; ModuleID = 'takehiro.c'
source_filename = "takehiro.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, i32*, i8* }
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon.0] }
%struct.anon.0 = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@subdv_table = global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 4
@ipow20 = external global [256 x double], align 8
@scalefac_band = external global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 4
@ht = external global [34 x %struct.huffcodetab], align 4
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 4
@cb_esc_sign = internal global i32 0, align 4
@cb_esc_end = internal global i32* null, align 4
@scfsi_calc.scfsi_band = internal constant [5 x i32] [i32 0, i32 6, i32 11, i32 16, i32 21], align 4
@scfsi_calc.slen1_n = internal constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 4
@scfsi_calc.slen2_n = internal constant [16 x i32] [i32 0, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 4
@scfsi_calc.slen1_tab = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 4
@scfsi_calc.slen2_tab = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 4

; Function Attrs: nounwind
define arm_aapcscc i32 @count_bits(%struct.lame_global_flags*, i32*, double*, %struct.gr_info*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lame_global_flags*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca double*, align 4
  %9 = alloca %struct.gr_info*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %6, align 4
  store i32* %1, i32** %7, align 4
  store double* %2, double** %8, align 4
  store %struct.gr_info* %3, %struct.gr_info** %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %14 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i32 %15
  %17 = load double, double* %16, align 8
  %18 = fdiv double 8.206000e+03, %17
  store double %18, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %19

; <label>:19:                                     ; preds = %31, %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 576
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %19
  %23 = load double*, double** %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds double, double* %23, i32 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %12, align 8
  %28 = fcmp ogt double %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  store i32 100000, i32* %5, align 4
  br label %90

; <label>:30:                                     ; preds = %22
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %19

; <label>:34:                                     ; preds = %19
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 60
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %34
  %40 = load double*, double** %8, align 4
  %41 = load i32*, i32** %7, align 4
  %42 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  call arm_aapcscc void @quantize_xrpow(double* %40, i32* %41, %struct.gr_info* %42)
  br label %47

; <label>:43:                                     ; preds = %34
  %44 = load double*, double** %8, align 4
  %45 = load i32*, i32** %7, align 4
  %46 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  call arm_aapcscc void @quantize_xrpow_ISO(double* %44, i32* %45, %struct.gr_info* %46)
  br label %47

; <label>:47:                                     ; preds = %43, %39
  %48 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %49 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %70

; <label>:52:                                     ; preds = %47
  %53 = load i32*, i32** %7, align 4
  %54 = load i32*, i32** %7, align 4
  %55 = getelementptr inbounds i32, i32* %54, i32 36
  %56 = call arm_aapcscc i32 @choose_table_short(i32* %53, i32* %55, i32* %10)
  %57 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %58 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %57, i32 0, i32 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32*, i32** %7, align 4
  %61 = getelementptr inbounds i32, i32* %60, i32 36
  %62 = load i32*, i32** %7, align 4
  %63 = getelementptr inbounds i32, i32* %62, i32 576
  %64 = call arm_aapcscc i32 @choose_table_short(i32* %61, i32* %63, i32* %10)
  %65 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %66 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %65, i32 0, i32 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %69 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %68, i32 0, i32 1
  store i32 288, i32* %69, align 4
  br label %88

; <label>:70:                                     ; preds = %47
  %71 = load i32*, i32** %7, align 4
  %72 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %73 = call arm_aapcscc i32 @count_bits_long(i32* %71, %struct.gr_info* %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %75 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %78 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %76, %79
  %81 = udiv i32 %80, 4
  %82 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %83 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.gr_info*, %struct.gr_info** %9, align 4
  %85 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = udiv i32 %86, 2
  store i32 %87, i32* %85, align 4
  br label %88

; <label>:88:                                     ; preds = %70, %52
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare arm_aapcscc void @quantize_xrpow(double*, i32*, %struct.gr_info*) #1

declare arm_aapcscc void @quantize_xrpow_ISO(double*, i32*, %struct.gr_info*) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @choose_table_short(i32*, i32*, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 4
  store i32* %1, i32** %6, align 4
  store i32* %2, i32** %7, align 4
  %13 = load i32*, i32** %5, align 4
  %14 = load i32*, i32** %6, align 4
  %15 = call arm_aapcscc i32 @ix_max(i32* %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 8206
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = load i32*, i32** %7, align 4
  store i32 100000, i32* %19, align 4
  store i32 -1, i32* %4, align 4
  br label %125

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 15
  br i1 %22, label %23, label %80

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  store i32 0, i32* %4, align 4
  br label %125

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds [15 x i32], [15 x i32]* @huf_tbl_noESC, i32 0, i32 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 4
  %33 = load i32*, i32** %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call arm_aapcscc i32 @count_bit_short_noESC(i32* %32, i32* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %74 [
    i32 7, label %38
    i32 10, label %38
    i32 2, label %50
    i32 5, label %50
    i32 13, label %62
  ]

; <label>:38:                                     ; preds = %27, %27
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call arm_aapcscc i32 @count_bit_noESC2(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %9, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %38
  br label %50

; <label>:50:                                     ; preds = %27, %27, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call arm_aapcscc i32 @count_bit_noESC2(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %9, align 4
  br label %61

; <label>:61:                                     ; preds = %58, %50
  br label %75

; <label>:62:                                     ; preds = %27
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call arm_aapcscc i32 @count_bit_noESC2(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %62
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %9, align 4
  br label %73

; <label>:73:                                     ; preds = %70, %62
  br label %75

; <label>:74:                                     ; preds = %27
  br label %75

; <label>:75:                                     ; preds = %74, %73, %61
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %7, align 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %123

; <label>:80:                                     ; preds = %20
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 15
  store i32 %82, i32* %8, align 4
  store i32 24, i32* %11, align 4
  br label %83

; <label>:83:                                     ; preds = %95, %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %98

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %87
  %89 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %86
  br label %98

; <label>:94:                                     ; preds = %86
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %83

; <label>:98:                                     ; preds = %93, %83
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 8
  store i32 %100, i32* %9, align 4
  br label %101

; <label>:101:                                    ; preds = %113, %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 24
  br i1 %103, label %104, label %116

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %105
  %107 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %104
  br label %116

; <label>:112:                                    ; preds = %104
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %101

; <label>:116:                                    ; preds = %111, %101
  %117 = load i32*, i32** %5, align 4
  %118 = load i32*, i32** %6, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %7, align 4
  %122 = call arm_aapcscc i32 @count_bit_short_ESC(i32* %117, i32* %118, i32 %119, i32 %120, i32* %121)
  store i32 %122, i32* %9, align 4
  br label %123

; <label>:123:                                    ; preds = %116, %75
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

; <label>:125:                                    ; preds = %123, %26, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bits_long(i32*, %struct.gr_info*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 4
  %5 = alloca %struct.gr_info*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store %struct.gr_info* %1, %struct.gr_info** %5, align 4
  store i32 0, i32* %9, align 4
  store i32 576, i32* %6, align 4
  br label %14

; <label>:14:                                     ; preds = %32, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = getelementptr inbounds i32, i32* %18, i32 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 2
  %26 = getelementptr inbounds i32, i32* %23, i32 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %17
  br label %35

; <label>:31:                                     ; preds = %17
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %6, align 4
  br label %14

; <label>:35:                                     ; preds = %30, %14
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %38 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %7, align 4
  br label %39

; <label>:39:                                     ; preds = %124, %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %127

; <label>:42:                                     ; preds = %39
  %43 = load i32*, i32** %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i32 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 2
  %51 = getelementptr inbounds i32, i32* %48, i32 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %47, %52
  %54 = load i32*, i32** %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 3
  %57 = getelementptr inbounds i32, i32* %54, i32 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  %60 = load i32*, i32** %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 4
  %63 = getelementptr inbounds i32, i32* %60, i32 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %59, %64
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %42
  br label %127

; <label>:68:                                     ; preds = %42
  %69 = load i32*, i32** %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = getelementptr inbounds i32, i32* %69, i32 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 2
  %81 = getelementptr inbounds i32, i32* %78, i32 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

; <label>:85:                                     ; preds = %68
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %90

; <label>:90:                                     ; preds = %85, %68
  %91 = load i32*, i32** %4, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 3
  %94 = getelementptr inbounds i32, i32* %91, i32 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

; <label>:103:                                    ; preds = %98, %90
  %104 = load i32*, i32** %4, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 4
  %107 = getelementptr inbounds i32, i32* %104, i32 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 8
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

; <label>:116:                                    ; preds = %111, %103
  %117 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 32, i32 3), align 4
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds i8, i8* %117, i32 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

; <label>:124:                                    ; preds = %116
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 4
  store i32 %126, i32* %6, align 4
  br label %39

; <label>:127:                                    ; preds = %67, %39
  %128 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %129 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %130, %131
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %142

; <label>:136:                                    ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %141 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %140, i32 0, i32 14
  store i32 0, i32* %141, align 4
  br label %148

; <label>:142:                                    ; preds = %127
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %147 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %146, i32 0, i32 14
  store i32 1, i32* %147, align 4
  br label %148

; <label>:148:                                    ; preds = %142, %136
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %151 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %150, i32 0, i32 18
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %154 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

; <label>:157:                                    ; preds = %148
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %271

; <label>:159:                                    ; preds = %148
  %160 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %161 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %238

; <label>:164:                                    ; preds = %159
  store i32 0, i32* %13, align 4
  br label %165

; <label>:165:                                    ; preds = %172, %164
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  %168 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %173

; <label>:172:                                    ; preds = %165
  br label %165

; <label>:173:                                    ; preds = %165
  %174 = load i32, i32* %13, align 4
  %175 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @subdv_table, i32 0, i32 %174
  %176 = getelementptr inbounds %struct.anon, %struct.anon* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %12, align 4
  br label %178

; <label>:178:                                    ; preds = %185, %173
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  %181 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %188

; <label>:185:                                    ; preds = %178
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %12, align 4
  br label %178

; <label>:188:                                    ; preds = %178
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %191 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @subdv_table, i32 0, i32 %192
  %194 = getelementptr inbounds %struct.anon, %struct.anon* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %12, align 4
  br label %196

; <label>:196:                                    ; preds = %207, %188
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %199 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 4
  %201 = add i32 %197, %200
  %202 = add i32 %201, 2
  %203 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %210

; <label>:207:                                    ; preds = %196
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %12, align 4
  br label %196

; <label>:210:                                    ; preds = %196
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %213 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %212, i32 0, i32 11
  store i32 %211, i32* %213, align 4
  %214 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %215 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, 1
  %218 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %222 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %220, %223
  %225 = add i32 %224, 2
  %226 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %8, align 4
  %228 = load i32*, i32** %4, align 4
  %229 = load i32, i32* %8, align 4
  %230 = getelementptr inbounds i32, i32* %228, i32 %229
  %231 = load i32*, i32** %4, align 4
  %232 = load i32, i32* %6, align 4
  %233 = getelementptr inbounds i32, i32* %231, i32 %232
  %234 = call arm_aapcscc i32 @choose_table(i32* %230, i32* %233, i32* %9)
  %235 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %236 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %235, i32 0, i32 8
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %236, i32 0, i32 2
  store i32 %234, i32* %237, align 4
  br label %251

; <label>:238:                                    ; preds = %159
  %239 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %240 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %239, i32 0, i32 10
  store i32 7, i32* %240, align 4
  %241 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %242 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %241, i32 0, i32 11
  store i32 13, i32* %242, align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0, i32 8), align 4
  store i32 %243, i32* %7, align 4
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %250

; <label>:248:                                    ; preds = %238
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %7, align 4
  br label %250

; <label>:250:                                    ; preds = %248, %238
  br label %251

; <label>:251:                                    ; preds = %250, %210
  %252 = load i32*, i32** %4, align 4
  %253 = load i32*, i32** %4, align 4
  %254 = load i32, i32* %7, align 4
  %255 = getelementptr inbounds i32, i32* %253, i32 %254
  %256 = call arm_aapcscc i32 @choose_table(i32* %252, i32* %255, i32* %9)
  %257 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %258 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %257, i32 0, i32 8
  %259 = getelementptr inbounds [3 x i32], [3 x i32]* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 4
  %260 = load i32*, i32** %4, align 4
  %261 = load i32, i32* %7, align 4
  %262 = getelementptr inbounds i32, i32* %260, i32 %261
  %263 = load i32*, i32** %4, align 4
  %264 = load i32, i32* %8, align 4
  %265 = getelementptr inbounds i32, i32* %263, i32 %264
  %266 = call arm_aapcscc i32 @choose_table(i32* %262, i32* %265, i32* %9)
  %267 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %268 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %267, i32 0, i32 8
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* %3, align 4
  br label %271

; <label>:271:                                    ; preds = %251, %157
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

; Function Attrs: nounwind
define arm_aapcscc void @best_huffman_divide(i32, i32, %struct.gr_info*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gr_info*, align 4
  %8 = alloca i32*, align 4
  %9 = alloca i32*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [25 x i32], align 4
  %17 = alloca [25 x i32], align 4
  %18 = alloca %struct.gr_info, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.gr_info* %2, %struct.gr_info** %7, align 4
  store i32* %3, i32** %8, align 4
  %19 = bitcast %struct.gr_info* %18 to i8*
  %20 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %21 = bitcast %struct.gr_info* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %21, i32 112, i32 4, i1 false)
  %22 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %23, 2
  store i32 %24, i32* %14, align 4
  %25 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 0
  store i32* %25, i32** %9, align 4
  store i32 2, i32* %10, align 4
  br label %26

; <label>:26:                                     ; preds = %56, %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 23
  br i1 %28, label %29, label %59

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %29
  br label %59

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 18
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds [25 x i32], [25 x i32]* %16, i32 0, i32 %43
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %8, align 4
  %46 = load i32, i32* %13, align 4
  %47 = getelementptr inbounds i32, i32* %45, i32 %46
  %48 = load i32*, i32** %8, align 4
  %49 = load i32, i32* %14, align 4
  %50 = getelementptr inbounds i32, i32* %48, i32 %49
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [25 x i32], [25 x i32]* %16, i32 0, i32 %51
  %53 = call arm_aapcscc i32 @choose_table(i32* %47, i32* %50, i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds [25 x i32], [25 x i32]* %17, i32 0, i32 %54
  store i32 %53, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %37
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %26

; <label>:59:                                     ; preds = %36, %26
  br label %60

; <label>:60:                                     ; preds = %66, %59
  %61 = load i32, i32* %10, align 4
  %62 = icmp sle i32 %61, 24
  br i1 %62, label %63, label %69

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = getelementptr inbounds [25 x i32], [25 x i32]* %16, i32 0, i32 %64
  store i32 100000, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %60

; <label>:69:                                     ; preds = %60
  store i32 0, i32* %10, align 4
  br label %70

; <label>:70:                                     ; preds = %161, %69
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %164

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %73
  br label %164

; <label>:82:                                     ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 10
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %15, align 4
  %85 = load i32*, i32** %8, align 4
  %86 = load i32*, i32** %8, align 4
  %87 = load i32, i32* %12, align 4
  %88 = getelementptr inbounds i32, i32* %86, i32 %87
  %89 = call arm_aapcscc i32 @choose_table(i32* %85, i32* %88, i32* %15)
  %90 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 8
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %93 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %82
  br label %164

; <label>:98:                                     ; preds = %82
  store i32 0, i32* %11, align 4
  br label %99

; <label>:99:                                     ; preds = %157, %98
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %160

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = add nsw i32 %106, 2
  %108 = getelementptr inbounds [25 x i32], [25 x i32]* %16, i32 0, i32 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %103, %109
  %111 = load i32*, i32** %9, align 4
  store i32 %110, i32* %111, align 4
  %112 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %113 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %102
  br label %157

; <label>:119:                                    ; preds = %102
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %120, %121
  %123 = add nsw i32 %122, 2
  %124 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %8, align 4
  %127 = load i32, i32* %12, align 4
  %128 = getelementptr inbounds i32, i32* %126, i32 %127
  %129 = load i32*, i32** %8, align 4
  %130 = load i32, i32* %13, align 4
  %131 = getelementptr inbounds i32, i32* %129, i32 %130
  %132 = load i32*, i32** %9, align 4
  %133 = call arm_aapcscc i32 @choose_table(i32* %128, i32* %131, i32* %132)
  %134 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 8
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %137 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %9, align 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %119
  br label %157

; <label>:143:                                    ; preds = %119
  %144 = load i32, i32* %11, align 4
  %145 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 11
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %146, %147
  %149 = add nsw i32 %148, 2
  %150 = getelementptr inbounds [25 x i32], [25 x i32]* %17, i32 0, i32 %149
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %155 = bitcast %struct.gr_info* %154 to i8*
  %156 = bitcast %struct.gr_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %155, i8* %156, i32 112, i32 4, i1 false)
  br label %157

; <label>:157:                                    ; preds = %143, %142, %118
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %99

; <label>:160:                                    ; preds = %99
  br label %161

; <label>:161:                                    ; preds = %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %70

; <label>:164:                                    ; preds = %97, %81, %70
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define internal arm_aapcscc i32 @choose_table(i32*, i32*, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 4
  store i32* %1, i32** %6, align 4
  store i32* %2, i32** %7, align 4
  %13 = load i32*, i32** %5, align 4
  %14 = load i32*, i32** %6, align 4
  %15 = call arm_aapcscc i32 @ix_max(i32* %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 8206
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = load i32*, i32** %7, align 4
  store i32 100000, i32* %19, align 4
  store i32 -1, i32* %4, align 4
  br label %125

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 15
  br i1 %22, label %23, label %80

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  store i32 0, i32* %4, align 4
  br label %125

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds [15 x i32], [15 x i32]* @huf_tbl_noESC, i32 0, i32 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 4
  %33 = load i32*, i32** %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call arm_aapcscc i32 @count_bit_noESC(i32* %32, i32* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %74 [
    i32 7, label %38
    i32 10, label %38
    i32 2, label %50
    i32 5, label %50
    i32 13, label %62
  ]

; <label>:38:                                     ; preds = %27, %27
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call arm_aapcscc i32 @count_bit_noESC2(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %9, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %38
  br label %50

; <label>:50:                                     ; preds = %27, %27, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call arm_aapcscc i32 @count_bit_noESC2(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %9, align 4
  br label %61

; <label>:61:                                     ; preds = %58, %50
  br label %75

; <label>:62:                                     ; preds = %27
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call arm_aapcscc i32 @count_bit_noESC2(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %62
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %9, align 4
  br label %73

; <label>:73:                                     ; preds = %70, %62
  br label %75

; <label>:74:                                     ; preds = %27
  br label %75

; <label>:75:                                     ; preds = %74, %73, %61
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %7, align 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %123

; <label>:80:                                     ; preds = %20
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 15
  store i32 %82, i32* %8, align 4
  store i32 24, i32* %11, align 4
  br label %83

; <label>:83:                                     ; preds = %95, %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %98

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %87
  %89 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %86
  br label %98

; <label>:94:                                     ; preds = %86
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %83

; <label>:98:                                     ; preds = %93, %83
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 8
  store i32 %100, i32* %9, align 4
  br label %101

; <label>:101:                                    ; preds = %113, %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 24
  br i1 %103, label %104, label %116

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %105
  %107 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %104
  br label %116

; <label>:112:                                    ; preds = %104
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %101

; <label>:116:                                    ; preds = %111, %101
  %117 = load i32*, i32** %5, align 4
  %118 = load i32*, i32** %6, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %7, align 4
  %122 = call arm_aapcscc i32 @count_bit_ESC(i32* %117, i32* %118, i32 %119, i32 %120, i32* %121)
  store i32 %122, i32* %9, align 4
  br label %123

; <label>:123:                                    ; preds = %116, %75
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

; <label>:125:                                    ; preds = %123, %26, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
define arm_aapcscc void @best_scalefac_store(%struct.lame_global_flags*, i32, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*) #0 {
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x [576 x i32]]*, align 4
  %11 = alloca %struct.III_side_info_t*, align 4
  %12 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %13 = alloca %struct.gr_info*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store [2 x [576 x i32]]* %3, [2 x [576 x i32]]** %10, align 4
  store %struct.III_side_info_t* %4, %struct.III_side_info_t** %11, align 4
  store [2 x %struct.III_scalefac_t]* %5, [2 x %struct.III_scalefac_t]** %12, align 4
  %22 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %23 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %22, i32 0, i32 4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %23, i32 0, i32 %24
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %25, i32 0, i32 0
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %26, i32 0, i32 %27
  %29 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %28, i32 0, i32 0
  store %struct.gr_info* %29, %struct.gr_info** %13, align 4
  store i32 0, i32* %14, align 4
  br label %30

; <label>:30:                                     ; preds = %90, %6
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %33 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %93

; <label>:36:                                     ; preds = %30
  %37 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %37, i32 %38
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %39, i32 0, i32 %40
  %42 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %41, i32 0, i32 0
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds [22 x i32], [22 x i32]* %42, i32 0, i32 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %89

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %16, align 4
  br label %56

; <label>:56:                                     ; preds = %72, %47
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

; <label>:60:                                     ; preds = %56
  %61 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %61, i32 %62
  %64 = load i32, i32* %9, align 4
  %65 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %63, i32 0, i32 %64
  %66 = load i32, i32* %16, align 4
  %67 = getelementptr inbounds [576 x i32], [576 x i32]* %65, i32 0, i32 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %60
  br label %75

; <label>:71:                                     ; preds = %60
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %56

; <label>:75:                                     ; preds = %70, %56
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

; <label>:79:                                     ; preds = %75
  %80 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %80, i32 %81
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %82, i32 0, i32 %83
  %85 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %84, i32 0, i32 0
  %86 = load i32, i32* %14, align 4
  %87 = getelementptr inbounds [22 x i32], [22 x i32]* %85, i32 0, i32 %86
  store i32 0, i32* %87, align 4
  br label %88

; <label>:88:                                     ; preds = %79, %75
  br label %89

; <label>:89:                                     ; preds = %88, %36
  br label %90

; <label>:90:                                     ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %30

; <label>:93:                                     ; preds = %30
  store i32 0, i32* %15, align 4
  br label %94

; <label>:94:                                     ; preds = %169, %93
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %172

; <label>:97:                                     ; preds = %94
  %98 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %99 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  br label %101

; <label>:101:                                    ; preds = %165, %97
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 12
  br i1 %103, label %104, label %168

; <label>:104:                                    ; preds = %101
  %105 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %105, i32 %106
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %107, i32 0, i32 %108
  %110 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %109, i32 0, i32 1
  %111 = load i32, i32* %14, align 4
  %112 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %110, i32 0, i32 %111
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %112, i32 0, i32 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %164

; <label>:117:                                    ; preds = %104
  %118 = load i32, i32* %14, align 4
  %119 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  %123 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %16, align 4
  br label %126

; <label>:126:                                    ; preds = %145, %117
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %148

; <label>:130:                                    ; preds = %126
  %131 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %131, i32 %132
  %134 = load i32, i32* %9, align 4
  %135 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %133, i32 0, i32 %134
  %136 = load i32, i32* %16, align 4
  %137 = mul nsw i32 3, %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = getelementptr inbounds [576 x i32], [576 x i32]* %135, i32 0, i32 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %130
  br label %148

; <label>:144:                                    ; preds = %130
  br label %145

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %126

; <label>:148:                                    ; preds = %143, %126
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %163

; <label>:152:                                    ; preds = %148
  %153 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %153, i32 %154
  %156 = load i32, i32* %9, align 4
  %157 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %155, i32 0, i32 %156
  %158 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %157, i32 0, i32 1
  %159 = load i32, i32* %14, align 4
  %160 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %158, i32 0, i32 %159
  %161 = load i32, i32* %15, align 4
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %160, i32 0, i32 %161
  store i32 0, i32* %162, align 4
  br label %163

; <label>:163:                                    ; preds = %152, %148
  br label %164

; <label>:164:                                    ; preds = %163, %104
  br label %165

; <label>:165:                                    ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %101

; <label>:168:                                    ; preds = %101
  br label %169

; <label>:169:                                    ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %94

; <label>:172:                                    ; preds = %94
  %173 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %174 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %173, i32 0, i32 15
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %177 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %181 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %329, label %184

; <label>:184:                                    ; preds = %172
  %185 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %186 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %329, label %189

; <label>:189:                                    ; preds = %184
  store i32 0, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %190

; <label>:190:                                    ; preds = %208, %189
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %193 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %192, i32 0, i32 16
  %194 = load i32, i32* %193, align 4
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %211

; <label>:196:                                    ; preds = %190
  %197 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %198 = load i32, i32* %8, align 4
  %199 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %197, i32 %198
  %200 = load i32, i32* %9, align 4
  %201 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %199, i32 0, i32 %200
  %202 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %201, i32 0, i32 0
  %203 = load i32, i32* %19, align 4
  %204 = getelementptr inbounds [22 x i32], [22 x i32]* %202, i32 0, i32 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %21, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %21, align 4
  br label %208

; <label>:208:                                    ; preds = %196
  %209 = load i32, i32* %19, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %19, align 4
  br label %190

; <label>:211:                                    ; preds = %190
  %212 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %213 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %19, align 4
  br label %215

; <label>:215:                                    ; preds = %240, %211
  %216 = load i32, i32* %19, align 4
  %217 = icmp ult i32 %216, 12
  br i1 %217, label %218, label %243

; <label>:218:                                    ; preds = %215
  store i32 0, i32* %20, align 4
  br label %219

; <label>:219:                                    ; preds = %236, %218
  %220 = load i32, i32* %20, align 4
  %221 = icmp slt i32 %220, 3
  br i1 %221, label %222, label %239

; <label>:222:                                    ; preds = %219
  %223 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %224 = load i32, i32* %8, align 4
  %225 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %223, i32 %224
  %226 = load i32, i32* %9, align 4
  %227 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %225, i32 0, i32 %226
  %228 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %227, i32 0, i32 1
  %229 = load i32, i32* %19, align 4
  %230 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %228, i32 0, i32 %229
  %231 = load i32, i32* %20, align 4
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %230, i32 0, i32 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %21, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %21, align 4
  br label %236

; <label>:236:                                    ; preds = %222
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %20, align 4
  br label %219

; <label>:239:                                    ; preds = %219
  br label %240

; <label>:240:                                    ; preds = %239
  %241 = load i32, i32* %19, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %19, align 4
  br label %215

; <label>:243:                                    ; preds = %215
  %244 = load i32, i32* %21, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %328, label %247

; <label>:247:                                    ; preds = %243
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %328

; <label>:250:                                    ; preds = %247
  store i32 0, i32* %19, align 4
  br label %251

; <label>:251:                                    ; preds = %268, %250
  %252 = load i32, i32* %19, align 4
  %253 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %254 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %253, i32 0, i32 16
  %255 = load i32, i32* %254, align 4
  %256 = icmp ult i32 %252, %255
  br i1 %256, label %257, label %271

; <label>:257:                                    ; preds = %251
  %258 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %259 = load i32, i32* %8, align 4
  %260 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %258, i32 %259
  %261 = load i32, i32* %9, align 4
  %262 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %260, i32 0, i32 %261
  %263 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %262, i32 0, i32 0
  %264 = load i32, i32* %19, align 4
  %265 = getelementptr inbounds [22 x i32], [22 x i32]* %263, i32 0, i32 %264
  %266 = load i32, i32* %265, align 4
  %267 = sdiv i32 %266, 2
  store i32 %267, i32* %265, align 4
  br label %268

; <label>:268:                                    ; preds = %257
  %269 = load i32, i32* %19, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %19, align 4
  br label %251

; <label>:271:                                    ; preds = %251
  %272 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %273 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %272, i32 0, i32 17
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %19, align 4
  br label %275

; <label>:275:                                    ; preds = %299, %271
  %276 = load i32, i32* %19, align 4
  %277 = icmp ult i32 %276, 12
  br i1 %277, label %278, label %302

; <label>:278:                                    ; preds = %275
  store i32 0, i32* %20, align 4
  br label %279

; <label>:279:                                    ; preds = %295, %278
  %280 = load i32, i32* %20, align 4
  %281 = icmp slt i32 %280, 3
  br i1 %281, label %282, label %298

; <label>:282:                                    ; preds = %279
  %283 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %284 = load i32, i32* %8, align 4
  %285 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %283, i32 %284
  %286 = load i32, i32* %9, align 4
  %287 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %285, i32 0, i32 %286
  %288 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %287, i32 0, i32 1
  %289 = load i32, i32* %19, align 4
  %290 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %288, i32 0, i32 %289
  %291 = load i32, i32* %20, align 4
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %290, i32 0, i32 %291
  %293 = load i32, i32* %292, align 4
  %294 = sdiv i32 %293, 2
  store i32 %294, i32* %292, align 4
  br label %295

; <label>:295:                                    ; preds = %282
  %296 = load i32, i32* %20, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %20, align 4
  br label %279

; <label>:298:                                    ; preds = %279
  br label %299

; <label>:299:                                    ; preds = %298
  %300 = load i32, i32* %19, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %19, align 4
  br label %275

; <label>:302:                                    ; preds = %275
  %303 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %304 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %303, i32 0, i32 13
  store i32 1, i32* %304, align 4
  %305 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %306 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %305, i32 0, i32 15
  store i32 99999999, i32* %306, align 4
  %307 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %308 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %307, i32 0, i32 45
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 2
  br i1 %310, label %311, label %319

; <label>:311:                                    ; preds = %302
  %312 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %313 = load i32, i32* %8, align 4
  %314 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %312, i32 %313
  %315 = load i32, i32* %9, align 4
  %316 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %314, i32 0, i32 %315
  %317 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %318 = call arm_aapcscc i32 @scale_bitcount(%struct.III_scalefac_t* %316, %struct.gr_info* %317)
  br label %327

; <label>:319:                                    ; preds = %302
  %320 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  %321 = load i32, i32* %8, align 4
  %322 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %320, i32 %321
  %323 = load i32, i32* %9, align 4
  %324 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %322, i32 0, i32 %323
  %325 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %326 = call arm_aapcscc i32 @scale_bitcount_lsf(%struct.III_scalefac_t* %324, %struct.gr_info* %325)
  br label %327

; <label>:327:                                    ; preds = %319, %311
  br label %328

; <label>:328:                                    ; preds = %327, %247, %243
  br label %329

; <label>:329:                                    ; preds = %328, %184, %172
  %330 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %331 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %330, i32 0, i32 45
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %403

; <label>:334:                                    ; preds = %329
  %335 = load i32, i32* %8, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %403

; <label>:337:                                    ; preds = %334
  %338 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %339 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %338, i32 0, i32 4
  %340 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %340, i32 0, i32 0
  %342 = load i32, i32* %9, align 4
  %343 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %341, i32 0, i32 %342
  %344 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 2
  br i1 %347, label %348, label %403

; <label>:348:                                    ; preds = %337
  %349 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %350 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %349, i32 0, i32 4
  %351 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %351, i32 0, i32 0
  %353 = load i32, i32* %9, align 4
  %354 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %352, i32 0, i32 %353
  %355 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 2
  br i1 %358, label %359, label %403

; <label>:359:                                    ; preds = %348
  %360 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %361 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %360, i32 0, i32 4
  %362 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %362, i32 0, i32 0
  %364 = load i32, i32* %9, align 4
  %365 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %363, i32 0, i32 %364
  %366 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %366, i32 0, i32 13
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %370 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %369, i32 0, i32 4
  %371 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %371, i32 0, i32 0
  %373 = load i32, i32* %9, align 4
  %374 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %372, i32 0, i32 %373
  %375 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %375, i32 0, i32 13
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %368, %377
  br i1 %378, label %379, label %403

; <label>:379:                                    ; preds = %359
  %380 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %381 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %380, i32 0, i32 4
  %382 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %382, i32 0, i32 0
  %384 = load i32, i32* %9, align 4
  %385 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %383, i32 0, i32 %384
  %386 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %386, i32 0, i32 12
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %390 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %389, i32 0, i32 4
  %391 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %391, i32 0, i32 0
  %393 = load i32, i32* %9, align 4
  %394 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %392, i32 0, i32 %393
  %395 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %395, i32 0, i32 12
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %388, %397
  br i1 %398, label %399, label %403

; <label>:399:                                    ; preds = %379
  %400 = load i32, i32* %9, align 4
  %401 = load %struct.III_side_info_t*, %struct.III_side_info_t** %11, align 4
  %402 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %12, align 4
  call arm_aapcscc void @scfsi_calc(i32 %400, %struct.III_side_info_t* %401, [2 x %struct.III_scalefac_t]* %402)
  br label %403

; <label>:403:                                    ; preds = %399, %379, %359, %348, %337, %334, %329
  %404 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %405 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %404, i32 0, i32 15
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %408 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = add i32 %409, %406
  store i32 %410, i32* %408, align 4
  ret void
}

declare arm_aapcscc i32 @scale_bitcount(%struct.III_scalefac_t*, %struct.gr_info*) #1

declare arm_aapcscc i32 @scale_bitcount_lsf(%struct.III_scalefac_t*, %struct.gr_info*) #1

; Function Attrs: nounwind
define internal arm_aapcscc void @scfsi_calc(i32, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.III_side_info_t*, align 4
  %6 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gr_info*, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %5, align 4
  store [2 x %struct.III_scalefac_t]* %2, [2 x %struct.III_scalefac_t]** %6, align 4
  %15 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %16 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %15, i32 0, i32 4
  %17 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %18, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %20, i32 0, i32 0
  store %struct.gr_info* %21, %struct.gr_info** %13, align 4
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %32, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %22
  %26 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %27 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %26, i32 0, i32 3
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %27, i32 0, i32 %28
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 %30
  store i32 0, i32* %31, align 4
  br label %32

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %22

; <label>:35:                                     ; preds = %22
  store i32 0, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %110, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %113

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i32 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

; <label>:43:                                     ; preds = %70, %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i32 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %73

; <label>:50:                                     ; preds = %43
  %51 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %52 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %51, i32 0
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %52, i32 0, i32 %53
  %55 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = getelementptr inbounds [22 x i32], [22 x i32]* %55, i32 0, i32 %56
  %58 = load i32, i32* %57, align 4
  %59 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %60 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %59, i32 1
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %60, i32 0, i32 %61
  %63 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %62, i32 0, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds [22 x i32], [22 x i32]* %63, i32 0, i32 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %58, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %50
  br label %73

; <label>:69:                                     ; preds = %50
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %43

; <label>:73:                                     ; preds = %68, %43
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i32 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %109

; <label>:80:                                     ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i32 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  br label %84

; <label>:84:                                     ; preds = %99, %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i32 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %102

; <label>:91:                                     ; preds = %84
  %92 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %93 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %92, i32 1
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %93, i32 0, i32 %94
  %96 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds [22 x i32], [22 x i32]* %96, i32 0, i32 %97
  store i32 -1, i32* %98, align 4
  br label %99

; <label>:99:                                     ; preds = %91
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %84

; <label>:102:                                    ; preds = %84
  %103 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %104 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %103, i32 0, i32 3
  %105 = load i32, i32* %4, align 4
  %106 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %104, i32 0, i32 %105
  %107 = load i32, i32* %7, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %106, i32 0, i32 %107
  store i32 1, i32* %108, align 4
  br label %109

; <label>:109:                                    ; preds = %102, %73
  br label %110

; <label>:110:                                    ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %36

; <label>:113:                                    ; preds = %36
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %114

; <label>:114:                                    ; preds = %151, %113
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 11
  br i1 %116, label %117, label %154

; <label>:117:                                    ; preds = %114
  %118 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %119 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %118, i32 1
  %120 = load i32, i32* %4, align 4
  %121 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %119, i32 0, i32 %120
  %122 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %121, i32 0, i32 0
  %123 = load i32, i32* %12, align 4
  %124 = getelementptr inbounds [22 x i32], [22 x i32]* %122, i32 0, i32 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %117
  br label %151

; <label>:128:                                    ; preds = %117
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %133 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %132, i32 1
  %134 = load i32, i32* %4, align 4
  %135 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %133, i32 0, i32 %134
  %136 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %135, i32 0, i32 0
  %137 = load i32, i32* %12, align 4
  %138 = getelementptr inbounds [22 x i32], [22 x i32]* %136, i32 0, i32 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %131, %139
  br i1 %140, label %141, label %150

; <label>:141:                                    ; preds = %128
  %142 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %143 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %142, i32 1
  %144 = load i32, i32* %4, align 4
  %145 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %143, i32 0, i32 %144
  %146 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %145, i32 0, i32 0
  %147 = load i32, i32* %12, align 4
  %148 = getelementptr inbounds [22 x i32], [22 x i32]* %146, i32 0, i32 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %8, align 4
  br label %150

; <label>:150:                                    ; preds = %141, %128
  br label %151

; <label>:151:                                    ; preds = %150, %127
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %114

; <label>:154:                                    ; preds = %114
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %155

; <label>:155:                                    ; preds = %192, %154
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %156, 21
  br i1 %157, label %158, label %195

; <label>:158:                                    ; preds = %155
  %159 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %160 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %159, i32 1
  %161 = load i32, i32* %4, align 4
  %162 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %160, i32 0, i32 %161
  %163 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %162, i32 0, i32 0
  %164 = load i32, i32* %12, align 4
  %165 = getelementptr inbounds [22 x i32], [22 x i32]* %163, i32 0, i32 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %158
  br label %192

; <label>:169:                                    ; preds = %158
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %174 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %173, i32 1
  %175 = load i32, i32* %4, align 4
  %176 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %174, i32 0, i32 %175
  %177 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %176, i32 0, i32 0
  %178 = load i32, i32* %12, align 4
  %179 = getelementptr inbounds [22 x i32], [22 x i32]* %177, i32 0, i32 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %172, %180
  br i1 %181, label %182, label %191

; <label>:182:                                    ; preds = %169
  %183 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %6, align 4
  %184 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %183, i32 1
  %185 = load i32, i32* %4, align 4
  %186 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %184, i32 0, i32 %185
  %187 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %186, i32 0, i32 0
  %188 = load i32, i32* %12, align 4
  %189 = getelementptr inbounds [22 x i32], [22 x i32]* %187, i32 0, i32 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %9, align 4
  br label %191

; <label>:191:                                    ; preds = %182, %169
  br label %192

; <label>:192:                                    ; preds = %191, %168
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %155

; <label>:195:                                    ; preds = %155
  store i32 0, i32* %7, align 4
  br label %196

; <label>:196:                                    ; preds = %237, %195
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 16
  br i1 %198, label %199, label %240

; <label>:199:                                    ; preds = %196
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %7, align 4
  %202 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen1_n, i32 0, i32 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %236

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %7, align 4
  %208 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen2_n, i32 0, i32 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %236

; <label>:211:                                    ; preds = %205
  %212 = load i32, i32* %7, align 4
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen1_tab, i32 0, i32 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %7, align 4
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen2_tab, i32 0, i32 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %216, %221
  store i32 %222, i32* %14, align 4
  %223 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %224 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %235

; <label>:228:                                    ; preds = %211
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %231 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %230, i32 0, i32 15
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %234 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 4
  br label %235

; <label>:235:                                    ; preds = %228, %211
  br label %236

; <label>:236:                                    ; preds = %235, %205, %199
  br label %237

; <label>:237:                                    ; preds = %236
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %196

; <label>:240:                                    ; preds = %196
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @ix_max(i32*, i32*) #0 {
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 4
  store i32* %1, i32** %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %29, %2
  %8 = load i32*, i32** %3, align 4
  %9 = load i32*, i32** %4, align 4
  %10 = icmp ult i32* %8, %9
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 4
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %3, align 4
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %11
  %21 = load i32*, i32** %3, align 4
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %3, align 4
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %5, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %20
  br label %7

; <label>:30:                                     ; preds = %7
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bit_short_noESC(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store i32* %1, i32** %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %14
  %16 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 4
  store i8* %17, i8** %9, align 4
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %10, align 4
  br label %18

; <label>:18:                                     ; preds = %62, %3
  store i32 0, i32* %11, align 4
  br label %19

; <label>:19:                                     ; preds = %56, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %59

; <label>:22:                                     ; preds = %19
  %23 = load i32*, i32** %4, align 4
  %24 = getelementptr inbounds i32, i32* %23, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %4, align 4
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 4
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %34, 16
  store i32 %35, i32* %13, align 4
  br label %36

; <label>:36:                                     ; preds = %31, %22
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

; <label>:45:                                     ; preds = %39, %36
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %10, align 4
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 4
  store i32 %46, i32* %47, align 4
  %49 = load i8*, i8** %9, align 4
  %50 = load i32, i32* %13, align 4
  %51 = getelementptr inbounds i8, i8* %49, i32 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

; <label>:56:                                     ; preds = %45
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %19

; <label>:59:                                     ; preds = %19
  %60 = load i32*, i32** %4, align 4
  %61 = getelementptr inbounds i32, i32* %60, i32 3
  store i32* %61, i32** %4, align 4
  br label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32*, i32** %4, align 4
  %64 = load i32*, i32** %5, align 4
  %65 = icmp ult i32* %63, %64
  br i1 %65, label %18, label %66

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* @cb_esc_sign, align 4
  %68 = load i32*, i32** %10, align 4
  store i32* %68, i32** @cb_esc_end, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  ret i32 %71
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bit_noESC2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @cb_esc_sign, align 4
  store i32 %5, i32* %3, align 4
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %4, align 4
  br label %6

; <label>:6:                                      ; preds = %19, %1
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %7
  %9 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 4
  %11 = load i32*, i32** %4, align 4
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 4
  %13 = load i32, i32* %11, align 4
  %14 = getelementptr inbounds i8, i8* %10, i32 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %6
  %20 = load i32*, i32** %4, align 4
  %21 = load i32*, i32** @cb_esc_end, align 4
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %6, label %23

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bit_short_ESC(i32*, i32*, i32, i32, i32*) #0 {
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 4
  store i32* %1, i32** %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %23
  %25 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %27

; <label>:27:                                     ; preds = %95, %5
  store i32 0, i32* %16, align 4
  br label %28

; <label>:28:                                     ; preds = %89, %27
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %92

; <label>:31:                                     ; preds = %28
  %32 = load i32*, i32** %6, align 4
  %33 = getelementptr inbounds i32, i32* %32, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %6, align 4
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 4
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp sgt i32 %43, 14
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %40
  store i32 15, i32* %18, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %52

; <label>:52:                                     ; preds = %45, %40
  %53 = load i32, i32* %18, align 4
  %54 = mul nsw i32 %53, 16
  store i32 %54, i32* %18, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %31
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp sgt i32 %61, 14
  br i1 %62, label %63, label %70

; <label>:63:                                     ; preds = %58
  store i32 15, i32* %17, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %15, align 4
  br label %70

; <label>:70:                                     ; preds = %63, %58
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %18, align 4
  br label %74

; <label>:74:                                     ; preds = %70, %55
  %75 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 16, i32 3), align 4
  %76 = load i32, i32* %18, align 4
  %77 = getelementptr inbounds i8, i8* %75, i32 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 24, i32 3), align 4
  %83 = load i32, i32* %18, align 4
  %84 = getelementptr inbounds i8, i8* %82, i32 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %89

; <label>:89:                                     ; preds = %74
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %28

; <label>:92:                                     ; preds = %28
  %93 = load i32*, i32** %6, align 4
  %94 = getelementptr inbounds i32, i32* %93, i32 3
  store i32* %94, i32** %6, align 4
  br label %95

; <label>:95:                                     ; preds = %92
  %96 = load i32*, i32** %6, align 4
  %97 = load i32*, i32** %7, align 4
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %27, label %99

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %99
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  br label %106

; <label>:106:                                    ; preds = %103, %99
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32*, i32** %10, align 4
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bit_noESC(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store i32* %1, i32** %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %13
  %15 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 4
  store i8* %16, i8** %9, align 4
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %10, align 4
  br label %17

; <label>:17:                                     ; preds = %51, %3
  %18 = load i32*, i32** %4, align 4
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 4
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %4, align 4
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 4
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %29, 16
  store i32 %30, i32* %11, align 4
  br label %31

; <label>:31:                                     ; preds = %26, %17
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %34, %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %10, align 4
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %10, align 4
  store i32 %41, i32* %42, align 4
  %44 = load i8*, i8** %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = getelementptr inbounds i8, i8* %44, i32 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

; <label>:51:                                     ; preds = %40
  %52 = load i32*, i32** %4, align 4
  %53 = load i32*, i32** %5, align 4
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %17, label %55

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* @cb_esc_sign, align 4
  %57 = load i32*, i32** %10, align 4
  store i32* %57, i32** @cb_esc_end, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  ret i32 %60
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @count_bit_ESC(i32*, i32*, i32, i32, i32*) #0 {
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 4
  store i32* %1, i32** %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %22
  %24 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %26

; <label>:26:                                     ; preds = %73, %5
  %27 = load i32*, i32** %6, align 4
  %28 = load i32*, i32** %7, align 4
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %88

; <label>:30:                                     ; preds = %26
  %31 = load i32*, i32** %6, align 4
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 4
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %6, align 4
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 4
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 14
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %39
  store i32 15, i32* %16, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %51

; <label>:51:                                     ; preds = %44, %39
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 16
  store i32 %53, i32* %16, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %30
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sgt i32 %60, 14
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %57
  store i32 15, i32* %17, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  br label %73

; <label>:73:                                     ; preds = %69, %54
  %74 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 16, i32 3), align 4
  %75 = load i32, i32* %16, align 4
  %76 = getelementptr inbounds i8, i8* %74, i32 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 24, i32 3), align 4
  %82 = load i32, i32* %16, align 4
  %83 = getelementptr inbounds i8, i8* %81, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %26

; <label>:88:                                     ; preds = %26
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %8, align 4
  br label %95

; <label>:95:                                     ; preds = %92, %88
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %10, align 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
