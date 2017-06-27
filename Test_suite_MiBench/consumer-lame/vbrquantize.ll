; ModuleID = 'vbrquantize.c'
source_filename = "vbrquantize.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external global [8208 x double], align 8
@.str = private unnamed_addr constant [13 x i8] c"sf_ok!=10000\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"vbrquantize.c\00", align 1
@__func__.find_scalefac = private unnamed_addr constant [14 x i8] c"find_scalefac\00", align 1
@pretab = external global [21 x i32], align 4
@masking_lower = external global float, align 4
@convert_mdct = external global i32, align 4
@scalefac_band = external global %struct.scalefac_struct, align 4

; Function Attrs: nounwind
define arm_aapcscc double @calc_sfb_ave_noise(double*, double*, i32, i32, double) #0 {
  %6 = alloca double, align 8
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double* %0, double** %7, align 4
  store double* %1, double** %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store double 0.000000e+00, double* %13, align 8
  %18 = load double, double* %11, align 8
  %19 = call arm_aapcscc double @pow(double %18, double 7.500000e-01) #6
  store double %19, double* %14, align 8
  store i32 0, i32* %12, align 4
  br label %20

; <label>:20:                                     ; preds = %79, %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %83

; <label>:26:                                     ; preds = %20
  %27 = load double*, double** %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds double, double* %27, i32 %28
  %30 = load double, double* %29, align 8
  %31 = load double, double* %14, align 8
  %32 = fdiv double %30, %31
  %33 = call arm_aapcscc double @floor(double %32) #7
  %34 = fptosi double %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp sgt i32 %35, 8206
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %26
  store double -1.000000e+00, double* %6, align 8
  br label %88

; <label>:38:                                     ; preds = %26
  %39 = load double*, double** %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds double, double* %39, i32 %40
  %42 = load double, double* %41, align 8
  %43 = call arm_aapcscc double @fabs(double %42) #7
  %44 = load i32, i32* %15, align 4
  %45 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %44
  %46 = load double, double* %45, align 8
  %47 = load double, double* %11, align 8
  %48 = fmul double %46, %47
  %49 = fsub double %43, %48
  store double %49, double* %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 8206
  br i1 %51, label %52, label %73

; <label>:52:                                     ; preds = %38
  %53 = load double*, double** %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds double, double* %53, i32 %54
  %56 = load double, double* %55, align 8
  %57 = call arm_aapcscc double @fabs(double %56) #7
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  %60 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %11, align 8
  %63 = fmul double %61, %62
  %64 = fsub double %57, %63
  store double %64, double* %17, align 8
  %65 = load double, double* %17, align 8
  %66 = call arm_aapcscc double @fabs(double %65) #7
  %67 = load double, double* %16, align 8
  %68 = call arm_aapcscc double @fabs(double %67) #7
  %69 = fcmp olt double %66, %68
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %52
  %71 = load double, double* %17, align 8
  store double %71, double* %16, align 8
  br label %72

; <label>:72:                                     ; preds = %70, %52
  br label %73

; <label>:73:                                     ; preds = %72, %38
  %74 = load double, double* %16, align 8
  %75 = load double, double* %16, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %13, align 8
  %78 = fadd double %77, %76
  store double %78, double* %13, align 8
  br label %79

; <label>:79:                                     ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %20

; <label>:83:                                     ; preds = %20
  %84 = load double, double* %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %84, %86
  store double %87, double* %6, align 8
  br label %88

; <label>:88:                                     ; preds = %83, %37
  %89 = load double, double* %6, align 8
  ret double %89
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare arm_aapcscc double @floor(double) #2

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #2

; Function Attrs: nounwind
define arm_aapcscc double @find_scalefac(double*, double*, i32, i32, double, i32) #0 {
  %7 = alloca double, align 8
  %8 = alloca double*, align 4
  %9 = alloca double*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store double* %0, double** %8, align 4
  store double* %1, double** %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  store double -2.050000e+01, double* %16, align 8
  store i32 -82, i32* %19, align 4
  store double 3.200000e+01, double* %18, align 8
  store i32 128, i32* %21, align 4
  store double 1.000000e+04, double* %17, align 8
  store i32 10000, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %23

; <label>:23:                                     ; preds = %80, %6
  %24 = load i32, i32* %22, align 4
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %83

