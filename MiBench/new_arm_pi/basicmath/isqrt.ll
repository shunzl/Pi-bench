; ModuleID = 'isqrt.c'
source_filename = "isqrt.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.int_sqrt = type { i32, i32 }

; Function Attrs: nounwind
define arm_aapcscc void @usqrt(i32, %struct.int_sqrt*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.int_sqrt*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 2
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -1073741824
  %17 = lshr i32 %16, 30
  %18 = add i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 1
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

; <label>:35:                                     ; preds = %29, %12
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

; <label>:39:                                     ; preds = %9
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 4
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 4, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
