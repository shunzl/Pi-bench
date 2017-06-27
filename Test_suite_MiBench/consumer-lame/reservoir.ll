; ModuleID = 'reservoir.c'
source_filename = "reservoir.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }

@ResvSize = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"(l3_side->main_data_begin * 8) == ResvSize\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reservoir.c\00", align 1
@__func__.ResvFrameBegin = private unnamed_addr constant [15 x i8] c"ResvFrameBegin\00", align 1
@ResvMax = internal global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc i32 @ResvFrameBegin(%struct.lame_global_flags*, %struct.III_side_info_t*, i32, i32) #0 {
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca %struct.III_side_info_t*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 39
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  store i32 0, i32* @ResvSize, align 4
  br label %16

; <label>:16:                                     ; preds = %15, %4
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 43
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  store i32 4088, i32* %10, align 4
  br label %23

; <label>:22:                                     ; preds = %16
  store i32 2040, i32* %10, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %21
  %24 = load %struct.III_side_info_t*, %struct.III_side_info_t** %6, align 4
  %25 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load i32, i32* @ResvSize, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ResvFrameBegin, i32 0, i32 0))
  br label %31

; <label>:31:                                     ; preds = %30, %23
  %32 = phi i1 [ true, %23 ], [ false, %30 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 45
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load i32, i32* @ResvSize, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 7680
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %31
  store i32 0, i32* @ResvMax, align 4
  br label %47

; <label>:44:                                     ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 7680, %45
  store i32 %46, i32* @ResvMax, align 4
  br label %47

; <label>:47:                                     ; preds = %44, %43
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 17
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %47
  store i32 0, i32* @ResvMax, align 4
  br label %53

; <label>:53:                                     ; preds = %52, %47
  %54 = load i32, i32* @ResvMax, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* @ResvMax, align 4
  br label %59

; <label>:59:                                     ; preds = %57, %53
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc void @ResvMaxBits(i32, i32*, i32*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 4
  store i32* %2, i32** %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 4
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @ResvSize, align 4
  %13 = load i32, i32* @ResvMax, align 4
  %14 = mul nsw i32 %13, 9
  %15 = sdiv i32 %14, 10
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* @ResvSize, align 4
  %19 = load i32, i32* @ResvMax, align 4
  %20 = mul nsw i32 %19, 9
  %21 = sdiv i32 %20, 10
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %6, align 4
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %35

; <label>:27:                                     ; preds = %4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.520000e+01
  %31 = fptosi double %30 to i32
  %32 = load i32*, i32** %6, align 4
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

; <label>:35:                                     ; preds = %27, %17
  %36 = load i32, i32* @ResvSize, align 4
  %37 = load i32, i32* @ResvMax, align 4
  %38 = mul nsw i32 %37, 6
  %39 = sdiv i32 %38, 10
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* @ResvSize, align 4
  br label %47

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* @ResvMax, align 4
  %45 = mul nsw i32 %44, 6
  %46 = sdiv i32 %45, 10
  br label %47

; <label>:47:                                     ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  %49 = load i32*, i32** %7, align 4
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %7, align 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %7, align 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %47
  %58 = load i32*, i32** %7, align 4
  store i32 0, i32* %58, align 4
  br label %59

; <label>:59:                                     ; preds = %57, %47
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @ResvAdjust(%struct.lame_global_flags*, %struct.gr_info*, %struct.III_side_info_t*, i32) #0 {
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca %struct.gr_info*, align 4
  %7 = alloca %struct.III_side_info_t*, align 4
  %8 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store %struct.gr_info* %1, %struct.gr_info** %6, align 4
  store %struct.III_side_info_t* %2, %struct.III_side_info_t** %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 46
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %9, %12
  %14 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %15 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  %18 = load i32, i32* @ResvSize, align 4
  %19 = add i32 %18, %17
  store i32 %19, i32* @ResvSize, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @ResvFrameEnd(%struct.lame_global_flags*, %struct.III_side_info_t*, i32) #0 {
  %4 = alloca %struct.lame_global_flags*, align 4
  %5 = alloca %struct.III_side_info_t*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %4, align 4
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 46
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* @ResvSize, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @ResvSize, align 4
  br label %20

; <label>:20:                                     ; preds = %17, %13, %3
  %21 = load i32, i32* @ResvSize, align 4
  %22 = load i32, i32* @ResvMax, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ResvSize, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* @ResvSize, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ResvSize, align 4
  %33 = srem i32 %32, 8
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ResvSize, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* @ResvSize, align 4
  br label %42

; <label>:42:                                     ; preds = %35, %27
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 4
  %45 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
