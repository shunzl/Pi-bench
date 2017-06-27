; ModuleID = 'bitcnts.c'
source_filename = "bitcnts.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

@main.pBitCntFunc = internal global [7 x i32 (i32)*] [i32 (i32)* @bit_count, i32 (i32)* @bitcount, i32 (i32)* @ntbl_bitcnt, i32 (i32)* @ntbl_bitcount, i32 (i32)* @BW_btbl_bitcount, i32 (i32)* @AR_btbl_bitcount, i32 (i32)* @bit_shifter], align 4
@main.text = internal global [7 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)], align 4
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store float 0x7FF0000000000000, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %22 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #3
  unreachable

; <label>:23:                                     ; preds = %2
  %24 = load i8**, i8*** %5, align 4
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  %26 = load i8*, i8** %25, align 4
  %27 = call arm_aapcscc i32 @atoi(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = call arm_aapcscc i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %80, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %83

; <label>:32:                                     ; preds = %29
  %33 = call arm_aapcscc i32 @clock()
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %34 = call arm_aapcscc i32 @rand()
  store i32 %34, i32* %16, align 4
  br label %35

; <label>:35:                                     ; preds = %47, %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds [7 x i32 (i32)*], [7 x i32 (i32)*]* @main.pBitCntFunc, i32 0, i32 %40
  %42 = load i32 (i32)*, i32 (i32)** %41, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call arm_aapcscc i32 %42(i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %15, align 4
  br label %47

; <label>:47:                                     ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 13
  store i32 %51, i32* %16, align 4
  br label %35

; <label>:52:                                     ; preds = %35
  %53 = call arm_aapcscc i32 @clock()
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sitofp i32 %56 to float
  %58 = fdiv float %57, 1.000000e+06
  store float %58, float* %8, align 4
  %59 = load float, float* %8, align 4
  %60 = load float, float* %9, align 4
  %61 = fcmp olt float %59, %60
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %52
  %63 = load float, float* %8, align 4
  store float %63, float* %9, align 4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %12, align 4
  br label %65

; <label>:65:                                     ; preds = %62, %52
  %66 = load float, float* %8, align 4
  %67 = load float, float* %10, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %65
  %70 = load float, float* %8, align 4
  store float %70, float* %10, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %13, align 4
  br label %72

; <label>:72:                                     ; preds = %69, %65
  %73 = load i32, i32* %11, align 4
  %74 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %73
  %75 = load i8*, i8** %74, align 4
  %76 = load float, float* %8, align 4
  %77 = fpext float %76 to double
  %78 = load i32, i32* %15, align 4
  %79 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %75, double %77, i32 %78)
  br label %80

; <label>:80:                                     ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %29

; <label>:83:                                     ; preds = %29
  %84 = load i32, i32* %12, align 4
  %85 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %84
  %86 = load i8*, i8** %85, align 4
  %87 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %86)
  %88 = load i32, i32* %13, align 4
  %89 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %88
  %90 = load i8*, i8** %89, align 4
  %91 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %90)
  ret i32 0
}

declare arm_aapcscc i32 @bit_count(i32) #1

declare arm_aapcscc i32 @bitcount(i32) #1

declare arm_aapcscc i32 @ntbl_bitcnt(i32) #1

declare arm_aapcscc i32 @ntbl_bitcount(i32) #1

declare arm_aapcscc i32 @BW_btbl_bitcount(i32) #1

declare arm_aapcscc i32 @AR_btbl_bitcount(i32) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @bit_shifter(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %18, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 32
  br label %11

; <label>:11:                                     ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %11
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %5

; <label>:23:                                     ; preds = %11
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @atoi(i8*) #1

declare arm_aapcscc i32 @puts(i8*) #1

declare arm_aapcscc i32 @clock() #1

declare arm_aapcscc i32 @rand() #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
