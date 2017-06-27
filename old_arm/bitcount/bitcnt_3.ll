; ModuleID = 'bitcnt_3.c'
source_filename = "bitcnt_3.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%union.anon = type { i32 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcount(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 15
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %4
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 240
  %10 = lshr i32 %9, 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %7, %13
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 3840
  %17 = lshr i32 %16, 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %14, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 61440
  %24 = lshr i32 %23, 12
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %21, %27
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 983040
  %31 = lshr i32 %30, 16
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %28, %34
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 15728640
  %38 = lshr i32 %37, 20
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %35, %41
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 251658240
  %45 = lshr i32 %44, 24
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %42, %48
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, -268435456
  %52 = lshr i32 %51, 28
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %49, %55
  ret i32 %56
}

; Function Attrs: nounwind
define arm_aapcscc i32 @BW_btbl_bitcount(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.anon* %3 to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %union.anon* %3 to [4 x i8]*
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = bitcast %union.anon* %3 to [4 x i8]*
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %12, %19
  %21 = bitcast %union.anon* %3 to [4 x i8]*
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = bitcast %union.anon* %3 to [4 x i8]*
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i32 0, i32 2
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %28, %35
  ret i32 %36
}

; Function Attrs: nounwind
define arm_aapcscc i32 @AR_btbl_bitcount(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast i32* %2 to i8*
  store i8* %5, i8** %3, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 4
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 4
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 4
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i8*, i8** %3, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 4
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i8*, i8** %3, align 4
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
