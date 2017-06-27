; ModuleID = 'ieeefloat.c'
source_filename = "ieeefloat.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc double @ConvertFromIeeeSingle(i8*) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %8 = load i8*, i8** %3, align 4
  %9 = getelementptr inbounds i8, i8* %8, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 255
  %13 = shl i32 %12, 24
  %14 = load i8*, i8** %3, align 4
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 16
  %20 = or i32 %13, %19
  %21 = load i8*, i8** %3, align 4
  %22 = getelementptr inbounds i8, i8* %21, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 8
  %27 = or i32 %20, %26
  %28 = load i8*, i8** %3, align 4
  %29 = getelementptr inbounds i8, i8* %28, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 255
  %33 = or i32 %27, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 2147483647
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %1
  store double 0.000000e+00, double* %4, align 8
  br label %70

; <label>:38:                                     ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 2139095040
  %41 = ashr i32 %40, 23
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %38
  store double 0x7FF0000000000000, double* %4, align 8
  br label %69

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 8388607
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sitofp i32 %51 to double
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 127
  %55 = sub nsw i32 %54, 23
  %56 = add nsw i32 %55, 1
  %57 = call arm_aapcscc double @ldexp(double %52, i32 %56) #3
  store double %57, double* %4, align 8
  br label %68

; <label>:58:                                     ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 8388607
  %61 = add nsw i32 %60, 8388608
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sitofp i32 %62 to double
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 127
  %66 = sub nsw i32 %65, 23
  %67 = call arm_aapcscc double @ldexp(double %63, i32 %66) #3
  store double %67, double* %4, align 8
  br label %68

; <label>:68:                                     ; preds = %58, %48
  br label %69

; <label>:69:                                     ; preds = %68, %44
  br label %70

; <label>:70:                                     ; preds = %69, %37
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, -2147483648
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %70
  %75 = load double, double* %4, align 8
  %76 = fsub double -0.000000e+00, %75
  store double %76, double* %2, align 8
  br label %79

; <label>:77:                                     ; preds = %70
  %78 = load double, double* %4, align 8
  store double %78, double* %2, align 8
  br label %79

; <label>:79:                                     ; preds = %77, %74
  %80 = load double, double* %2, align 8
  ret double %80
}

; Function Attrs: nounwind
declare arm_aapcscc double @ldexp(double, i32) #1

; Function Attrs: nounwind
define arm_aapcscc void @ConvertToIeeeSingle(double, i8*) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 4
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %2
  store i32 -2147483648, i32* %5, align 4
  %14 = load double, double* %3, align 8
  %15 = fmul double %14, -1.000000e+00
  store double %15, double* %3, align 8
  br label %17

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = load double, double* %3, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %6, align 4
  br label %70

; <label>:21:                                     ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = call arm_aapcscc double @frexp(double %22, i32* %8) #3
  store double %23, double* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 129
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %21
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 2139095040
  store i32 %31, i32* %6, align 4
  br label %69

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, -125
  br i1 %34, label %35, label %53

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 149, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %6, align 4
  br label %52

; <label>:42:                                     ; preds = %35
  %43 = load double, double* %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 1, %44
  %46 = sitofp i32 %45 to double
  %47 = fmul double %43, %46
  %48 = fptosi double %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

; <label>:52:                                     ; preds = %42, %40
  br label %68

; <label>:53:                                     ; preds = %32
  %54 = load double, double* %7, align 8
  %55 = fmul double %54, 0x4170000000000000
  %56 = call arm_aapcscc double @floor(double %55) #4
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 8388608
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 127
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 %63, 23
  %65 = or i32 %60, %64
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %6, align 4
  br label %68

; <label>:68:                                     ; preds = %53, %52
  br label %69

; <label>:69:                                     ; preds = %68, %29
  br label %70

