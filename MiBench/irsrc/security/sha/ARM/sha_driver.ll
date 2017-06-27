; ModuleID = 'sha_driver.c'
source_filename = "sha_driver.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  %7 = alloca %struct.SHA_INFO, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 4
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  call arm_aapcscc void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %12)
  call arm_aapcscc void @sha_print(%struct.SHA_INFO* %7)
  br label %35

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %33, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %14
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 4
  %21 = load i8*, i8** %20, align 4
  %22 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %6, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %18
  %26 = load i8**, i8*** %5, align 4
  %27 = load i8*, i8** %26, align 4
  %28 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %27)
  br label %33

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  call arm_aapcscc void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %30)
  call arm_aapcscc void @sha_print(%struct.SHA_INFO* %7)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %32 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %31)
  br label %33

; <label>:33:                                     ; preds = %29, %25
  br label %14

; <label>:34:                                     ; preds = %14
  br label %35

; <label>:35:                                     ; preds = %34, %10
  ret i32 0
}

declare arm_aapcscc void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #1

declare arm_aapcscc void @sha_print(%struct.SHA_INFO*) #1

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
