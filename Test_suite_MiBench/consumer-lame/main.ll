; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not create \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mp3 buffer is not big enough... \0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error writing mp3 output\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca [16384 x i8], align 1
  %7 = alloca [2 x [1152 x i16]], align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lame_global_flags, align 4
  %11 = alloca %struct._IO_FILE*, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  call arm_aapcscc void @lame_init(%struct.lame_global_flags* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %5, align 4
  %16 = getelementptr inbounds i8*, i8** %15, i32 0
  %17 = load i8*, i8** %16, align 4
  call arm_aapcscc void @lame_usage(%struct.lame_global_flags* %10, i8* %17)
  br label %18

; <label>:18:                                     ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 4
  call arm_aapcscc void @lame_parse_args(%struct.lame_global_flags* %10, i32 %19, i8** %20)
  %21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 32
  %26 = load i8*, i8** %25, align 4
  %27 = call arm_aapcscc i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  store %struct._IO_FILE* %30, %struct._IO_FILE** %11, align 4
  br label %42

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 32
  %33 = load i8*, i8** %32, align 4
  %34 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %11, align 4
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 32
  %39 = load i8*, i8** %38, align 4
  %40 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* %39)
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:41:                                     ; preds = %31
  br label %42

; <label>:42:                                     ; preds = %41, %29
  br label %43

; <label>:43:                                     ; preds = %42, %18
  call arm_aapcscc void @lame_init_infile(%struct.lame_global_flags* %10)
  call arm_aapcscc void @lame_init_params(%struct.lame_global_flags* %10)
  call arm_aapcscc void @lame_print_config(%struct.lame_global_flags* %10)
  br label %44

; <label>:44:                                     ; preds = %70, %43
  %45 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %7, i32 0, i32 0
  %46 = call arm_aapcscc i32 @lame_readframe(%struct.lame_global_flags* %10, [1152 x i16]* %45)
  store i32 %46, i32* %8, align 4
  %47 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %7, i32 0, i32 0
  %48 = getelementptr inbounds [1152 x i16], [1152 x i16]* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %7, i32 0, i32 1
  %50 = getelementptr inbounds [1152 x i16], [1152 x i16]* %49, i32 0, i32 0
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i32 0, i32 0
  %53 = call arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags* %10, i16* %48, i16* %50, i32 %51, i8* %52, i32 16384)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %44
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %58 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:59:                                     ; preds = %44
  %60 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 4
  %63 = call arm_aapcscc i32 @fwrite(i8* %60, i32 1, i32 %61, %struct._IO_FILE* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %59
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %68 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:69:                                     ; preds = %59
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %44, label %73

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i32 0, i32 0
  %75 = call arm_aapcscc i32 @lame_encode_finish(%struct.lame_global_flags* %10, i8* %74, i32 16384)
  store i32 %75, i32* %9, align 4
  %76 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i32 0, i32 0
  %77 = load i32, i32* %9, align 4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 4
  %79 = call arm_aapcscc i32 @fwrite(i8* %76, i32 1, i32 %77, %struct._IO_FILE* %78)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 4
  %81 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %80)
  call arm_aapcscc void @lame_close_infile(%struct.lame_global_flags* %10)
  call arm_aapcscc void @lame_mp3_tags(%struct.lame_global_flags* %10)
  ret i32 0
}

declare arm_aapcscc void @lame_init(%struct.lame_global_flags*) #1

declare arm_aapcscc void @lame_usage(%struct.lame_global_flags*, i8*) #1

declare arm_aapcscc void @lame_parse_args(%struct.lame_global_flags*, i32, i8**) #1

declare arm_aapcscc i32 @strcmp(i8*, i8*) #1

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc void @lame_init_infile(%struct.lame_global_flags*) #1

declare arm_aapcscc void @lame_init_params(%struct.lame_global_flags*) #1

declare arm_aapcscc void @lame_print_config(%struct.lame_global_flags*) #1

declare arm_aapcscc i32 @lame_readframe(%struct.lame_global_flags*, [1152 x i16]*) #1

declare arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags*, i16*, i16*, i32, i8*, i32) #1

declare arm_aapcscc i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @lame_encode_finish(%struct.lame_global_flags*, i8*, i32) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

declare arm_aapcscc void @lame_close_infile(%struct.lame_global_flags*) #1

declare arm_aapcscc void @lame_mp3_tags(%struct.lame_global_flags*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
