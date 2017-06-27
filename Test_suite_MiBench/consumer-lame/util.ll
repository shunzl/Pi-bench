; ModuleID = 'util.c'
source_filename = "util.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32 }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i32, i32, i32 }

@s_freq_table = global [2 x [4 x double]] [[4 x double] [double 2.205000e+01, double 2.400000e+01, double 1.600000e+01, double 0.000000e+00], [4 x double] [double 4.410000e+01, double 4.800000e+01, double 3.200000e+01, double 0.000000e+00]], align 8
@bitrate_table = global [2 x [15 x i32]] [[15 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160], [15 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320]], align 4
@NativeByteOrder = global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"MPEG1 samplerates(kHz): 32 44.1 48 \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bitrates(kbs): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MPEG2 samplerates(kHz): 16 22.05 24 \0A\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Bitrate %dkbs not legal for %iHz output sampling.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SmpFrqIndex: %ldHz is not a legal sample rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to allocate %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DCBA\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"j == (bs->buf_size-1 - bs->buf_byte_idx)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"util.c\00", align 1
@__func__.copy_buffer = private unnamed_addr constant [12 x i8] c"copy_buffer\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@putmask = global [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"Cannot read or write more than %d bits at a time.\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"bs->buf_byte_idx >= 0\00", align 1
@__func__.putbits = private unnamed_addr constant [8 x i8] c"putbits\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @getframebits(%struct.lame_global_flags*, i32*, i32*) #0 {
  %4 = alloca %struct.lame_global_flags*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %4, align 4
  store i32* %1, i32** %5, align 4
  store i32* %2, i32** %6, align 4
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %13 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+03
  store double %16, double* %9, align 8
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 43
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i32 %19
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %22 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 50
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [15 x i32], [15 x i32]* %20, i32 0, i32 %23
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  store double %26, double* %8, align 8
  store i32 8, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %28 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 43
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %3
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %33 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %32, i32 0, i32 46
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 136
  store i32 %38, i32* %11, align 4
  br label %42

; <label>:39:                                     ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 256
  store i32 %41, i32* %11, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  br label %55

; <label>:43:                                     ; preds = %3
  %44 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %45 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %44, i32 0, i32 46
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 72
  store i32 %50, i32* %11, align 4
  br label %54

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 136
  store i32 %53, i32* %11, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %48
  br label %55

; <label>:55:                                     ; preds = %54, %42
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %57 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 16
  store i32 %62, i32* %11, align 4
  br label %63

; <label>:63:                                     ; preds = %60, %55
  %64 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %65 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %64, i32 0, i32 42
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = load double, double* %9, align 8
  %69 = fdiv double %67, %68
  %70 = load double, double* %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  %74 = fmul double %69, %73
  %75 = fadd double %74, 1.000000e-09
  %76 = call arm_aapcscc double @floor(double %75) #5
  %77 = fptosi double %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 8, %78
  %80 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %81 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %80, i32 0, i32 44
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 8
  %84 = add nsw i32 %79, %83
  %85 = load i32*, i32** %5, align 4
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %5, align 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 4
  %91 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %90, i32 0, i32 45
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %89, %92
  %94 = load i32*, i32** %6, align 4
  store i32 %93, i32* %94, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @floor(double) #1

; Function Attrs: nounwind
define arm_aapcscc void @display_bitrates(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  store i32 1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %6 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %8 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %10 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %22, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 15
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i32 %16
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [15 x i32], [15 x i32]* %17, i32 0, i32 %18
  %20 = load i32, i32* %19, align 4
  %21 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %20)
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

; <label>:25:                                     ; preds = %11
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %27 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %29 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %31 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %33 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %34

; <label>:34:                                     ; preds = %45, %25
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 15
  br i1 %36, label %37, label %48

; <label>:37:                                     ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i32 %39
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds [15 x i32], [15 x i32]* %40, i32 0, i32 %41
  %43 = load i32, i32* %42, align 4
  %44 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %43)
  br label %45

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %34