; <label>:26:                                     ; preds = %23
  %27 = load double, double* %18, align 8
  %28 = fdiv double %27, 2.000000e+00
  store double %28, double* %18, align 8
  %29 = load i32, i32* %21, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %21, align 4
  %31 = load double, double* %16, align 8
  %32 = call arm_aapcscc double @pow(double 2.000000e+00, double %31) #6
  store double %32, double* %15, align 8
  %33 = load double*, double** %8, align 4
  %34 = load double*, double** %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load double, double* %15, align 8
  %38 = call arm_aapcscc double @calc_sfb_ave_noise(double* %33, double* %34, i32 %35, i32 %36, double %37)
  store double %38, double* %14, align 8
  %39 = load double, double* %14, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %26
  %42 = load double, double* %18, align 8
  %43 = load double, double* %16, align 8
  %44 = fadd double %43, %42
  store double %44, double* %16, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %19, align 4
  br label %79

; <label>:48:                                     ; preds = %26
  %49 = load double, double* %17, align 8
  %50 = fcmp oeq double %49, 1.000000e+04
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %48
  %52 = load double, double* %16, align 8
  store double %52, double* %17, align 8
  br label %53

; <label>:53:                                     ; preds = %51, %48
  %54 = load i32, i32* %20, align 4
  %55 = icmp eq i32 %54, 10000
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %20, align 4
  br label %58

; <label>:58:                                     ; preds = %56, %53
  %59 = load double, double* %14, align 8
  %60 = load double, double* %12, align 8
  %61 = fcmp ogt double %59, %60
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %58
  %63 = load double, double* %18, align 8
  %64 = load double, double* %16, align 8
  %65 = fsub double %64, %63
  store double %65, double* %16, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %19, align 4
  br label %78

; <label>:69:                                     ; preds = %58
  %70 = load double, double* %16, align 8
  store double %70, double* %17, align 8
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %20, align 4
  %72 = load double, double* %18, align 8
  %73 = load double, double* %16, align 8
  %74 = fadd double %73, %72
  store double %74, double* %16, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %78

; <label>:78:                                     ; preds = %69, %62
  br label %79

; <label>:79:                                     ; preds = %78, %41
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  br label %23

; <label>:83:                                     ; preds = %23
  %84 = load double, double* %17, align 8
  %85 = fcmp une double %84, 1.000000e+04
  br i1 %85, label %87, label %86

; <label>:86:                                     ; preds = %83
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.find_scalefac, i32 0, i32 0))
  br label %87

; <label>:87:                                     ; preds = %86, %83
  %88 = phi i1 [ true, %83 ], [ false, %86 ]
  %89 = zext i1 %88 to i32
  %90 = load double, double* %17, align 8
  %91 = fadd double %90, 7.500000e-01
  store double %91, double* %16, align 8
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 3
  store i32 %93, i32* %19, align 4
  br label %94

; <label>:94:                                     ; preds = %139, %87
  %95 = load double, double* %16, align 8
  %96 = load double, double* %17, align 8
  %97 = fadd double %96, 1.000000e-02
  %98 = fcmp ogt double %95, %97
  br i1 %98, label %99, label %144

; <label>:99:                                     ; preds = %94
  %100 = load double, double* %16, align 8
  %101 = load double, double* %17, align 8
  %102 = load double, double* %18, align 8
  %103 = fmul double 2.000000e+00, %102
  %104 = fadd double %101, %103
  %105 = fsub double %100, %104
  %106 = call arm_aapcscc double @fabs(double %105) #7
  %107 = fcmp olt double %106, 1.000000e-02
  br i1 %107, label %108, label %111

; <label>:108:                                    ; preds = %99
  %109 = load double, double* %16, align 8
  %110 = fsub double %109, 2.500000e-01
  store double %110, double* %16, align 8
  br label %111

; <label>:111:                                    ; preds = %108, %99
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 %113, %115
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %121

; <label>:118:                                    ; preds = %111
  %119 = load i32, i32* %19, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %19, align 4
  br label %121

; <label>:121:                                    ; preds = %118, %111
  %122 = load double, double* %16, align 8
  %123 = call arm_aapcscc double @pow(double 2.000000e+00, double %122) #6
  store double %123, double* %15, align 8
  %124 = load double*, double** %8, align 4
  %125 = load double*, double** %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load double, double* %15, align 8
  %129 = call arm_aapcscc double @calc_sfb_ave_noise(double* %124, double* %125, i32 %126, i32 %127, double %128)
  store double %129, double* %14, align 8
  %130 = load double, double* %14, align 8
  %131 = fcmp ogt double %130, 0.000000e+00
  br i1 %131, label %132, label %139