; <label>:70:                                     ; preds = %69, %20
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 24
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 4
  %75 = getelementptr inbounds i8, i8* %74, i32 0
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 16
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 4
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 8
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %4, align 4
  %85 = getelementptr inbounds i8, i8* %84, i32 2
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %6, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 4
  %89 = getelementptr inbounds i8, i8* %88, i32 3
  store i8 %87, i8* %89, align 1
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @frexp(double, i32*) #1

; Function Attrs: nounwind readnone
declare arm_aapcscc double @floor(double) #2

; Function Attrs: nounwind
define arm_aapcscc double @ConvertFromIeeeDouble(i8*) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %9 = load i8*, i8** %3, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 255
  %14 = shl i32 %13, 24
  %15 = load i8*, i8** %3, align 4
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 16
  %21 = or i32 %14, %20
  %22 = load i8*, i8** %3, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 8
  %28 = or i32 %21, %27
  %29 = load i8*, i8** %3, align 4
  %30 = getelementptr inbounds i8, i8* %29, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 255
  %34 = or i32 %28, %33
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %3, align 4
  %36 = getelementptr inbounds i8, i8* %35, i32 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 24
  %41 = load i8*, i8** %3, align 4
  %42 = getelementptr inbounds i8, i8* %41, i32 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 16
  %47 = or i32 %40, %46
  %48 = load i8*, i8** %3, align 4
  %49 = getelementptr inbounds i8, i8* %48, i32 6
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 8
  %54 = or i32 %47, %53
  %55 = load i8*, i8** %3, align 4
  %56 = getelementptr inbounds i8, i8* %55, i32 7
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 255
  %60 = or i32 %54, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %1
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  store double 0.000000e+00, double* %4, align 8
  br label %124

; <label>:67:                                     ; preds = %63, %1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 2146435072
  %70 = lshr i32 %69, 20
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 2047
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %67
  store double 0x7FF0000000000000, double* %4, align 8
  br label %123

; <label>:74:                                     ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 1048575
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sitofp i32 %80 to double
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1023
  %84 = sub nsw i32 %83, 20
  %85 = add nsw i32 %84, 1
  %86 = call arm_aapcscc double @ldexp(double %81, i32 %85) #3
  store double %86, double* %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, 2147483647
  %89 = sub i32 %88, 1
  %90 = sitofp i32 %89 to double
  %91 = fadd double %90, 0x41E0000000000000
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1023
  %94 = sub nsw i32 %93, 20
  %95 = add nsw i32 %94, 1
  %96 = sub nsw i32 %95, 32
  %97 = call arm_aapcscc double @ldexp(double %91, i32 %96) #3
  %98 = load double, double* %4, align 8
  %99 = fadd double %98, %97
  store double %99, double* %4, align 8
  br label %122

; <label>:100:                                    ; preds = %74
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 1048575
  %103 = add i32 %102, 1048576
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sitofp i32 %104 to double
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 1023
  %108 = sub nsw i32 %107, 20
  %109 = call arm_aapcscc double @ldexp(double %105, i32 %108) #3
  store double %109, double* %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sub i32 %110, 2147483647
  %112 = sub i32 %111, 1
  %113 = sitofp i32 %112 to double
  %114 = fadd double %113, 0x41E0000000000000
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1023
  %117 = sub nsw i32 %116, 20
  %118 = sub nsw i32 %117, 32
  %119 = call arm_aapcscc double @ldexp(double %114, i32 %118) #3
  %120 = load double, double* %4, align 8
  %121 = fadd double %120, %119
  store double %121, double* %4, align 8
  br label %122

; <label>:122:                                    ; preds = %100, %77
  br label %123

; <label>:123:                                    ; preds = %122, %73
  br label %124

; <label>:124:                                    ; preds = %123, %66
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, -2147483648
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

; <label>:128:                                    ; preds = %124
  %129 = load double, double* %4, align 8
  %130 = fsub double -0.000000e+00, %129
  store double %130, double* %2, align 8
  br label %133

