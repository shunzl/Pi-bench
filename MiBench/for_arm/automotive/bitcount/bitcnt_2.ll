; ModuleID = 'bitcnt_2.c'
source_filename = "bitcnt_2.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc i32 @bitcount(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -1431655766
  %5 = lshr i32 %4, 1
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 1431655765
  %8 = add i32 %5, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, -858993460
  %11 = lshr i32 %10, 2
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 858993459
  %14 = add i32 %11, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, -252645136
  %17 = lshr i32 %16, 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 252645135
  %20 = add i32 %17, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, -16711936
  %23 = lshr i32 %22, 8
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 16711935
  %26 = add i32 %23, %25
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 65535
  %32 = add i32 %29, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