; <label>:132:                                    ; preds = %121
  %133 = load double, double* %14, align 8
  %134 = load double, double* %12, align 8
  %135 = fcmp ole double %133, %134
  br i1 %135, label %136, label %138

; <label>:136:                                    ; preds = %132
  %137 = load double, double* %16, align 8
  store double %137, double* %7, align 8
  br label %146

; <label>:138:                                    ; preds = %132
  br label %139

; <label>:139:                                    ; preds = %138, %121
  %140 = load double, double* %16, align 8
  %141 = fsub double %140, 2.500000e-01
  store double %141, double* %16, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %94

; <label>:144:                                    ; preds = %94
  %145 = load double, double* %17, align 8
  store double %145, double* %7, align 8
  br label %146

; <label>:146:                                    ; preds = %144, %136
  %147 = load double, double* %7, align 8
  ret double %147
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
define arm_aapcscc double @compute_scalefacs_short([3 x double]*, %struct.gr_info*, [3 x i32]*) #0 {
  %4 = alloca [3 x double]*, align 4
  %5 = alloca %struct.gr_info*, align 4
  %6 = alloca [3 x i32]*, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [12 x [3 x double]], align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store [3 x double]* %0, [3 x double]** %4, align 4
  store %struct.gr_info* %1, %struct.gr_info** %5, align 4
  store [3 x i32]* %2, [3 x i32]** %6, align 4
  %13 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %14 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 2, i32 1
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i32 0, i32 0
  %19 = bitcast [3 x double]* %18 to i8*
  %20 = load [3 x double]*, [3 x double]** %4, align 4
  %21 = bitcast [3 x double]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %21, i32 288, i32 8, i1 false)
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %10, align 4
  br label %22

; <label>:22:                                     ; preds = %81, %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %84

; <label>:25:                                     ; preds = %22
  store i32 0, i32* %11, align 4
  br label %26

; <label>:26:                                     ; preds = %77, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %80

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i32 0, i32 %30
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds [3 x double], [3 x double]* %31, i32 0, i32 %32
  %34 = load double, double* %33, align 8
  %35 = fsub double -0.000000e+00, %34
  %36 = load i32, i32* %12, align 4
  %37 = sitofp i32 %36 to double
  %38 = fmul double %35, %37
  %39 = fadd double %38, 7.500000e-01
  %40 = fadd double %39, 1.000000e-04
  %41 = call arm_aapcscc double @floor(double %40) #7
  %42 = fptosi double %41 to i32
  %43 = load [3 x i32]*, [3 x i32]** %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i32 %44
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i32 0, i32 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double 1.500000e+01, %52
  store double %53, double* %7, align 8
  br label %58

; <label>:54:                                     ; preds = %29
  %55 = load i32, i32* %12, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double 7.000000e+00, %56
  store double %57, double* %7, align 8
  br label %58

; <label>:58:                                     ; preds = %54, %50
  %59 = load double, double* %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i32 0, i32 %60
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds [3 x double], [3 x double]* %61, i32 0, i32 %62
  %64 = load double, double* %63, align 8
  %65 = fadd double %59, %64
  %66 = load double, double* %8, align 8
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %58
  %69 = load double, double* %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i32 0, i32 %70
  %72 = load i32, i32* %11, align 4
  %73 = getelementptr inbounds [3 x double], [3 x double]* %71, i32 0, i32 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %69, %74
  store double %75, double* %8, align 8
  br label %76

; <label>:76:                                     ; preds = %68, %58
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %26

; <label>:80:                                     ; preds = %26
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %22

; <label>:84:                                     ; preds = %22
  %85 = load double, double* %8, align 8
  ret double %85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
define arm_aapcscc double @compute_scalefacs_long(double*, %struct.gr_info*, i32*) #0 {
  %4 = alloca double*, align 4
  %5 = alloca %struct.gr_info*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32, align 4
  %8 = alloca [21 x double], align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store double* %0, double** %4, align 4
  store %struct.gr_info* %1, %struct.gr_info** %5, align 4
  store i32* %2, i32** %6, align 4
  %12 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %13 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2, i32 1
  store i32 %16, i32* %11, align 4
  %17 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 0
  %18 = bitcast double* %17 to i8*
  %19 = load double*, double** %4, align 4
  %20 = bitcast double* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %20, i32 168, i32 8, i1 false)
  %21 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %22 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %21, i32 0, i32 12
  store i32 0, i32* %22, align 4
  store i32 11, i32* %7, align 4
  br label %23

