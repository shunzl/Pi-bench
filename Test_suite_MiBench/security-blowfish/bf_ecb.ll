; ModuleID = 'bf_ecb.c'
source_filename = "bf_ecb.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i8* @BF_options() #0 {
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_ecb_encrypt(i8*, i8*, %struct.bf_key_st*, i32) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca %struct.bf_key_st*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 4
  store i8* %1, i8** %6, align 4
  store %struct.bf_key_st* %2, %struct.bf_key_st** %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 4
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 4
  %13 = load i8, i8* %11, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 24
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %5, align 4
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 4
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %5, align 4
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 4
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %5, align 4
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 4
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %5, align 4
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 4
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 24
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %5, align 4
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 4
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %5, align 4
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 4
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %5, align 4
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 4
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %66 = load %struct.bf_key_st*, %struct.bf_key_st** %7, align 4
  %67 = load i32, i32* %8, align 4
  call arm_aapcscc void @BF_encrypt(i32* %65, %struct.bf_key_st* %66, i32 %67)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = lshr i32 %70, 24
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %6, align 4
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 4
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %9, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %6, align 4
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 4
  store i8 %79, i8* %80, align 1
  %82 = load i32, i32* %9, align 4
  %83 = lshr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %6, align 4
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 4
  store i8 %85, i8* %86, align 1
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %6, align 4
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 4
  store i8 %90, i8* %91, align 1
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 24
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %6, align 4
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 4
  store i8 %98, i8* %99, align 1
  %101 = load i32, i32* %9, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %6, align 4
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 4
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* %9, align 4
  %108 = lshr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 4
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 4
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 4
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 4
  store i8 %115, i8* %116, align 1
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  store i32 0, i32* %119, align 4
  store i32 0, i32* %9, align 4
  ret void
}

declare arm_aapcscc void @BF_encrypt(i32*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
