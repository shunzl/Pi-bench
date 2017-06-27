; ModuleID = 'bmhisrch.c'
source_filename = "bmhisrch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

@patlen = internal global i32 0, align 4
@pat = internal global i8* null, align 8
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind
define void @bmhi_init(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @patlen, align 4
  %8 = load i8*, i8** @pat, align 8
  %9 = load i32, i32* @patlen, align 4
  %10 = sext i32 %9 to i64
  %11 = call i8* @realloc(i8* %8, i64 %10)
  store i8* %11, i8** @pat, align 8
  %12 = load i8*, i8** @pat, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %1
  call void @exit(i32 1) #4
  unreachable

; <label>:15:                                     ; preds = %1
  %16 = call i32 @atexit(void ()* @bhmi_cleanup)
  br label %17

; <label>:17:                                     ; preds = %15
  store i32 0, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %35, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @patlen, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 @toupper(i32 %28) #5
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** @pat, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %18

; <label>:38:                                     ; preds = %18
  store i32 0, i32* %3, align 4
  br label %39

; <label>:39:                                     ; preds = %47, %38
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 %40, 255
  br i1 %41, label %42, label %50

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* @patlen, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %39

; <label>:50:                                     ; preds = %39
  store i32 0, i32* %3, align 4
  br label %51

; <label>:51:                                     ; preds = %81, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @patlen, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %84

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* @patlen, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i8*, i8** @pat, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %66
  store i32 %60, i32* %67, align 4
  %68 = load i32, i32* @patlen, align 4
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i8*, i8** @pat, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 @tolower(i32 %77) #5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %79
  store i32 %71, i32* %80, align 4
  br label %81

; <label>:81:                                     ; preds = %56
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %51

; <label>:84:                                     ; preds = %51
  %85 = load i8*, i8** @pat, align 8
  %86 = load i32, i32* @patlen, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %93
  store i32 32767, i32* %94, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @tolower(i32 %95) #5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %97
  store i32 32767, i32* %98, align 4
  %99 = load i32, i32* @patlen, align 4
  store i32 %99, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %100

; <label>:100:                                    ; preds = %120, %84
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @patlen, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %123

; <label>:105:                                    ; preds = %100
  %106 = load i8*, i8** @pat, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

; <label>:114:                                    ; preds = %105
  %115 = load i32, i32* @patlen, align 4
  %116 = load i32, i32* %3, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* @skip2, align 4
  br label %119

; <label>:119:                                    ; preds = %114, %105
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %100

; <label>:123:                                    ; preds = %100
  ret void
}

declare i64 @strlen(i8*) #1

declare i8* @realloc(i8*, i64) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @atexit(void ()*) #1

; Function Attrs: nounwind
define void @bhmi_cleanup() #0 {
  %1 = load i8*, i8** @pat, align 8
  call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: nounwind
define i8* @bmhi_search(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
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
  store i8* null, i8** %3, align 8
  br label %86

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %85, %16
  br label %22

; <label>:22:                                     ; preds = %34, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %22
  br label %22

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 32767, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  store i8* null, i8** %3, align 8
  br label %86

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 32767
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @patlen, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8* %51, i8** %8, align 8
  br label %52

; <label>:52:                                     ; preds = %73, %41
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %71

; <label>:56:                                     ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @toupper(i32 %62) #5
  %64 = load i8*, i8** @pat, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %63, %69
  br label %71

; <label>:71:                                     ; preds = %56, %52
  %72 = phi i1 [ false, %52 ], [ %70, %56 ]
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %71
  br label %52

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %3, align 8
  br label %86

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* @skip2, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %79
  store i8* null, i8** %3, align 8
  br label %86

; <label>:85:                                     ; preds = %79
  br label %21

; <label>:86:                                     ; preds = %84, %77, %40, %15
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare void @free(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