; <label>:23:                                     ; preds = %40, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 21
  br i1 %25, label %26, label %43

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 %27
  %29 = load double, double* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i32 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sdiv i32 %32, %33
  %35 = sitofp i32 %34 to double
  %36 = fadd double %29, %35
  %37 = fcmp ogt double %36, 0.000000e+00
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %26
  br label %43

; <label>:39:                                     ; preds = %26
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %23

; <label>:43:                                     ; preds = %38, %23
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 21
  br i1 %45, label %46, label %67

; <label>:46:                                     ; preds = %43
  %47 = load %struct.gr_info*, %struct.gr_info** %5, align 4
  %48 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %47, i32 0, i32 12
  store i32 1, i32* %48, align 4
  store i32 11, i32* %7, align 4
  br label %49

; <label>:49:                                     ; preds = %63, %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 21
  br i1 %51, label %52, label %66

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i32 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %55, %56
  %58 = sitofp i32 %57 to double
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 %59
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, %58
  store double %62, double* %60, align 8
  br label %63

; <label>:63:                                     ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %49

; <label>:66:                                     ; preds = %49
  br label %67

; <label>:67:                                     ; preds = %66, %43
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %7, align 4
  br label %68

; <label>:68:                                     ; preds = %111, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 21
  br i1 %70, label %71, label %114

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 %72
  %74 = load double, double* %73, align 8
  %75 = fsub double -0.000000e+00, %74
  %76 = load i32, i32* %11, align 4
  %77 = sitofp i32 %76 to double
  %78 = fmul double %75, %77
  %79 = fadd double %78, 7.500000e-01
  %80 = fadd double %79, 1.000000e-04
  %81 = call arm_aapcscc double @floor(double %80) #7
  %82 = fptosi double %81 to i32
  %83 = load i32*, i32** %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = getelementptr inbounds i32, i32* %83, i32 %84
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 11
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %71
  %89 = load i32, i32* %11, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double 1.500000e+01, %90
  store double %91, double* %9, align 8
  br label %96

; <label>:92:                                     ; preds = %71
  %93 = load i32, i32* %11, align 4
  %94 = sitofp i32 %93 to double
  %95 = fdiv double 7.000000e+00, %94
  store double %95, double* %9, align 8
  br label %96

; <label>:96:                                     ; preds = %92, %88
  %97 = load double, double* %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 %98
  %100 = load double, double* %99, align 8
  %101 = fadd double %97, %100
  %102 = load double, double* %10, align 8
  %103 = fcmp ogt double %101, %102
  br i1 %103, label %104, label %110

; <label>:104:                                    ; preds = %96
  %105 = load double, double* %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = getelementptr inbounds [21 x double], [21 x double]* %8, i32 0, i32 %106
  %108 = load double, double* %107, align 8
  %109 = fadd double %105, %108
  store double %109, double* %10, align 8
  br label %110

; <label>:110:                                    ; preds = %104, %96
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %68

; <label>:114:                                    ; preds = %68
  %115 = load double, double* %10, align 8
  ret double %115
}

