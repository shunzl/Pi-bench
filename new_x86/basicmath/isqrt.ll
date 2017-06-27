; ModuleID = 'isqrt.c'
source_filename = "isqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.int_sqrt = type { i32, i32 }

; Function Attrs: nounwind
define void @usqrt(i64, %struct.int_sqrt*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.int_sqrt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 2
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 3221225472
  %17 = lshr i64 %16, 30
  %18 = add i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 2
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %23, 1
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %12
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %35

; <label>:35:                                     ; preds = %29, %12
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

; <label>:39:                                     ; preds = %9
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