; <label>:131:                                    ; preds = %124
  %132 = load double, double* %4, align 8
  store double %132, double* %2, align 8
  br label %133

; <label>:133:                                    ; preds = %131, %128
  %134 = load double, double* %2, align 8
  ret double %134
}

; Function Attrs: nounwind
define arm_aapcscc void @ConvertToIeeeDouble(double, i8*) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 4
  %13 = load double, double* %3, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %2
  store i32 -2147483648, i32* %5, align 4
  %16 = load double, double* %3, align 8
  %17 = fmul double %16, -1.000000e+00
  store double %17, double* %3, align 8
  br label %19

; <label>:18:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %15
  %20 = load double, double* %3, align 8
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %110

; <label>:23:                                     ; preds = %19
  %24 = load double, double* %3, align 8
  %25 = call arm_aapcscc double @frexp(double %24, i32* %10) #3
  store double %25, double* %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 1025
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %23
  %29 = load double, double* %8, align 8
  %30 = fcmp olt double %29, 1.000000e+00
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28, %23
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 2146435072
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %109

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, -1021
  br i1 %36, label %37, label %80

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 1042, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %59

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %42
  store i32 0, i32* %7, align 4
  br label %58

; <label>:49:                                     ; preds = %42
  %50 = load double, double* %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call arm_aapcscc double @ldexp(double %50, i32 %51) #3
  %53 = call arm_aapcscc double @floor(double %52) #4
  %54 = fsub double %53, 0x41E0000000000000
  %55 = fptosi double %54 to i32
  %56 = add nsw i32 %55, 2147483647
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

; <label>:58:                                     ; preds = %49, %48
  br label %79

; <label>:59:                                     ; preds = %37
  %60 = load double, double* %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call arm_aapcscc double @ldexp(double %60, i32 %61) #3
  store double %62, double* %9, align 8
  %63 = load double, double* %9, align 8
  %64 = call arm_aapcscc double @floor(double %63) #4
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load double, double* %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sitofp i32 %70 to double
  %72 = fsub double %69, %71
  %73 = call arm_aapcscc double @ldexp(double %72, i32 32) #3
  %74 = call arm_aapcscc double @floor(double %73) #4
  %75 = fsub double %74, 0x41E0000000000000
  %76 = fptosi double %75 to i32
  %77 = add nsw i32 %76, 2147483647
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

; <label>:79:                                     ; preds = %59, %58
  br label %108

; <label>:80:                                     ; preds = %34
  %81 = load double, double* %8, align 8
  %82 = call arm_aapcscc double @ldexp(double %81, i32 21) #3
  store double %82, double* %9, align 8
  %83 = load double, double* %9, align 8
  %84 = call arm_aapcscc double @floor(double %83) #4
  %85 = fptosi double %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1048576
  store i32 %87, i32* %11, align 4
  %88 = load double, double* %9, align 8
  %89 = fsub double %88, 1.048576e+06
  store double %89, double* %9, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1023
  %93 = sub nsw i32 %92, 1
  %94 = shl i32 %93, 20
  %95 = or i32 %90, %94
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %6, align 4
  %98 = load double, double* %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sitofp i32 %99 to double
  %101 = fsub double %98, %100
  %102 = call arm_aapcscc double @ldexp(double %101, i32 32) #3
  %103 = call arm_aapcscc double @floor(double %102) #4
  %104 = fsub double %103, 0x41E0000000000000
  %105 = fptosi double %104 to i32
  %106 = add nsw i32 %105, 2147483647
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

; <label>:108:                                    ; preds = %80, %79
  br label %109

; <label>:109:                                    ; preds = %108, %31
  br label %110