; Function Attrs: nounwind
define arm_aapcscc void @VBR_iteration_loop_new(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #0 {
  %9 = alloca %struct.lame_global_flags*, align 4
  %10 = alloca [2 x double]*, align 4
  %11 = alloca double*, align 4
  %12 = alloca [2 x [576 x double]]*, align 4
  %13 = alloca [2 x %struct.III_psy_ratio]*, align 4
  %14 = alloca %struct.III_side_info_t*, align 4
  %15 = alloca [2 x [576 x i32]]*, align 4
  %16 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %17 = alloca [2 x [2 x %struct.III_psy_xmin]], align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.III_psy_xmin, align 8
  %29 = alloca double, align 8
  %30 = alloca [576 x double], align 8
  %31 = alloca %struct.gr_info*, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %9, align 4
  store [2 x double]* %1, [2 x double]** %10, align 4
  store double* %2, double** %11, align 4
  store [2 x [576 x double]]* %3, [2 x [576 x double]]** %12, align 4
  store [2 x %struct.III_psy_ratio]* %4, [2 x %struct.III_psy_ratio]** %13, align 4
  store %struct.III_side_info_t* %5, %struct.III_side_info_t** %14, align 4
  store [2 x [576 x i32]]* %6, [2 x [576 x i32]]** %15, align 4
  store [2 x %struct.III_scalefac_t]* %7, [2 x %struct.III_scalefac_t]** %16, align 4
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %35 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %36 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  call arm_aapcscc void @iteration_init(%struct.lame_global_flags* %34, %struct.III_side_info_t* %35, [2 x [576 x i32]]* %36)
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 22
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 -10, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %18, align 8
  %43 = load double, double* %18, align 8
  %44 = fdiv double %43, 1.000000e+01
  %45 = call arm_aapcscc double @pow(double 1.000000e+01, double %44) #6
  %46 = fptrunc double %45 to float
  store float %46, float* @masking_lower, align 4
  store float 1.000000e+00, float* @masking_lower, align 4
  store i32 0, i32* %26, align 4
  br label %47

; <label>:47:                                     ; preds = %386, %8
  %48 = load i32, i32* %26, align 4
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %50 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 45
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %389

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* @convert_mdct, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %53
  %57 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %58 = load i32, i32* %26, align 4
  %59 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %57, i32 %58
  %60 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %59, i32 0, i32 0
  %61 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %62 = load i32, i32* %26, align 4
  %63 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %61, i32 %62
  %64 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %63, i32 0, i32 0
  call arm_aapcscc void @ms_convert([576 x double]* %60, [576 x double]* %64)
  br label %65

; <label>:65:                                     ; preds = %56, %53
  store i32 0, i32* %25, align 4
  br label %66

; <label>:66:                                     ; preds = %382, %65
  %67 = load i32, i32* %25, align 4
  %68 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %69 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %68, i32 0, i32 46
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %385

; <label>:72:                                     ; preds = %66
  %73 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %74 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %73, i32 0, i32 4
  %75 = load i32, i32* %26, align 4
  %76 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %74, i32 0, i32 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i32, i32* %25, align 4
  %79 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %77, i32 0, i32 %78
  %80 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %79, i32 0, i32 0
  store %struct.gr_info* %80, %struct.gr_info** %31, align 4
  store i32 0, i32* %27, align 4
  %81 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %82 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %32, align 4
  store i32 0, i32* %24, align 4
  br label %86

; <label>:86:                                     ; preds = %106, %72
  %87 = load i32, i32* %24, align 4
  %88 = icmp slt i32 %87, 576
  br i1 %88, label %89, label %109

; <label>:89:                                     ; preds = %86
  %90 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %91 = load i32, i32* %26, align 4
  %92 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %90, i32 %91
  %93 = load i32, i32* %25, align 4
  %94 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %92, i32 0, i32 %93
  %95 = load i32, i32* %24, align 4
  %96 = getelementptr inbounds [576 x double], [576 x double]* %94, i32 0, i32 %95
  %97 = load double, double* %96, align 8
  %98 = call arm_aapcscc double @fabs(double %97) #7
  store double %98, double* %33, align 8
  %99 = load double, double* %33, align 8
  %100 = call arm_aapcscc double @sqrt(double %99) #6
  %101 = load double, double* %33, align 8
  %102 = fmul double %100, %101
  %103 = call arm_aapcscc double @sqrt(double %102) #6
  %104 = load i32, i32* %24, align 4
  %105 = getelementptr inbounds [576 x double], [576 x double]* %30, i32 0, i32 %104
  store double %103, double* %105, align 8
  br label %106

; <label>:106:                                    ; preds = %89
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %24, align 4
  br label %86

; <label>:109:                                    ; preds = %86
  %110 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %111 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %112 = load i32, i32* %26, align 4
  %113 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %111, i32 %112
  %114 = load i32, i32* %25, align 4
  %115 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %113, i32 0, i32 %114
  %116 = getelementptr inbounds [576 x double], [576 x double]* %115, i32 0, i32 0
  %117 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 4
  %118 = load i32, i32* %26, align 4
  %119 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %117, i32 %118
  %120 = load i32, i32* %25, align 4
  %121 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %119, i32 0, i32 %120
  %122 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %123 = load i32, i32* %26, align 4
  %124 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i32 0, i32 %123
  %125 = load i32, i32* %25, align 4
  %126 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %124, i32 0, i32 %125
  %127 = call arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags* %110, double* %116, %struct.III_psy_ratio* %121, %struct.gr_info* %122, %struct.III_psy_xmin* %126)
  store double 0.000000e+00, double* %29, align 8
  %128 = load i32, i32* %32, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %209

; <label>:130:                                    ; preds = %109
  store i32 0, i32* %23, align 4
  br label %131

