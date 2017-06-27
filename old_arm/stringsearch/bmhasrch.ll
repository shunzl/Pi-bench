; ModuleID = 'bmhasrch.c'
source_filename = "bmhasrch.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@lowervec = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@pat = internal global i8* null, align 4
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 4
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc void @bmha_init(i8*) #0 {
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

; <label>:8:                                      ; preds = %60, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 255
  br i1 %10, label %11, label %63

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* @patlen, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %13
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @patlen, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %38, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i8
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** @pat, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %20
  br label %41

; <label>:37:                                     ; preds = %20
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  br label %17

; <label>:41:                                     ; preds = %36, %17
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* @patlen, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %49
  store i32 %48, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %44, %41
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @patlen, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %57
  store i32 32767, i32* %58, align 4
  br label %59

; <label>:59:                                     ; preds = %56, %51
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %8

; <label>:63:                                     ; preds = %8
  %64 = load i32, i32* @patlen, align 4
  store i32 %64, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %65

; <label>:65:                                     ; preds = %95, %63
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @patlen, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %98

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** @pat, align 4
  %72 = load i32, i32* %3, align 4
  %73 = getelementptr inbounds i8, i8* %71, i32 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8*, i8** @pat, align 4
  %80 = load i32, i32* @patlen, align 4
  %81 = sub nsw i32 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i32 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %78, %87
  br i1 %88, label %89, label %94

; <label>:89:                                     ; preds = %70
  %90 = load i32, i32* @patlen, align 4
  %91 = load i32, i32* %3, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* @skip2, align 4
  br label %94

; <label>:94:                                     ; preds = %89, %70
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %65

; <label>:98:                                     ; preds = %65
  ret void
}

declare arm_aapcscc i32 @strlen(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @bmha_search(i8*, i32) #0 {
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
  br label %86

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %85, %16
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
  br label %86

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

; <label>:49:                                     ; preds = %73, %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %71

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds i8, i8* %54, i32 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** @pat, align 4
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds i8, i8* %62, i32 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %61, %69
  br label %71

; <label>:71:                                     ; preds = %53, %49
  %72 = phi i1 [ false, %49 ], [ %70, %53 ]
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %71
  br label %49

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** %8, align 4
  store i8* %78, i8** %3, align 4
  br label %86

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* @skip2, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %79
  store i8* null, i8** %3, align 4
  br label %86

; <label>:85:                                     ; preds = %79
  br label %20

; <label>:86:                                     ; preds = %84, %77, %38, %15
  %87 = load i8*, i8** %3, align 4
  ret i8* %87
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