; <label>:110:                                    ; preds = %109, %22
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 24
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %4, align 4
  %115 = getelementptr inbounds i8, i8* %114, i32 0
  store i8 %113, i8* %115, align 1
  %116 = load i32, i32* %6, align 4
  %117 = ashr i32 %116, 16
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %4, align 4
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8 %118, i8* %120, align 1
  %121 = load i32, i32* %6, align 4
  %122 = ashr i32 %121, 8
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %4, align 4
  %125 = getelementptr inbounds i8, i8* %124, i32 2
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %6, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %4, align 4
  %129 = getelementptr inbounds i8, i8* %128, i32 3
  store i8 %127, i8* %129, align 1
  %130 = load i32, i32* %7, align 4
  %131 = ashr i32 %130, 24
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %4, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 4
  store i8 %132, i8* %134, align 1
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 16
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %4, align 4
  %139 = getelementptr inbounds i8, i8* %138, i32 5
  store i8 %137, i8* %139, align 1
  %140 = load i32, i32* %7, align 4
  %141 = ashr i32 %140, 8
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %4, align 4
  %144 = getelementptr inbounds i8, i8* %143, i32 6
  store i8 %142, i8* %144, align 1
  %145 = load i32, i32* %7, align 4
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %4, align 4
  %148 = getelementptr inbounds i8, i8* %147, i32 7
  store i8 %146, i8* %148, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc double @ConvertFromIeeeExtended(i8*) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %8 = load i8*, i8** %3, align 4
  %9 = getelementptr inbounds i8, i8* %8, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 127
  %13 = shl i32 %12, 8
  %14 = load i8*, i8** %3, align 4
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 255
  %19 = or i32 %13, %18
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %3, align 4
  %21 = getelementptr inbounds i8, i8* %20, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 24
  %26 = load i8*, i8** %3, align 4
  %27 = getelementptr inbounds i8, i8* %26, i32 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 255
  %31 = shl i32 %30, 16
  %32 = or i32 %25, %31
  %33 = load i8*, i8** %3, align 4
  %34 = getelementptr inbounds i8, i8* %33, i32 4
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 255
  %38 = shl i32 %37, 8
  %39 = or i32 %32, %38
  %40 = load i8*, i8** %3, align 4
  %41 = getelementptr inbounds i8, i8* %40, i32 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 255
  %45 = or i32 %39, %44
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** %3, align 4
  %47 = getelementptr inbounds i8, i8* %46, i32 6
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 255
  %51 = shl i32 %50, 24
  %52 = load i8*, i8** %3, align 4
  %53 = getelementptr inbounds i8, i8* %52, i32 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 16
  %58 = or i32 %51, %57
  %59 = load i8*, i8** %3, align 4
  %60 = getelementptr inbounds i8, i8* %59, i32 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 8
  %65 = or i32 %58, %64
  %66 = load i8*, i8** %3, align 4
  %67 = getelementptr inbounds i8, i8* %66, i32 9
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 255
  %71 = or i32 %65, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

; <label>:74:                                     ; preds = %1
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %77
  store double 0.000000e+00, double* %4, align 8
  br label %107

; <label>:81:                                     ; preds = %77, %74, %1
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 32767
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %81
  store double 0x7FF0000000000000, double* %4, align 8
  br label %106

; <label>:85:                                     ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, 16383
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub i32 %88, 2147483647
  %90 = sub i32 %89, 1
  %91 = sitofp i32 %90 to double
  %92 = fadd double %91, 0x41E0000000000000
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %93, 31
  store i32 %94, i32* %5, align 4
  %95 = call arm_aapcscc double @ldexp(double %92, i32 %94) #3
  store double %95, double* %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sub i32 %96, 2147483647
  %98 = sub i32 %97, 1
  %99 = sitofp i32 %98 to double
  %100 = fadd double %99, 0x41E0000000000000
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, 32
  store i32 %102, i32* %5, align 4
  %103 = call arm_aapcscc double @ldexp(double %100, i32 %102) #3
  %104 = load double, double* %4, align 8
  %105 = fadd double %104, %103
  store double %105, double* %4, align 8
  br label %106