; <label>:131:                                    ; preds = %205, %130
  %132 = load i32, i32* %23, align 4
  %133 = icmp slt i32 %132, 12
  br i1 %133, label %134, label %208

; <label>:134:                                    ; preds = %131
  store i32 0, i32* %24, align 4
  br label %135

; <label>:135:                                    ; preds = %201, %134
  %136 = load i32, i32* %24, align 4
  %137 = icmp slt i32 %136, 3
  br i1 %137, label %138, label %204

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %23, align 4
  %140 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, 1
  %144 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %20, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %22, align 4
  %149 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %150 = load i32, i32* %26, align 4
  %151 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %149, i32 %150
  %152 = load i32, i32* %25, align 4
  %153 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %151, i32 0, i32 %152
  %154 = load i32, i32* %20, align 4
  %155 = mul nsw i32 3, %154
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %155, %156
  %158 = getelementptr inbounds [576 x double], [576 x double]* %153, i32 0, i32 %157
  %159 = load i32, i32* %20, align 4
  %160 = mul nsw i32 3, %159
  %161 = load i32, i32* %24, align 4
  %162 = add nsw i32 %160, %161
  %163 = getelementptr inbounds [576 x double], [576 x double]* %30, i32 0, i32 %162
  %164 = load i32, i32* %23, align 4
  %165 = load float, float* @masking_lower, align 4
  %166 = fpext float %165 to double
  %167 = load i32, i32* %26, align 4
  %168 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i32 0, i32 %167
  %169 = load i32, i32* %25, align 4
  %170 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %168, i32 0, i32 %169
  %171 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %170, i32 0, i32 1
  %172 = load i32, i32* %23, align 4
  %173 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %171, i32 0, i32 %172
  %174 = load i32, i32* %24, align 4
  %175 = getelementptr inbounds [3 x double], [3 x double]* %173, i32 0, i32 %174
  %176 = load double, double* %175, align 8
  %177 = fmul double %166, %176
  %178 = load i32, i32* %22, align 4
  %179 = call arm_aapcscc double @find_scalefac(double* %158, double* %163, i32 3, i32 %164, double %177, i32 %178)
  %180 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %181 = load i32, i32* %23, align 4
  %182 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %180, i32 0, i32 %181
  %183 = load i32, i32* %24, align 4
  %184 = getelementptr inbounds [3 x double], [3 x double]* %182, i32 0, i32 %183
  store double %179, double* %184, align 8
  %185 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %186 = load i32, i32* %23, align 4
  %187 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %185, i32 0, i32 %186
  %188 = load i32, i32* %24, align 4
  %189 = getelementptr inbounds [3 x double], [3 x double]* %187, i32 0, i32 %188
  %190 = load double, double* %189, align 8
  %191 = load double, double* %29, align 8
  %192 = fcmp ogt double %190, %191
  br i1 %192, label %193, label %200

; <label>:193:                                    ; preds = %138
  %194 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %195 = load i32, i32* %23, align 4
  %196 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %194, i32 0, i32 %195
  %197 = load i32, i32* %24, align 4
  %198 = getelementptr inbounds [3 x double], [3 x double]* %196, i32 0, i32 %197
  %199 = load double, double* %198, align 8
  store double %199, double* %29, align 8
  br label %200

; <label>:200:                                    ; preds = %193, %138
  br label %201

; <label>:201:                                    ; preds = %200
  %202 = load i32, i32* %24, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %24, align 4
  br label %135

; <label>:204:                                    ; preds = %135
  br label %205

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %23, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %23, align 4
  br label %131

; <label>:208:                                    ; preds = %131
  br label %266

; <label>:209:                                    ; preds = %109
  store i32 0, i32* %23, align 4
  br label %210

; <label>:210:                                    ; preds = %262, %209
  %211 = load i32, i32* %23, align 4
  %212 = icmp slt i32 %211, 21
  br i1 %212, label %213, label %265

