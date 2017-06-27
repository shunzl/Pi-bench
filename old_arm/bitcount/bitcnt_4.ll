; ModuleID = 'bitcnt_4.c'
source_filename = "bitcnt_4.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcnt(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 15
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 0, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call arm_aapcscc i32 @ntbl_bitcnt(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: nounwind
define arm_aapcscc i32 @btbl_bitcnt(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %2, align 4
  %14 = icmp ne i32 0, %13
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call arm_aapcscc i32 @btbl_bitcnt(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