; <label>:48:                                     ; preds = %34
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %50 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @BitrateIndex(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %30, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 15
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %16
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i32 %19
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [15 x i32], [15 x i32]* %20, i32 0, i32 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  store i32 1, i32* %9, align 4
  br label %30

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %26
  br label %10

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %41

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i32 %38, i32 %39)
  store i32 -1, i32* %4, align 4
  br label %41

; <label>:41:                                     ; preds = %36, %34
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: nounwind
define arm_aapcscc i32 @SmpFrqIndex(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 4
  %6 = load i32*, i32** %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 44100
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load i32*, i32** %5, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %40

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 48000
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %11
  %15 = load i32*, i32** %5, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %3, align 4
  br label %40

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 32000
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load i32*, i32** %5, align 4
  store i32 1, i32* %20, align 4
  store i32 2, i32* %3, align 4
  br label %40

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 24000
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = load i32*, i32** %5, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %3, align 4
  br label %40

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 22050
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %26
  %30 = load i32*, i32** %5, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %40

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 16000
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = load i32*, i32** %5, align 4
  store i32 0, i32* %35, align 4
  store i32 2, i32* %3, align 4
  br label %40

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i32 %38)
  store i32 -1, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %36, %34, %29, %24, %19, %14, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind
define arm_aapcscc i8* @mem_alloc(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call arm_aapcscc i8* @malloc(i32 %6)
  store i8* %7, i8** %5, align 4
  %8 = load i8*, i8** %5, align 4
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 4
  %12 = load i32, i32* %3, align 4
  call void @llvm.memset.p0i8.i32(i8* %11, i8 0, i32 %12, i32 1, i1 false)
  br label %17

; <label>:13:                                     ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %15 = load i8*, i8** %4, align 4
  %16 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %15)
  call arm_aapcscc void @exit(i32 1) #6
  unreachable

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %5, align 4
  ret i8* %18
}

declare arm_aapcscc i8* @malloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #4

; Function Attrs: nounwind
define arm_aapcscc i32 @DetermineByteOrder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8], align 1
  %3 = alloca %union.anon, align 4
  %4 = bitcast %union.anon* %3 to i32*
  store i32 1094861636, i32* %4, align 4
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %6 = bitcast %union.anon* %3 to [4 x i8]*
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i32 0, i32 0
  %8 = call arm_aapcscc i8* @strncpy(i8* %5, i8* %7, i32 4)
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 4
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %11 = call arm_aapcscc i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %0
  store i32 1, i32* %1, align 4
  br label %20

; <label>:14:                                     ; preds = %0
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %16 = call arm_aapcscc i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store i32 2, i32* %1, align 4
  br label %20

; <label>:19:                                     ; preds = %14
  store i32 0, i32* %1, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %18, %13
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare arm_aapcscc i8* @strncpy(i8*, i8*, i32) #2

declare arm_aapcscc i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
define arm_aapcscc void @SwapBytesInWords(i16*, i32) #0 {
  %3 = alloca i16*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  store i16* %0, i16** %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = bitcast i16* %6 to i8*
  store i8* %9, i8** %8, align 4
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %30, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

; <label>:14:                                     ; preds = %10
  %15 = load i16*, i16** %3, align 4
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %6, align 2
  %17 = load i16*, i16** %3, align 4
  %18 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %18, i16** %3, align 4
  %19 = bitcast i16* %17 to i8*
  store i8* %19, i8** %7, align 4
  %20 = load i8*, i8** %8, align 4
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %7, align 4
  %24 = getelementptr inbounds i8, i8* %23, i32 0
  store i8 %22, i8* %24, align 1
  %25 = load i8*, i8** %8, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %7, align 4
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8 %27, i8* %29, align 1
  br label %30

; <label>:30:                                     ; preds = %14
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

; <label>:33:                                     ; preds = %10
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @empty_buffer(%struct.bit_stream_struc*) #0 {
  %2 = alloca %struct.bit_stream_struc*, align 4
  %3 = alloca i32, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %2, align 4
  %4 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %5 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 1, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %9 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  br label %31

