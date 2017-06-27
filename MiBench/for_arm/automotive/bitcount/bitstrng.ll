; ModuleID = 'bitstrng.c'
source_filename = "bitstrng.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc void @bitstring(i8*, i32, i32, i32) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* %7, align 4
  %17 = srem i32 %16, 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %18, i32 0, i32 1
  %20 = sub nsw i32 %15, %19
  %21 = sub nsw i32 %11, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

; <label>:22:                                     ; preds = %29, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %5, align 4
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 4
  store i8 32, i8* %27, align 1
  br label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %22

; <label>:32:                                     ; preds = %22
  br label %33

; <label>:33:                                     ; preds = %55, %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %56

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = add nsw i32 %41, 48
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 4
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %7, align 4
  %47 = srem i32 %46, 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %5, align 4
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 4
  store i8 32, i8* %53, align 1
  br label %55

; <label>:55:                                     ; preds = %52, %49, %37
  br label %33

; <label>:56:                                     ; preds = %33
  %57 = load i8*, i8** %5, align 4
  store i8 0, i8* %57, align 1
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
