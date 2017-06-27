; ModuleID = 'bmhsrch.c'
source_filename = "bmhsrch.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@pat = internal global i8* null, align 4
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 4
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc void @bmh_init(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %5 = load i8*, i8** %2, align 4
  store i8* %5, i8** @pat, align 4
  %6 = load i8*, i8** %2, align 4
  %7 = call arm_aapcscc i32 @strlen(i8* %6)
  store i32 %7, i32* @patlen, align 4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %15, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 255
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* @patlen, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %13
  store i32 %12, i32* %14, align 4
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  store i32 0, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %34, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @patlen, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* @patlen, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i8*, i8** @pat, align 4
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds i8, i8* %28, i32 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %32
  store i32 %27, i32* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %19

; <label>:37:                                     ; preds = %19
  %38 = load i8*, i8** @pat, align 4
  %39 = load i32, i32* @patlen, align 4
  %40 = sub nsw i32 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i32 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %44
  store i32 32767, i32* %45, align 4
  %46 = load i32, i32* @patlen, align 4
  store i32 %46, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %47

; <label>:47:                                     ; preds = %66, %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @patlen, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %69

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** @pat, align 4
  %54 = load i32, i32* %3, align 4
  %55 = getelementptr inbounds i8, i8* %53, i32 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* @patlen, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* @skip2, align 4
  br label %65

; <label>:65:                                     ; preds = %60, %52
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %47

; <label>:69:                                     ; preds = %47
  ret void
}

declare arm_aapcscc i32 @strlen(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @bmh_search(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @patlen, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 4
  br label %80

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %79, %16
  br label %21

; <label>:21:                                     ; preds = %32, %20
  %22 = load i8*, i8** %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21
  br label %21

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 32767, %35
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %33
  store i8* null, i8** %3, align 4
  br label %80

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 32767
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @patlen, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i8*, i8** %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = getelementptr inbounds i8, i8* %44, i32 %47
  store i8* %48, i8** %8, align 4
  br label %49

; <label>:49:                                     ; preds = %67, %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %65

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds i8, i8* %54, i32 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** @pat, align 4
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds i8, i8* %59, i32 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %58, %63
  br label %65

; <label>:65:                                     ; preds = %53, %49
  %66 = phi i1 [ false, %49 ], [ %64, %53 ]
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %65
  br label %49

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %68
  %72 = load i8*, i8** %8, align 4
  store i8* %72, i8** %3, align 4
  br label %80

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* @skip2, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %73
  store i8* null, i8** %3, align 4
  br label %80

; <label>:79:                                     ; preds = %73
  br label %20

; <label>:80:                                     ; preds = %78, %71, %38, %15
  %81 = load i8*, i8** %3, align 4
  ret i8* %81
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