; <label>:213:                                    ; preds = %210
  %214 = load i32, i32* %23, align 4
  %215 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  %219 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %20, align 4
  %223 = sub nsw i32 %221, %222
  store i32 %223, i32* %22, align 4
  %224 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %225 = load i32, i32* %26, align 4
  %226 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %224, i32 %225
  %227 = load i32, i32* %25, align 4
  %228 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %226, i32 0, i32 %227
  %229 = load i32, i32* %20, align 4
  %230 = getelementptr inbounds [576 x double], [576 x double]* %228, i32 0, i32 %229
  %231 = load i32, i32* %20, align 4
  %232 = getelementptr inbounds [576 x double], [576 x double]* %30, i32 0, i32 %231
  %233 = load i32, i32* %23, align 4
  %234 = load float, float* @masking_lower, align 4
  %235 = fpext float %234 to double
  %236 = load i32, i32* %26, align 4
  %237 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i32 0, i32 %236
  %238 = load i32, i32* %25, align 4
  %239 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %237, i32 0, i32 %238
  %240 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %239, i32 0, i32 0
  %241 = load i32, i32* %23, align 4
  %242 = getelementptr inbounds [22 x double], [22 x double]* %240, i32 0, i32 %241
  %243 = load double, double* %242, align 8
  %244 = fmul double %235, %243
  %245 = load i32, i32* %22, align 4
  %246 = call arm_aapcscc double @find_scalefac(double* %230, double* %232, i32 1, i32 %233, double %244, i32 %245)
  %247 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %248 = load i32, i32* %23, align 4
  %249 = getelementptr inbounds [22 x double], [22 x double]* %247, i32 0, i32 %248
  store double %246, double* %249, align 8
  %250 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %251 = load i32, i32* %23, align 4
  %252 = getelementptr inbounds [22 x double], [22 x double]* %250, i32 0, i32 %251
  %253 = load double, double* %252, align 8
  %254 = load double, double* %29, align 8
  %255 = fcmp ogt double %253, %254
  br i1 %255, label %256, label %261

; <label>:256:                                    ; preds = %213
  %257 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %258 = load i32, i32* %23, align 4
  %259 = getelementptr inbounds [22 x double], [22 x double]* %257, i32 0, i32 %258
  %260 = load double, double* %259, align 8
  store double %260, double* %29, align 8
  br label %261

; <label>:261:                                    ; preds = %256, %213
  br label %262

; <label>:262:                                    ; preds = %261
  %263 = load i32, i32* %23, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %23, align 4
  br label %210

; <label>:265:                                    ; preds = %210
  br label %266

; <label>:266:                                    ; preds = %265, %208
  %267 = load double, double* %29, align 8
  %268 = fmul double 4.000000e+00, %267
  %269 = fadd double %268, 2.100000e+02
  %270 = fadd double %269, 5.000000e-01
  %271 = call arm_aapcscc double @floor(double %270) #7
  %272 = fptoui double %271 to i32
  %273 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %274 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %32, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %334

; <label>:277:                                    ; preds = %266
  store i32 0, i32* %23, align 4
  br label %278

; <label>:278:                                    ; preds = %298, %277
  %279 = load i32, i32* %23, align 4
  %280 = icmp slt i32 %279, 12
  br i1 %280, label %281, label %301

; <label>:281:                                    ; preds = %278
  store i32 0, i32* %24, align 4
  br label %282

; <label>:282:                                    ; preds = %294, %281
  %283 = load i32, i32* %24, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %297

; <label>:285:                                    ; preds = %282
  %286 = load double, double* %29, align 8
  %287 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %288 = load i32, i32* %23, align 4
  %289 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %287, i32 0, i32 %288
  %290 = load i32, i32* %24, align 4
  %291 = getelementptr inbounds [3 x double], [3 x double]* %289, i32 0, i32 %290
  %292 = load double, double* %291, align 8
  %293 = fsub double %292, %286
  store double %293, double* %291, align 8
  br label %294

; <label>:294:                                    ; preds = %285
  %295 = load i32, i32* %24, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %24, align 4
  br label %282

; <label>:297:                                    ; preds = %282
  br label %298

; <label>:298:                                    ; preds = %297
  %299 = load i32, i32* %23, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %23, align 4
  br label %278

; <label>:301:                                    ; preds = %278
  %302 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %303 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %302, i32 0, i32 13
  store i32 0, i32* %303, align 4
  %304 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %305 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %304, i32 0, i32 0
  %306 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %307 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %308 = load i32, i32* %26, align 4
  %309 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %307, i32 %308
  %310 = load i32, i32* %25, align 4
  %311 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %309, i32 0, i32 %310
  %312 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %311, i32 0, i32 1
  %313 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %312, i32 0, i32 0
  %314 = call arm_aapcscc double @compute_scalefacs_short([3 x double]* %305, %struct.gr_info* %306, [3 x i32]* %313)
  %315 = fcmp ogt double %314, 0.000000e+00
  br i1 %315, label %316, label %333