; <label>:15:                                     ; preds = %1
  %16 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %17 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %21 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %23 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %22, i32 0, i32 7
  store i32 8, i32* %23, align 4
  %24 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %25 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 4
  %27 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %28 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds i8, i8* %26, i32 %29
  store i8 0, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @copy_buffer(i8*, i32, %struct.bit_stream_struc*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bit_stream_struc*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bit_stream_struc* %2, %struct.bit_stream_struc** %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %3
  %13 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %14 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %18 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %66

; <label>:24:                                     ; preds = %12, %3
  %25 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %26 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

; <label>:29:                                     ; preds = %46, %24
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %32 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %49

; <label>:35:                                     ; preds = %29
  %36 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %37 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds i8, i8* %38, i32 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = getelementptr inbounds i8, i8* %42, i32 %43
  store i8 %41, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %29

; <label>:49:                                     ; preds = %29
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %52 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  %56 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %49
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.copy_buffer, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %60, %49
  %62 = phi i1 [ true, %49 ], [ false, %60 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %7, align 4
  call arm_aapcscc void @empty_buffer(%struct.bit_stream_struc* %64)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %61, %23
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
define arm_aapcscc void @init_bit_stream_w(%struct.bit_stream_struc*) #0 {
  %2 = alloca %struct.bit_stream_struc*, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %2, align 4
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  call arm_aapcscc void @alloc_buffer(%struct.bit_stream_struc* %3, i32 16384)
  %4 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %5 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %4, i32 0, i32 6
  store i32 16383, i32* %5, align 4
  %6 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %7 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %6, i32 0, i32 7
  store i32 8, i32* %7, align 4
  %8 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %9 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %8, i32 0, i32 5
  store i32 0, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @alloc_buffer(%struct.bit_stream_struc*, i32) #0 {
  %3 = alloca %struct.bit_stream_struc*, align 4
  %4 = alloca i32, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = mul i32 %5, 1
  %7 = call arm_aapcscc i8* @mem_alloc(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  %8 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %3, align 4
  %9 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %3, align 4
  %12 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @desalloc_buffer(%struct.bit_stream_struc*) #0 {
  %2 = alloca %struct.bit_stream_struc*, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %2, align 4
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %2, align 4
  %4 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %3, i32 0, i32 3
  %5 = load i8*, i8** %4, align 4
  call arm_aapcscc void @free(i8* %5)
  ret void
}

declare arm_aapcscc void @free(i8*) #2

; Function Attrs: nounwind
define arm_aapcscc void @putbits(%struct.bit_stream_struc*, i32, i32) #0 {
  %4 = alloca %struct.bit_stream_struc*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 32
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %15 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i32 32)
  br label %16

; <label>:16:                                     ; preds = %13, %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %19 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

; <label>:22:                                     ; preds = %97, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %101

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %28 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %7, align 4
  br label %37

; <label>:33:                                     ; preds = %25
  %34 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %35 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  br label %37

; <label>:37:                                     ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = lshr i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* @putmask, i32 0, i32 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %50 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = shl i32 %48, %53
  %55 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %56 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 4
  %58 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %59 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds i8, i8* %57, i32 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %54
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %68 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %72 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

; <label>:75:                                     ; preds = %37
  %76 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %77 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %76, i32 0, i32 7
  store i32 8, i32* %77, align 4
  %78 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %79 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %83 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %87, label %86

; <label>:86:                                     ; preds = %75
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.putbits, i32 0, i32 0))
  br label %87

; <label>:87:                                     ; preds = %86, %75
  %88 = phi i1 [ true, %75 ], [ false, %86 ]
  %89 = zext i1 %88 to i32
  %90 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %91 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 4
  %93 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %4, align 4
  %94 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds i8, i8* %92, i32 %95
  store i8 0, i8* %96, align 1
  br label %97

; <label>:97:                                     ; preds = %87, %37
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %22

; <label>:101:                                    ; preds = %22
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
