; ModuleID = 'bitarray.c'
source_filename = "bitarray.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc i8* @alloc_bit_array(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add i32 %4, 8
  %6 = sub i32 %5, 1
  %7 = udiv i32 %6, 8
  %8 = call arm_aapcscc i8* @calloc(i32 %7, i32 1)
  store i8* %8, i8** %3, align 4
  %9 = load i8*, i8** %3, align 4
  ret i8* %9
}

declare arm_aapcscc i8* @calloc(i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @getbit(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 4
  %8 = getelementptr inbounds i8, i8* %7, i32 %6
  store i8* %8, i8** %3, align 4
  %9 = load i8*, i8** %3, align 4
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 8
  %14 = shl i32 1, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind
define arm_aapcscc void @setbit(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 8
  %9 = load i8*, i8** %4, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 %8
  store i8* %10, i8** %4, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = srem i32 %14, 8
  %16 = shl i32 1, %15
  %17 = load i8*, i8** %4, align 4
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %16
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  br label %32

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 8
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i8*, i8** %4, align 4
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

; <label>:32:                                     ; preds = %22, %13
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @flipbit(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 4
  %8 = getelementptr inbounds i8, i8* %7, i32 %6
  store i8* %8, i8** %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 8
  %11 = shl i32 1, %10
  %12 = load i8*, i8** %3, align 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, %11
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %12, align 1
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