; <label>:106:                                    ; preds = %85, %84
  br label %107

; <label>:107:                                    ; preds = %106, %80
  %108 = load i8*, i8** %3, align 4
  %109 = getelementptr inbounds i8, i8* %108, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %107
  %115 = load double, double* %4, align 8
  %116 = fsub double -0.000000e+00, %115
  store double %116, double* %2, align 8
  br label %119

; <label>:117:                                    ; preds = %107
  %118 = load double, double* %4, align 8
  store double %118, double* %2, align 8
  br label %119

; <label>:119:                                    ; preds = %117, %114
  %120 = load double, double* %2, align 8
  ret double %120
}

; Function Attrs: nounwind
define arm_aapcscc void @ConvertToIeeeExtended(double, i8*) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 4
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %2
  store i32 32768, i32* %5, align 4
  %14 = load double, double* %3, align 8
  %15 = fmul double %14, -1.000000e+00
  store double %15, double* %3, align 8
  br label %17

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = load double, double* %3, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %66

; <label>:21:                                     ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = call arm_aapcscc double @frexp(double %22, i32* %6) #3
  store double %23, double* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 16384
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %21
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 32767
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %65

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 16382
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %32
  %38 = load double, double* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call arm_aapcscc double @ldexp(double %38, i32 %39) #3
  store double %40, double* %7, align 8
  store i32 0, i32* %6, align 4
  br label %41

; <label>:41:                                     ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load double, double* %7, align 8
  %46 = call arm_aapcscc double @ldexp(double %45, i32 32) #3
  store double %46, double* %7, align 8
  %47 = load double, double* %7, align 8
  %48 = call arm_aapcscc double @floor(double %47) #4
  store double %48, double* %8, align 8
  %49 = load double, double* %8, align 8
  %50 = fsub double %49, 0x41E0000000000000
  %51 = fptosi double %50 to i32
  %52 = add nsw i32 %51, 2147483647
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load double, double* %7, align 8
  %55 = load double, double* %8, align 8
  %56 = fsub double %54, %55
  %57 = call arm_aapcscc double @ldexp(double %56, i32 32) #3
  store double %57, double* %7, align 8
  %58 = load double, double* %7, align 8
  %59 = call arm_aapcscc double @floor(double %58) #4
  store double %59, double* %8, align 8
  %60 = load double, double* %8, align 8
  %61 = fsub double %60, 0x41E0000000000000
  %62 = fptosi double %61 to i32
  %63 = add nsw i32 %62, 2147483647
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %65

; <label>:65:                                     ; preds = %41, %29
  br label %66

; <label>:66:                                     ; preds = %65, %20
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 8
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 4
  %71 = getelementptr inbounds i8, i8* %70, i32 0
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %6, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 4
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %9, align 4
  %77 = lshr i32 %76, 24
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 4
  %80 = getelementptr inbounds i8, i8* %79, i32 2
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %9, align 4
  %82 = lshr i32 %81, 16
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %4, align 4
  %85 = getelementptr inbounds i8, i8* %84, i32 3
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 8
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %4, align 4
  %90 = getelementptr inbounds i8, i8* %89, i32 4
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* %9, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %4, align 4
  %94 = getelementptr inbounds i8, i8* %93, i32 5
  store i8 %92, i8* %94, align 1
  %95 = load i32, i32* %10, align 4
  %96 = lshr i32 %95, 24
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %4, align 4
  %99 = getelementptr inbounds i8, i8* %98, i32 6
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %10, align 4
  %101 = lshr i32 %100, 16
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %4, align 4
  %104 = getelementptr inbounds i8, i8* %103, i32 7
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %10, align 4
  %106 = lshr i32 %105, 8
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %4, align 4
  %109 = getelementptr inbounds i8, i8* %108, i32 8
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %10, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %4, align 4
  %113 = getelementptr inbounds i8, i8* %112, i32 9
  store i8 %111, i8* %113, align 1
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
