; ModuleID = 'bmhisrch.c'
source_filename = "bmhisrch.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@patlen = internal global i32 0, align 4
@pat = internal global i8* null, align 4
@skip = internal global [256 x i32] zeroinitializer, align 4
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc void @bmhi_init(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %5 = load i8*, i8** %2, align 4
  %6 = call arm_aapcscc i32 @strlen(i8* %5)
  store i32 %6, i32* @patlen, align 4
  %7 = load i8*, i8** @pat, align 4
  %8 = load i32, i32* @patlen, align 4
  %9 = call arm_aapcscc i8* @realloc(i8* %7, i32 %8)
  store i8* %9, i8** @pat, align 4
  %10 = load i8*, i8** @pat, align 4
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %1
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = call arm_aapcscc i32 @atexit(void ()* @bhmi_cleanup)
  br label %15

; <label>:15:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %31, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @patlen, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds i8, i8* %21, i32 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = call arm_aapcscc i32 @toupper(i32 %25) #5
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** @pat, align 4
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds i8, i8* %28, i32 %29
  store i8 %27, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %16

; <label>:34:                                     ; preds = %16
  store i32 0, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %42, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 255
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @patlen, align 4
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %40
  store i32 %39, i32* %41, align 4
  br label %42

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %35

; <label>:45:                                     ; preds = %35
  store i32 0, i32* %3, align 4
  br label %46

; <label>:46:                                     ; preds = %73, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @patlen, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %76

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* @patlen, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i8*, i8** @pat, align 4
  %57 = load i32, i32* %3, align 4
  %58 = getelementptr inbounds i8, i8* %56, i32 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %60
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* @patlen, align 4
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i8*, i8** @pat, align 4
  %67 = load i32, i32* %3, align 4
  %68 = getelementptr inbounds i8, i8* %66, i32 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = call arm_aapcscc i32 @tolower(i32 %70) #5
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %71
  store i32 %65, i32* %72, align 4
  br label %73

; <label>:73:                                     ; preds = %51
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %46

; <label>:76:                                     ; preds = %46
  %77 = load i8*, i8** @pat, align 4
  %78 = load i32, i32* @patlen, align 4
  %79 = sub nsw i32 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i32 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %83
  store i32 32767, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call arm_aapcscc i32 @tolower(i32 %85) #5
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %86
  store i32 32767, i32* %87, align 4
  %88 = load i32, i32* @patlen, align 4
  store i32 %88, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %89

; <label>:89:                                     ; preds = %108, %76
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @patlen, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %111

; <label>:94:                                     ; preds = %89
  %95 = load i8*, i8** @pat, align 4
  %96 = load i32, i32* %3, align 4
  %97 = getelementptr inbounds i8, i8* %95, i32 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

; <label>:102:                                    ; preds = %94
  %103 = load i32, i32* @patlen, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* @skip2, align 4
  br label %107

; <label>:107:                                    ; preds = %102, %94
  br label %108

; <label>:108:                                    ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %89

; <label>:111:                                    ; preds = %89
  ret void
}

declare arm_aapcscc i32 @strlen(i8*) #1

declare arm_aapcscc i8* @realloc(i8*, i32) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @atexit(void ()*) #1

; Function Attrs: nounwind
define arm_aapcscc void @bhmi_cleanup() #0 {
  %1 = load i8*, i8** @pat, align 4
  call arm_aapcscc void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind readonly
declare arm_aapcscc i32 @toupper(i32) #3

; Function Attrs: nounwind readonly
declare arm_aapcscc i32 @tolower(i32) #3

; Function Attrs: nounwind
define arm_aapcscc i8* @bmhi_search(i8*, i32) #0 {
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
  br label %81

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %80, %16
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
  br label %81

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

; <label>:49:                                     ; preds = %68, %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %66

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds i8, i8* %54, i32 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = call arm_aapcscc i32 @toupper(i32 %58) #5
  %60 = load i8*, i8** @pat, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds i8, i8* %60, i32 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %59, %64
  br label %66

; <label>:66:                                     ; preds = %53, %49
  %67 = phi i1 [ false, %49 ], [ %65, %53 ]
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %66
  br label %49

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %8, align 4
  store i8* %73, i8** %3, align 4
  br label %81

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* @skip2, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %74
  store i8* null, i8** %3, align 4
  br label %81

; <label>:80:                                     ; preds = %74
  br label %20

; <label>:81:                                     ; preds = %79, %72, %38, %15
  %82 = load i8*, i8** %3, align 4
  ret i8* %82
}

declare arm_aapcscc void @free(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