; <label>:316:                                    ; preds = %301
  %317 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %318 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %317, i32 0, i32 13
  store i32 1, i32* %318, align 4
  %319 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %320 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %319, i32 0, i32 0
  %321 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %322 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %323 = load i32, i32* %26, align 4
  %324 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %322, i32 %323
  %325 = load i32, i32* %25, align 4
  %326 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %324, i32 0, i32 %325
  %327 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %326, i32 0, i32 1
  %328 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %327, i32 0, i32 0
  %329 = call arm_aapcscc double @compute_scalefacs_short([3 x double]* %320, %struct.gr_info* %321, [3 x i32]* %328)
  %330 = fcmp ogt double %329, 0.000000e+00
  br i1 %330, label %331, label %332

; <label>:331:                                    ; preds = %316
  call arm_aapcscc void @exit(i32 32) #8
  unreachable

; <label>:332:                                    ; preds = %316
  br label %333

; <label>:333:                                    ; preds = %332, %301
  br label %381

; <label>:334:                                    ; preds = %266
  store i32 0, i32* %23, align 4
  br label %335

; <label>:335:                                    ; preds = %345, %334
  %336 = load i32, i32* %23, align 4
  %337 = icmp slt i32 %336, 21
  br i1 %337, label %338, label %348

; <label>:338:                                    ; preds = %335
  %339 = load double, double* %29, align 8
  %340 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %341 = load i32, i32* %23, align 4
  %342 = getelementptr inbounds [22 x double], [22 x double]* %340, i32 0, i32 %341
  %343 = load double, double* %342, align 8
  %344 = fsub double %343, %339
  store double %344, double* %342, align 8
  br label %345

; <label>:345:                                    ; preds = %338
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %23, align 4
  br label %335

; <label>:348:                                    ; preds = %335
  %349 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %350 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %349, i32 0, i32 13
  store i32 0, i32* %350, align 4
  %351 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %352 = getelementptr inbounds [22 x double], [22 x double]* %351, i32 0, i32 0
  %353 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %354 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %355 = load i32, i32* %26, align 4
  %356 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %354, i32 %355
  %357 = load i32, i32* %25, align 4
  %358 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %356, i32 0, i32 %357
  %359 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %358, i32 0, i32 0
  %360 = getelementptr inbounds [22 x i32], [22 x i32]* %359, i32 0, i32 0
  %361 = call arm_aapcscc double @compute_scalefacs_long(double* %352, %struct.gr_info* %353, i32* %360)
  %362 = fcmp ogt double %361, 0.000000e+00
  br i1 %362, label %363, label %380

; <label>:363:                                    ; preds = %348
  %364 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %365 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %364, i32 0, i32 13
  store i32 1, i32* %365, align 4
  %366 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %367 = getelementptr inbounds [22 x double], [22 x double]* %366, i32 0, i32 0
  %368 = load %struct.gr_info*, %struct.gr_info** %31, align 4
  %369 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %370 = load i32, i32* %26, align 4
  %371 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %369, i32 %370
  %372 = load i32, i32* %25, align 4
  %373 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %371, i32 0, i32 %372
  %374 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %373, i32 0, i32 0
  %375 = getelementptr inbounds [22 x i32], [22 x i32]* %374, i32 0, i32 0
  %376 = call arm_aapcscc double @compute_scalefacs_long(double* %367, %struct.gr_info* %368, i32* %375)
  %377 = fcmp ogt double %376, 0.000000e+00
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %363
  call arm_aapcscc void @exit(i32 32) #8
  unreachable

; <label>:379:                                    ; preds = %363
  br label %380

; <label>:380:                                    ; preds = %379, %348
  br label %381

; <label>:381:                                    ; preds = %380, %333
  br label %382

; <label>:382:                                    ; preds = %381
  %383 = load i32, i32* %25, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %25, align 4
  br label %66

; <label>:385:                                    ; preds = %66
  br label %386

; <label>:386:                                    ; preds = %385
  %387 = load i32, i32* %26, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %26, align 4
  br label %47

; <label>:389:                                    ; preds = %47
  ret void
}

declare arm_aapcscc void @iteration_init(%struct.lame_global_flags*, %struct.III_side_info_t*, [2 x [576 x i32]]*) #3

declare arm_aapcscc void @ms_convert([576 x double]*, [576 x double]*) #3

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #1

declare arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags*, double*, %struct.III_psy_ratio*, %struct.gr_info*, %struct.III_psy_xmin*) #3

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
