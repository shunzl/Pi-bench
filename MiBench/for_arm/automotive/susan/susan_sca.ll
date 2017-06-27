; ModuleID = 'susan_sca.bc'
source_filename = "susan.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"-s : Smoothing mode (default)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"-e : Edges mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"-c : Corners mode\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"See source code for more information about setting the thresholds\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\0A\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [108 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\0A\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"as a float: see top \22defines\22 section.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"No argument following -d\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"No argument following -t\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @usage() #0 {
  %1 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0))
  %2 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  %3 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %4 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  %5 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0))
  %6 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0))
  %7 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i32 0, i32 0))
  %8 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0))
  %9 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i32 0, i32 0))
  %10 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.9, i32 0, i32 0))
  %11 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.10, i32 0, i32 0))
  %12 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.11, i32 0, i32 0))
  %13 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 0) #6
  unreachable
                                                  ; No predecessors!
  ret i32 undef
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @getint(%struct._IO_FILE*) #0 {
  %2 = alloca [10000 x i8], align 1
  %3 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %0)
  br label %4

; <label>:4:                                      ; preds = %19, %1
  %.015 = phi i32 [ %3, %1 ], [ %20, %19 ]
  %5 = icmp eq i32 %.015, 35
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i32 0, i32 0
  %8 = call arm_aapcscc i8* @fgets(i8* %7, i32 9000, %struct._IO_FILE* %0)
  br label %9

; <label>:9:                                      ; preds = %6, %4
  %10 = icmp eq i32 %.015, -1
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %13 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:14:                                     ; preds = %9
  %15 = icmp sge i32 %.015, 48
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %14
  %17 = icmp sle i32 %.015, 57
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %16
  br label %21

; <label>:19:                                     ; preds = %16, %14
  %20 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %0)
  br label %4

; <label>:21:                                     ; preds = %18
  br label %22

; <label>:22:                                     ; preds = %34, %21
  %.1 = phi i32 [ %.015, %21 ], [ %26, %34 ]
  %.0 = phi i32 [ 0, %21 ], [ %25, %34 ]
  %23 = mul nsw i32 %.0, 10
  %24 = sub nsw i32 %.1, 48
  %25 = add nsw i32 %23, %24
  %26 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %22
  br label %36

; <label>:29:                                     ; preds = %22
  %30 = icmp slt i32 %26, 48
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %29
  %32 = icmp sgt i32 %26, 57
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %31, %29
  br label %35

; <label>:34:                                     ; preds = %31
  br label %22

; <label>:35:                                     ; preds = %33
  br label %36

; <label>:36:                                     ; preds = %35, %28
  ret i32 %25
}

declare arm_aapcscc i32 @getc(%struct._IO_FILE*) #1

declare arm_aapcscc i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
define arm_aapcscc void @get_image(i8*, i8**, i32*, i32*) #0 {
  %5 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* %0)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = call arm_aapcscc i32 @fgetc(%struct._IO_FILE* %5)
  %12 = trunc i32 %11 to i8
  %13 = call arm_aapcscc i32 @fgetc(%struct._IO_FILE* %5)
  %14 = trunc i32 %13 to i8
  %15 = zext i8 %12 to i32
  %16 = icmp eq i32 %15, 80
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %10
  %18 = zext i8 %14 to i32
  %19 = icmp eq i32 %18, 53
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %17, %10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %22 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i8* %0)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:23:                                     ; preds = %17
  %24 = call arm_aapcscc i32 @getint(%struct._IO_FILE* %5)
  store i32 %24, i32* %2, align 4
  %25 = call arm_aapcscc i32 @getint(%struct._IO_FILE* %5)
  store i32 %25, i32* %3, align 4
  %26 = call arm_aapcscc i32 @getint(%struct._IO_FILE* %5)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call arm_aapcscc i8* @malloc(i32 %29)
  store i8* %30, i8** %1, align 4
  %31 = load i8*, i8** %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call arm_aapcscc i32 @fread(i8* %31, i32 1, i32 %34, %struct._IO_FILE* %5)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %39 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8* %0)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:40:                                     ; preds = %23
  %41 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %5)
  ret void
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fgetc(%struct._IO_FILE*) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @put_image(i8*, i8*, i32, i32) #0 {
  %5 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* %0)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %12 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %2, i32 %3)
  %13 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %14 = mul nsw i32 %2, %3
  %15 = call arm_aapcscc i32 @fwrite(i8* %1, i32 %14, i32 1, %struct._IO_FILE* %5)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %19 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* %0)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:20:                                     ; preds = %10
  %21 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %5)
  ret i32 undef
}

declare arm_aapcscc i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @int_to_uchar(i32*, i8*, i32) #0 {
  %4 = getelementptr inbounds i32, i32* %0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %0, i32 0
  %7 = load i32, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %25, %3
  %.028 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %.026 = phi i32 [ %5, %3 ], [ %.127, %25 ]
  %.0 = phi i32 [ %7, %3 ], [ %.1, %25 ]
  %9 = icmp slt i32 %.028, %2
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds i32, i32* %0, i32 %.028
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, %.026
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds i32, i32* %0, i32 %.028
  %16 = load i32, i32* %15, align 4
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %.127 = phi i32 [ %16, %14 ], [ %.026, %10 ]
  %18 = getelementptr inbounds i32, i32* %0, i32 %.028
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, %.0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds i32, i32* %0, i32 %.028
  %23 = load i32, i32* %22, align 4
  br label %24

; <label>:24:                                     ; preds = %21, %17
  %.1 = phi i32 [ %23, %21 ], [ %.0, %17 ]
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = add nsw i32 %.028, 1
  br label %8

; <label>:27:                                     ; preds = %8
  %28 = sub nsw i32 %.026, %.0
  br label %29

; <label>:29:                                     ; preds = %39, %27
  %.129 = phi i32 [ 0, %27 ], [ %40, %39 ]
  %30 = icmp slt i32 %.129, %2
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds i32, i32* %0, i32 %.129
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %.0
  %35 = mul nsw i32 %34, 255
  %36 = sdiv i32 %35, %28
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %1, i32 %.129
  store i8 %37, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %31
  %40 = add nsw i32 %.129, 1
  br label %29

; <label>:41:                                     ; preds = %29
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc void @setup_brightness_lut(i8**, i32, i32) #0 {
  %4 = call arm_aapcscc i8* @malloc(i32 516)
  store i8* %4, i8** %0, align 4
  %5 = load i8*, i8** %0, align 4
  %6 = getelementptr inbounds i8, i8* %5, i32 258
  store i8* %6, i8** %0, align 4
  br label %7

; <label>:7:                                      ; preds = %27, %3
  %.016 = phi i32 [ -256, %3 ], [ %28, %27 ]
  %8 = icmp slt i32 %.016, 257
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %7
  %10 = sitofp i32 %.016 to float
  %11 = sitofp i32 %1 to float
  %12 = fdiv float %10, %11
  %13 = fmul float %12, %12
  %14 = icmp eq i32 %2, 6
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %9
  %16 = fmul float %13, %13
  %17 = fmul float %16, %13
  br label %18

; <label>:18:                                     ; preds = %15, %9
  %.0 = phi float [ %17, %15 ], [ %13, %9 ]
  %19 = fsub float -0.000000e+00, %.0
  %20 = fpext float %19 to double
  %21 = call arm_aapcscc double @exp(double %20) #7
  %22 = fmul double 1.000000e+02, %21
  %23 = fptrunc double %22 to float
  %24 = fptoui float %23 to i8
  %25 = load i8*, i8** %0, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 %.016
  store i8 %24, i8* %26, align 1
  br label %27

; <label>:27:                                     ; preds = %18
  %28 = add nsw i32 %.016, 1
  br label %7

; <label>:29:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @exp(double) #3

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_principle(i8*, i32*, i8*, i32, i32, i32) #0 {
  %7 = bitcast i32* %1 to i8*
  %8 = mul nsw i32 %4, %5
  %9 = mul i32 %8, 4
  call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 %9, i32 4, i1 false)
  br label %10

; <label>:10:                                     ; preds = %332, %6
  %.0 = phi i32 [ 3, %6 ], [ %333, %332 ]
  %11 = sub nsw i32 %5, 3
  %12 = icmp slt i32 %.0, %11
  br i1 %12, label %13, label %334

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %329, %13
  %.0147 = phi i32 [ 3, %13 ], [ %330, %329 ]
  %15 = sub nsw i32 %4, 3
  %16 = icmp slt i32 %.0147, %15
  br i1 %16, label %17, label %331

; <label>:17:                                     ; preds = %14
  %18 = sub nsw i32 %.0, 3
  %19 = mul nsw i32 %18, %4
  %20 = getelementptr inbounds i8, i8* %0, i32 %19
  %21 = getelementptr inbounds i8, i8* %20, i32 %.0147
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  %23 = mul nsw i32 %.0, %4
  %24 = add nsw i32 %23, %.0147
  %25 = getelementptr inbounds i8, i8* %0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds i8, i8* %2, i32 %27
  %29 = getelementptr inbounds i8, i8* %22, i32 1
  %30 = load i8, i8* %22, align 1
  %31 = zext i8 %30 to i32
  %32 = sub i32 0, %31
  %33 = getelementptr inbounds i8, i8* %28, i32 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 100, %35
  %37 = getelementptr inbounds i8, i8* %29, i32 1
  %38 = load i8, i8* %29, align 1
  %39 = zext i8 %38 to i32
  %40 = sub i32 0, %39
  %41 = getelementptr inbounds i8, i8* %28, i32 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %36, %43
  %45 = load i8, i8* %37, align 1
  %46 = zext i8 %45 to i32
  %47 = sub i32 0, %46
  %48 = getelementptr inbounds i8, i8* %28, i32 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %44, %50
  %52 = sub nsw i32 %4, 3
  %53 = getelementptr inbounds i8, i8* %37, i32 %52
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = sub i32 0, %56
  %58 = getelementptr inbounds i8, i8* %28, i32 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %51, %60
  %62 = getelementptr inbounds i8, i8* %54, i32 1
  %63 = load i8, i8* %54, align 1
  %64 = zext i8 %63 to i32
  %65 = sub i32 0, %64
  %66 = getelementptr inbounds i8, i8* %28, i32 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = getelementptr inbounds i8, i8* %62, i32 1
  %71 = load i8, i8* %62, align 1
  %72 = zext i8 %71 to i32
  %73 = sub i32 0, %72
  %74 = getelementptr inbounds i8, i8* %28, i32 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %69, %76
  %78 = getelementptr inbounds i8, i8* %70, i32 1
  %79 = load i8, i8* %70, align 1
  %80 = zext i8 %79 to i32
  %81 = sub i32 0, %80
  %82 = getelementptr inbounds i8, i8* %28, i32 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %77, %84
  %86 = load i8, i8* %78, align 1
  %87 = zext i8 %86 to i32
  %88 = sub i32 0, %87
  %89 = getelementptr inbounds i8, i8* %28, i32 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 %85, %91
  %93 = sub nsw i32 %4, 5
  %94 = getelementptr inbounds i8, i8* %78, i32 %93
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  %96 = load i8, i8* %94, align 1
  %97 = zext i8 %96 to i32
  %98 = sub i32 0, %97
  %99 = getelementptr inbounds i8, i8* %28, i32 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %92, %101
  %103 = getelementptr inbounds i8, i8* %95, i32 1
  %104 = load i8, i8* %95, align 1
  %105 = zext i8 %104 to i32
  %106 = sub i32 0, %105
  %107 = getelementptr inbounds i8, i8* %28, i32 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %102, %109
  %111 = getelementptr inbounds i8, i8* %103, i32 1
  %112 = load i8, i8* %103, align 1
  %113 = zext i8 %112 to i32
  %114 = sub i32 0, %113
  %115 = getelementptr inbounds i8, i8* %28, i32 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %110, %117
  %119 = getelementptr inbounds i8, i8* %111, i32 1
  %120 = load i8, i8* %111, align 1
  %121 = zext i8 %120 to i32
  %122 = sub i32 0, %121
  %123 = getelementptr inbounds i8, i8* %28, i32 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %118, %125
  %127 = getelementptr inbounds i8, i8* %119, i32 1
  %128 = load i8, i8* %119, align 1
  %129 = zext i8 %128 to i32
  %130 = sub i32 0, %129
  %131 = getelementptr inbounds i8, i8* %28, i32 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nsw i32 %126, %133
  %135 = getelementptr inbounds i8, i8* %127, i32 1
  %136 = load i8, i8* %127, align 1
  %137 = zext i8 %136 to i32
  %138 = sub i32 0, %137
  %139 = getelementptr inbounds i8, i8* %28, i32 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = add nsw i32 %134, %141
  %143 = load i8, i8* %135, align 1
  %144 = zext i8 %143 to i32
  %145 = sub i32 0, %144
  %146 = getelementptr inbounds i8, i8* %28, i32 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %142, %148
  %150 = sub nsw i32 %4, 6
  %151 = getelementptr inbounds i8, i8* %135, i32 %150
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  %153 = load i8, i8* %151, align 1
  %154 = zext i8 %153 to i32
  %155 = sub i32 0, %154
  %156 = getelementptr inbounds i8, i8* %28, i32 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %149, %158
  %160 = getelementptr inbounds i8, i8* %152, i32 1
  %161 = load i8, i8* %152, align 1
  %162 = zext i8 %161 to i32
  %163 = sub i32 0, %162
  %164 = getelementptr inbounds i8, i8* %28, i32 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = add nsw i32 %159, %166
  %168 = load i8, i8* %160, align 1
  %169 = zext i8 %168 to i32
  %170 = sub i32 0, %169
  %171 = getelementptr inbounds i8, i8* %28, i32 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %167, %173
  %175 = getelementptr inbounds i8, i8* %160, i32 2
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  %177 = load i8, i8* %175, align 1
  %178 = zext i8 %177 to i32
  %179 = sub i32 0, %178
  %180 = getelementptr inbounds i8, i8* %28, i32 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %174, %182
  %184 = getelementptr inbounds i8, i8* %176, i32 1
  %185 = load i8, i8* %176, align 1
  %186 = zext i8 %185 to i32
  %187 = sub i32 0, %186
  %188 = getelementptr inbounds i8, i8* %28, i32 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = add nsw i32 %183, %190
  %192 = load i8, i8* %184, align 1
  %193 = zext i8 %192 to i32
  %194 = sub i32 0, %193
  %195 = getelementptr inbounds i8, i8* %28, i32 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %191, %197
  %199 = sub nsw i32 %4, 6
  %200 = getelementptr inbounds i8, i8* %184, i32 %199
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  %202 = load i8, i8* %200, align 1
  %203 = zext i8 %202 to i32
  %204 = sub i32 0, %203
  %205 = getelementptr inbounds i8, i8* %28, i32 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = add nsw i32 %198, %207
  %209 = getelementptr inbounds i8, i8* %201, i32 1
  %210 = load i8, i8* %201, align 1
  %211 = zext i8 %210 to i32
  %212 = sub i32 0, %211
  %213 = getelementptr inbounds i8, i8* %28, i32 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %208, %215
  %217 = getelementptr inbounds i8, i8* %209, i32 1
  %218 = load i8, i8* %209, align 1
  %219 = zext i8 %218 to i32
  %220 = sub i32 0, %219
  %221 = getelementptr inbounds i8, i8* %28, i32 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = add nsw i32 %216, %223
  %225 = getelementptr inbounds i8, i8* %217, i32 1
  %226 = load i8, i8* %217, align 1
  %227 = zext i8 %226 to i32
  %228 = sub i32 0, %227
  %229 = getelementptr inbounds i8, i8* %28, i32 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = add nsw i32 %224, %231
  %233 = getelementptr inbounds i8, i8* %225, i32 1
  %234 = load i8, i8* %225, align 1
  %235 = zext i8 %234 to i32
  %236 = sub i32 0, %235
  %237 = getelementptr inbounds i8, i8* %28, i32 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = add nsw i32 %232, %239
  %241 = getelementptr inbounds i8, i8* %233, i32 1
  %242 = load i8, i8* %233, align 1
  %243 = zext i8 %242 to i32
  %244 = sub i32 0, %243
  %245 = getelementptr inbounds i8, i8* %28, i32 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = add nsw i32 %240, %247
  %249 = load i8, i8* %241, align 1
  %250 = zext i8 %249 to i32
  %251 = sub i32 0, %250
  %252 = getelementptr inbounds i8, i8* %28, i32 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %248, %254
  %256 = sub nsw i32 %4, 5
  %257 = getelementptr inbounds i8, i8* %241, i32 %256
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  %259 = load i8, i8* %257, align 1
  %260 = zext i8 %259 to i32
  %261 = sub i32 0, %260
  %262 = getelementptr inbounds i8, i8* %28, i32 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %255, %264
  %266 = getelementptr inbounds i8, i8* %258, i32 1
  %267 = load i8, i8* %258, align 1
  %268 = zext i8 %267 to i32
  %269 = sub i32 0, %268
  %270 = getelementptr inbounds i8, i8* %28, i32 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = add nsw i32 %265, %272
  %274 = getelementptr inbounds i8, i8* %266, i32 1
  %275 = load i8, i8* %266, align 1
  %276 = zext i8 %275 to i32
  %277 = sub i32 0, %276
  %278 = getelementptr inbounds i8, i8* %28, i32 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %273, %280
  %282 = getelementptr inbounds i8, i8* %274, i32 1
  %283 = load i8, i8* %274, align 1
  %284 = zext i8 %283 to i32
  %285 = sub i32 0, %284
  %286 = getelementptr inbounds i8, i8* %28, i32 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = add nsw i32 %281, %288
  %290 = load i8, i8* %282, align 1
  %291 = zext i8 %290 to i32
  %292 = sub i32 0, %291
  %293 = getelementptr inbounds i8, i8* %28, i32 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = add nsw i32 %289, %295
  %297 = sub nsw i32 %4, 3
  %298 = getelementptr inbounds i8, i8* %282, i32 %297
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  %300 = load i8, i8* %298, align 1
  %301 = zext i8 %300 to i32
  %302 = sub i32 0, %301
  %303 = getelementptr inbounds i8, i8* %28, i32 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = add nsw i32 %296, %305
  %307 = getelementptr inbounds i8, i8* %299, i32 1
  %308 = load i8, i8* %299, align 1
  %309 = zext i8 %308 to i32
  %310 = sub i32 0, %309
  %311 = getelementptr inbounds i8, i8* %28, i32 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = add nsw i32 %306, %313
  %315 = load i8, i8* %307, align 1
  %316 = zext i8 %315 to i32
  %317 = sub i32 0, %316
  %318 = getelementptr inbounds i8, i8* %28, i32 %317
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = add nsw i32 %314, %320
  %322 = icmp sle i32 %321, %3
  br i1 %322, label %323, label %328

; <label>:323:                                    ; preds = %17
  %324 = sub nsw i32 %3, %321
  %325 = mul nsw i32 %.0, %4
  %326 = add nsw i32 %325, %.0147
  %327 = getelementptr inbounds i32, i32* %1, i32 %326
  store i32 %324, i32* %327, align 4
  br label %328

; <label>:328:                                    ; preds = %323, %17
  br label %329

; <label>:329:                                    ; preds = %328
  %330 = add nsw i32 %.0147, 1
  br label %14

; <label>:331:                                    ; preds = %14
  br label %332

; <label>:332:                                    ; preds = %331
  %333 = add nsw i32 %.0, 1
  br label %10

; <label>:334:                                    ; preds = %10
  ret i32 undef
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_principle_small(i8*, i32*, i8*, i32, i32, i32) #0 {
  %7 = bitcast i32* %1 to i8*
  %8 = mul nsw i32 %4, %5
  %9 = mul i32 %8, 4
  call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 %9, i32 4, i1 false)
  br label %10

; <label>:10:                                     ; preds = %104, %6
  %.0 = phi i32 [ 1, %6 ], [ %105, %104 ]
  %11 = sub nsw i32 %5, 1
  %12 = icmp slt i32 %.0, %11
  br i1 %12, label %13, label %106

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %101, %13
  %.055 = phi i32 [ 1, %13 ], [ %102, %101 ]
  %15 = sub nsw i32 %4, 1
  %16 = icmp slt i32 %.055, %15
  br i1 %16, label %17, label %103

; <label>:17:                                     ; preds = %14
  %18 = sub nsw i32 %.0, 1
  %19 = mul nsw i32 %18, %4
  %20 = getelementptr inbounds i8, i8* %0, i32 %19
  %21 = getelementptr inbounds i8, i8* %20, i32 %.055
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  %23 = mul nsw i32 %.0, %4
  %24 = add nsw i32 %23, %.055
  %25 = getelementptr inbounds i8, i8* %0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds i8, i8* %2, i32 %27
  %29 = getelementptr inbounds i8, i8* %22, i32 1
  %30 = load i8, i8* %22, align 1
  %31 = zext i8 %30 to i32
  %32 = sub i32 0, %31
  %33 = getelementptr inbounds i8, i8* %28, i32 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 100, %35
  %37 = getelementptr inbounds i8, i8* %29, i32 1
  %38 = load i8, i8* %29, align 1
  %39 = zext i8 %38 to i32
  %40 = sub i32 0, %39
  %41 = getelementptr inbounds i8, i8* %28, i32 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %36, %43
  %45 = load i8, i8* %37, align 1
  %46 = zext i8 %45 to i32
  %47 = sub i32 0, %46
  %48 = getelementptr inbounds i8, i8* %28, i32 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %44, %50
  %52 = sub nsw i32 %4, 2
  %53 = getelementptr inbounds i8, i8* %37, i32 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = sub i32 0, %55
  %57 = getelementptr inbounds i8, i8* %28, i32 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %51, %59
  %61 = getelementptr inbounds i8, i8* %53, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = sub i32 0, %63
  %65 = getelementptr inbounds i8, i8* %28, i32 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %60, %67
  %69 = sub nsw i32 %4, 2
  %70 = getelementptr inbounds i8, i8* %61, i32 %69
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  %74 = sub i32 0, %73
  %75 = getelementptr inbounds i8, i8* %28, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %68, %77
  %79 = getelementptr inbounds i8, i8* %71, i32 1
  %80 = load i8, i8* %71, align 1
  %81 = zext i8 %80 to i32
  %82 = sub i32 0, %81
  %83 = getelementptr inbounds i8, i8* %28, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = load i8, i8* %79, align 1
  %88 = zext i8 %87 to i32
  %89 = sub i32 0, %88
  %90 = getelementptr inbounds i8, i8* %28, i32 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %86, %92
  %94 = icmp sle i32 %93, 730
  br i1 %94, label %95, label %100

; <label>:95:                                     ; preds = %17
  %96 = sub nsw i32 730, %93
  %97 = mul nsw i32 %.0, %4
  %98 = add nsw i32 %97, %.055
  %99 = getelementptr inbounds i32, i32* %1, i32 %98
  store i32 %96, i32* %99, align 4
  br label %100

; <label>:100:                                    ; preds = %95, %17
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = add nsw i32 %.055, 1
  br label %14

; <label>:103:                                    ; preds = %14
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = add nsw i32 %.0, 1
  br label %10

; <label>:106:                                    ; preds = %10
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc zeroext i8 @median(i8*, i32, i32, i32) #0 {
  %5 = alloca [8 x i32], align 4
  %6 = sub nsw i32 %1, 1
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = sub nsw i32 %8, 1
  %10 = getelementptr inbounds i8, i8* %0, i32 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = sub nsw i32 %1, 1
  %15 = mul nsw i32 %14, %3
  %16 = add nsw i32 %15, %2
  %17 = getelementptr inbounds i8, i8* %0, i32 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = sub nsw i32 %1, 1
  %22 = mul nsw i32 %21, %3
  %23 = add nsw i32 %22, %2
  %24 = add nsw i32 %23, 1
  %25 = getelementptr inbounds i8, i8* %0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = mul nsw i32 %1, %3
  %30 = add nsw i32 %29, %2
  %31 = sub nsw i32 %30, 1
  %32 = getelementptr inbounds i8, i8* %0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = mul nsw i32 %1, %3
  %37 = add nsw i32 %36, %2
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds i8, i8* %0, i32 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = add nsw i32 %1, 1
  %44 = mul nsw i32 %43, %3
  %45 = add nsw i32 %44, %2
  %46 = sub nsw i32 %45, 1
  %47 = getelementptr inbounds i8, i8* %0, i32 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = add nsw i32 %1, 1
  %52 = mul nsw i32 %51, %3
  %53 = add nsw i32 %52, %2
  %54 = getelementptr inbounds i8, i8* %0, i32 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 6
  store i32 %56, i32* %57, align 4
  %58 = add nsw i32 %1, 1
  %59 = mul nsw i32 %58, %3
  %60 = add nsw i32 %59, %2
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds i8, i8* %0, i32 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 7
  store i32 %64, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %92, %4
  %.0 = phi i32 [ 0, %4 ], [ %93, %92 ]
  %67 = icmp slt i32 %.0, 7
  br i1 %67, label %68, label %94

; <label>:68:                                     ; preds = %66
  br label %69

; <label>:69:                                     ; preds = %89, %68
  %.043 = phi i32 [ 0, %68 ], [ %90, %89 ]
  %70 = sub nsw i32 7, %.0
  %71 = icmp slt i32 %.043, %70
  br i1 %71, label %72, label %91

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %.043
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %.043, 1
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %88

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %.043
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %.043, 1
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %82
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %.043
  store i32 %84, i32* %85, align 4
  %86 = add nsw i32 %.043, 1
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %86
  store i32 %81, i32* %87, align 4
  br label %88

; <label>:88:                                     ; preds = %79, %72
  br label %89

; <label>:89:                                     ; preds = %88
  %90 = add nsw i32 %.043, 1
  br label %69

; <label>:91:                                     ; preds = %69
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = add nsw i32 %.0, 1
  br label %66

; <label>:94:                                     ; preds = %66
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %96, %98
  %100 = sdiv i32 %99, 2
  %101 = trunc i32 %100 to i8
  ret i8 %101
}

; Function Attrs: nounwind
define arm_aapcscc i32 @enlarge(i8**, i8*, i32*, i32*, i32) #0 {
  br label %6

; <label>:6:                                      ; preds = %22, %5
  %.077 = phi i32 [ 0, %5 ], [ %23, %22 ]
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %.077, %7
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %6
  %10 = add nsw i32 %.077, %4
  %11 = load i32, i32* %2, align 4
  %12 = mul nsw i32 2, %4
  %13 = add nsw i32 %11, %12
  %14 = mul nsw i32 %10, %13
  %15 = getelementptr inbounds i8, i8* %1, i32 %14
  %16 = getelementptr inbounds i8, i8* %15, i32 %4
  %17 = load i8*, i8** %0, align 4
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %.077, %18
  %20 = getelementptr inbounds i8, i8* %17, i32 %19
  %21 = load i32, i32* %2, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %20, i32 %21, i32 1, i1 false)
  br label %22

; <label>:22:                                     ; preds = %9
  %23 = add nsw i32 %.077, 1
  br label %6

; <label>:24:                                     ; preds = %6
  br label %25

; <label>:25:                                     ; preds = %58, %24
  %.1 = phi i32 [ 0, %24 ], [ %59, %58 ]
  %26 = icmp slt i32 %.1, %4
  br i1 %26, label %27, label %60

; <label>:27:                                     ; preds = %25
  %28 = sub nsw i32 %4, 1
  %29 = sub nsw i32 %28, %.1
  %30 = load i32, i32* %2, align 4
  %31 = mul nsw i32 2, %4
  %32 = add nsw i32 %30, %31
  %33 = mul nsw i32 %29, %32
  %34 = getelementptr inbounds i8, i8* %1, i32 %33
  %35 = getelementptr inbounds i8, i8* %34, i32 %4
  %36 = load i8*, i8** %0, align 4
  %37 = load i32, i32* %2, align 4
  %38 = mul nsw i32 %.1, %37
  %39 = getelementptr inbounds i8, i8* %36, i32 %38
  %40 = load i32, i32* %2, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %39, i32 %40, i32 1, i1 false)
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, %4
  %43 = add nsw i32 %42, %.1
  %44 = load i32, i32* %2, align 4
  %45 = mul nsw i32 2, %4
  %46 = add nsw i32 %44, %45
  %47 = mul nsw i32 %43, %46
  %48 = getelementptr inbounds i8, i8* %1, i32 %47
  %49 = getelementptr inbounds i8, i8* %48, i32 %4
  %50 = load i8*, i8** %0, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, %.1
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %2, align 4
  %55 = mul nsw i32 %53, %54
  %56 = getelementptr inbounds i8, i8* %50, i32 %55
  %57 = load i32, i32* %2, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %56, i32 %57, i32 1, i1 false)
  br label %58

; <label>:58:                                     ; preds = %27
  %59 = add nsw i32 %.1, 1
  br label %25

; <label>:60:                                     ; preds = %25
  br label %61

; <label>:61:                                     ; preds = %109, %60
  %.2 = phi i32 [ 0, %60 ], [ %110, %109 ]
  %62 = icmp slt i32 %.2, %4
  br i1 %62, label %63, label %111

; <label>:63:                                     ; preds = %61
  br label %64

; <label>:64:                                     ; preds = %106, %63
  %.0 = phi i32 [ 0, %63 ], [ %107, %106 ]
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 2, %4
  %67 = add nsw i32 %65, %66
  %68 = icmp slt i32 %.0, %67
  br i1 %68, label %69, label %108

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %2, align 4
  %71 = mul nsw i32 2, %4
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 %.0, %72
  %74 = add nsw i32 %73, %4
  %75 = add nsw i32 %74, %.2
  %76 = getelementptr inbounds i8, i8* %1, i32 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i32, i32* %2, align 4
  %79 = mul nsw i32 2, %4
  %80 = add nsw i32 %78, %79
  %81 = mul nsw i32 %.0, %80
  %82 = add nsw i32 %81, %4
  %83 = sub nsw i32 %82, 1
  %84 = sub nsw i32 %83, %.2
  %85 = getelementptr inbounds i8, i8* %1, i32 %84
  store i8 %77, i8* %85, align 1
  %86 = load i32, i32* %2, align 4
  %87 = mul nsw i32 2, %4
  %88 = add nsw i32 %86, %87
  %89 = mul nsw i32 %.0, %88
  %90 = load i32, i32* %2, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, %4
  %93 = sub nsw i32 %92, 1
  %94 = sub nsw i32 %93, %.2
  %95 = getelementptr inbounds i8, i8* %1, i32 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i32, i32* %2, align 4
  %98 = mul nsw i32 2, %4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 %.0, %99
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %100, %101
  %103 = add nsw i32 %102, %4
  %104 = add nsw i32 %103, %.2
  %105 = getelementptr inbounds i8, i8* %1, i32 %104
  store i8 %96, i8* %105, align 1
  br label %106

; <label>:106:                                    ; preds = %69
  %107 = add nsw i32 %.0, 1
  br label %64

; <label>:108:                                    ; preds = %64
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = add nsw i32 %.2, 1
  br label %61

; <label>:111:                                    ; preds = %61
  %112 = mul nsw i32 2, %4
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %2, align 4
  %115 = mul nsw i32 2, %4
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %3, align 4
  store i8* %1, i8** %0, align 4
  ret i32 undef
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
define arm_aapcscc void @susan_smoothing(i32, i8*, double, i32, i32, i8*) #0 {
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = fptrunc double %2 to float
  store i8* %1, i8** %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %11 = load i8*, i8** %7, align 4
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %6
  %14 = fpext float %10 to double
  %15 = fmul double 1.500000e+00, %14
  %16 = fptosi double %15 to i32
  %17 = add nsw i32 %16, 1
  br label %19

; <label>:18:                                     ; preds = %6
  br label %19

; <label>:19:                                     ; preds = %18, %13
  %.0172 = phi i32 [ %17, %13 ], [ 1, %18 ]
  %20 = fcmp ogt float %10, 1.500000e+01
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %19
  %22 = icmp eq i32 0, 0
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %21
  %24 = fpext float %10 to double
  %25 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), double %24)
  %26 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0))
  %27 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:28:                                     ; preds = %21, %19
  %29 = mul nsw i32 2, %.0172
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %38, label %33

; <label>:33:                                     ; preds = %28
  %34 = mul nsw i32 2, %.0172
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %33, %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0), i32 %.0172, i32 %39, i32 %40)
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %.0172, 2
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %.0172, 2
  %48 = add nsw i32 %46, %47
  %49 = mul nsw i32 %45, %48
  %50 = call arm_aapcscc i8* @malloc(i32 %49)
  %51 = call arm_aapcscc i32 @enlarge(i8** %7, i8* %50, i32* %8, i32* %9, i32 %.0172)
  %52 = icmp eq i32 %0, 0
  br i1 %52, label %53, label %162

; <label>:53:                                     ; preds = %42
  %54 = mul nsw i32 %.0172, 2
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, %55
  %58 = mul nsw i32 %55, %55
  %59 = call arm_aapcscc i8* @malloc(i32 %58)
  %60 = fmul float %10, %10
  %61 = fsub float -0.000000e+00, %60
  %62 = sub nsw i32 0, %.0172
  br label %63

; <label>:63:                                     ; preds = %84, %53
  %.0179 = phi i32 [ %62, %53 ], [ %85, %84 ]
  %.0175 = phi i8* [ %59, %53 ], [ %.1176, %84 ]
  %64 = icmp sle i32 %.0179, %.0172
  br i1 %64, label %65, label %86

; <label>:65:                                     ; preds = %63
  %66 = sub nsw i32 0, %.0172
  br label %67

; <label>:67:                                     ; preds = %81, %65
  %.0188 = phi i32 [ %66, %65 ], [ %82, %81 ]
  %.1176 = phi i8* [ %.0175, %65 ], [ %80, %81 ]
  %68 = icmp sle i32 %.0188, %.0172
  br i1 %68, label %69, label %83

; <label>:69:                                     ; preds = %67
  %70 = mul nsw i32 %.0179, %.0179
  %71 = mul nsw i32 %.0188, %.0188
  %72 = add nsw i32 %70, %71
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %73, %61
  %75 = fpext float %74 to double
  %76 = call arm_aapcscc double @exp(double %75) #7
  %77 = fmul double 1.000000e+02, %76
  %78 = fptosi double %77 to i32
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, i8* %.1176, i32 1
  store i8 %79, i8* %.1176, align 1
  br label %81

; <label>:81:                                     ; preds = %69
  %82 = add nsw i32 %.0188, 1
  br label %67

; <label>:83:                                     ; preds = %67
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = add nsw i32 %.0179, 1
  br label %63

; <label>:86:                                     ; preds = %63
  br label %87

; <label>:87:                                     ; preds = %159, %86
  %.1180 = phi i32 [ %.0172, %86 ], [ %160, %159 ]
  %.0173 = phi i8* [ %11, %86 ], [ %.1174, %159 ]
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %.0172
  %90 = icmp slt i32 %.1180, %89
  br i1 %90, label %91, label %161

; <label>:91:                                     ; preds = %87
  br label %92

; <label>:92:                                     ; preds = %156, %91
  %.1189 = phi i32 [ %.0172, %91 ], [ %157, %156 ]
  %.1174 = phi i8* [ %.0173, %91 ], [ %.2, %156 ]
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, %.0172
  %95 = icmp slt i32 %.1189, %94
  br i1 %95, label %96, label %158

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** %7, align 4
  %98 = sub nsw i32 %.1180, %.0172
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %98, %99
  %101 = getelementptr inbounds i8, i8* %97, i32 %100
  %102 = getelementptr inbounds i8, i8* %101, i32 %.1189
  %103 = sub i32 0, %.0172
  %104 = getelementptr inbounds i8, i8* %102, i32 %103
  %105 = load i8*, i8** %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %.1180, %106
  %108 = add nsw i32 %107, %.1189
  %109 = getelementptr inbounds i8, i8* %105, i32 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds i8, i8* %5, i32 %111
  %113 = sub nsw i32 0, %.0172
  br label %114

; <label>:114:                                    ; preds = %139, %96
  %.0186 = phi i32 [ %113, %96 ], [ %140, %139 ]
  %.0184 = phi i32 [ 0, %96 ], [ %.1185, %139 ]
  %.0182 = phi i8* [ %104, %96 ], [ %138, %139 ]
  %.2177 = phi i8* [ %59, %96 ], [ %.3178, %139 ]
  %.0 = phi i32 [ 0, %96 ], [ %.1, %139 ]
  %115 = icmp sle i32 %.0186, %.0172
  br i1 %115, label %116, label %141

; <label>:116:                                    ; preds = %114
  %117 = sub nsw i32 0, %.0172
  br label %118

; <label>:118:                                    ; preds = %135, %116
  %.0187 = phi i32 [ %117, %116 ], [ %136, %135 ]
  %.1185 = phi i32 [ %.0184, %116 ], [ %132, %135 ]
  %.1183 = phi i8* [ %.0182, %116 ], [ %121, %135 ]
  %.3178 = phi i8* [ %.2177, %116 ], [ %124, %135 ]
  %.1 = phi i32 [ %.0, %116 ], [ %134, %135 ]
  %119 = icmp sle i32 %.0187, %.0172
  br i1 %119, label %120, label %137

; <label>:120:                                    ; preds = %118
  %121 = getelementptr inbounds i8, i8* %.1183, i32 1
  %122 = load i8, i8* %.1183, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds i8, i8* %.3178, i32 1
  %125 = load i8, i8* %.3178, align 1
  %126 = zext i8 %125 to i32
  %127 = sub i32 0, %123
  %128 = getelementptr inbounds i8, i8* %112, i32 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = mul nsw i32 %126, %130
  %132 = add nsw i32 %.1185, %131
  %133 = mul nsw i32 %131, %123
  %134 = add nsw i32 %.1, %133
  br label %135

; <label>:135:                                    ; preds = %120
  %136 = add nsw i32 %.0187, 1
  br label %118

; <label>:137:                                    ; preds = %118
  %138 = getelementptr inbounds i8, i8* %.1183, i32 %57
  br label %139

; <label>:139:                                    ; preds = %137
  %140 = add nsw i32 %.0186, 1
  br label %114

; <label>:141:                                    ; preds = %114
  %142 = sub nsw i32 %.0184, 10000
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

; <label>:144:                                    ; preds = %141
  %145 = load i8*, i8** %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call arm_aapcscc zeroext i8 @median(i8* %145, i32 %.1180, i32 %.1189, i32 %146)
  %148 = getelementptr inbounds i8, i8* %.1174, i32 1
  store i8 %147, i8* %.1174, align 1
  br label %155

; <label>:149:                                    ; preds = %141
  %150 = mul nsw i32 %111, 10000
  %151 = sub nsw i32 %.0, %150
  %152 = sdiv i32 %151, %142
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds i8, i8* %.1174, i32 1
  store i8 %153, i8* %.1174, align 1
  br label %155

; <label>:155:                                    ; preds = %149, %144
  %.2 = phi i8* [ %148, %144 ], [ %154, %149 ]
  br label %156

; <label>:156:                                    ; preds = %155
  %157 = add nsw i32 %.1189, 1
  br label %92

; <label>:158:                                    ; preds = %92
  br label %159

; <label>:159:                                    ; preds = %158
  %160 = add nsw i32 %.1180, 1
  br label %87

; <label>:161:                                    ; preds = %87
  br label %301

; <label>:162:                                    ; preds = %42
  br label %163

; <label>:163:                                    ; preds = %298, %162
  %.2181 = phi i32 [ 1, %162 ], [ %299, %298 ]
  %.3 = phi i8* [ %11, %162 ], [ %.4, %298 ]
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp slt i32 %.2181, %165
  br i1 %166, label %167, label %300

; <label>:167:                                    ; preds = %163
  br label %168

; <label>:168:                                    ; preds = %295, %167
  %.2190 = phi i32 [ 1, %167 ], [ %296, %295 ]
  %.4 = phi i8* [ %.3, %167 ], [ %.5, %295 ]
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp slt i32 %.2190, %170
  br i1 %171, label %172, label %297

; <label>:172:                                    ; preds = %168
  %173 = load i8*, i8** %7, align 4
  %174 = sub nsw i32 %.2181, 1
  %175 = load i32, i32* %8, align 4
  %176 = mul nsw i32 %174, %175
  %177 = getelementptr inbounds i8, i8* %173, i32 %176
  %178 = getelementptr inbounds i8, i8* %177, i32 %.2190
  %179 = getelementptr inbounds i8, i8* %178, i32 -1
  %180 = load i8*, i8** %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %.2181, %181
  %183 = add nsw i32 %182, %.2190
  %184 = getelementptr inbounds i8, i8* %180, i32 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds i8, i8* %5, i32 %186
  %188 = getelementptr inbounds i8, i8* %179, i32 1
  %189 = load i8, i8* %179, align 1
  %190 = zext i8 %189 to i32
  %191 = sub i32 0, %190
  %192 = getelementptr inbounds i8, i8* %187, i32 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 0, %194
  %196 = mul nsw i32 %194, %190
  %197 = add nsw i32 0, %196
  %198 = getelementptr inbounds i8, i8* %188, i32 1
  %199 = load i8, i8* %188, align 1
  %200 = zext i8 %199 to i32
  %201 = sub i32 0, %200
  %202 = getelementptr inbounds i8, i8* %187, i32 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %195, %204
  %206 = mul nsw i32 %204, %200
  %207 = add nsw i32 %197, %206
  %208 = load i8, i8* %198, align 1
  %209 = zext i8 %208 to i32
  %210 = sub i32 0, %209
  %211 = getelementptr inbounds i8, i8* %187, i32 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %205, %213
  %215 = mul nsw i32 %213, %209
  %216 = add nsw i32 %207, %215
  %217 = load i32, i32* %8, align 4
  %218 = sub nsw i32 %217, 2
  %219 = getelementptr inbounds i8, i8* %198, i32 %218
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  %221 = load i8, i8* %219, align 1
  %222 = zext i8 %221 to i32
  %223 = sub i32 0, %222
  %224 = getelementptr inbounds i8, i8* %187, i32 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %214, %226
  %228 = mul nsw i32 %226, %222
  %229 = add nsw i32 %216, %228
  %230 = getelementptr inbounds i8, i8* %220, i32 1
  %231 = load i8, i8* %220, align 1
  %232 = zext i8 %231 to i32
  %233 = sub i32 0, %232
  %234 = getelementptr inbounds i8, i8* %187, i32 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = add nsw i32 %227, %236
  %238 = mul nsw i32 %236, %232
  %239 = add nsw i32 %229, %238
  %240 = load i8, i8* %230, align 1
  %241 = zext i8 %240 to i32
  %242 = sub i32 0, %241
  %243 = getelementptr inbounds i8, i8* %187, i32 %242
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add nsw i32 %237, %245
  %247 = mul nsw i32 %245, %241
  %248 = add nsw i32 %239, %247
  %249 = load i32, i32* %8, align 4
  %250 = sub nsw i32 %249, 2
  %251 = getelementptr inbounds i8, i8* %230, i32 %250
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  %253 = load i8, i8* %251, align 1
  %254 = zext i8 %253 to i32
  %255 = sub i32 0, %254
  %256 = getelementptr inbounds i8, i8* %187, i32 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %246, %258
  %260 = mul nsw i32 %258, %254
  %261 = add nsw i32 %248, %260
  %262 = getelementptr inbounds i8, i8* %252, i32 1
  %263 = load i8, i8* %252, align 1
  %264 = zext i8 %263 to i32
  %265 = sub i32 0, %264
  %266 = getelementptr inbounds i8, i8* %187, i32 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = add nsw i32 %259, %268
  %270 = mul nsw i32 %268, %264
  %271 = add nsw i32 %261, %270
  %272 = load i8, i8* %262, align 1
  %273 = zext i8 %272 to i32
  %274 = sub i32 0, %273
  %275 = getelementptr inbounds i8, i8* %187, i32 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = add nsw i32 %269, %277
  %279 = mul nsw i32 %277, %273
  %280 = add nsw i32 %271, %279
  %281 = sub nsw i32 %278, 100
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

; <label>:283:                                    ; preds = %172
  %284 = load i8*, i8** %7, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call arm_aapcscc zeroext i8 @median(i8* %284, i32 %.2181, i32 %.2190, i32 %285)
  %287 = getelementptr inbounds i8, i8* %.4, i32 1
  store i8 %286, i8* %.4, align 1
  br label %294

; <label>:288:                                    ; preds = %172
  %289 = mul nsw i32 %186, 100
  %290 = sub nsw i32 %280, %289
  %291 = sdiv i32 %290, %281
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds i8, i8* %.4, i32 1
  store i8 %292, i8* %.4, align 1
  br label %294

; <label>:294:                                    ; preds = %288, %283
  %.5 = phi i8* [ %287, %283 ], [ %293, %288 ]
  br label %295

; <label>:295:                                    ; preds = %294
  %296 = add nsw i32 %.2190, 1
  br label %168

; <label>:297:                                    ; preds = %168
  br label %298

; <label>:298:                                    ; preds = %297
  %299 = add nsw i32 %.2181, 1
  br label %163

; <label>:300:                                    ; preds = %163
  br label %301

; <label>:301:                                    ; preds = %300, %161
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @edge_draw(i8*, i8*, i32, i32, i32) #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %39

; <label>:7:                                      ; preds = %5
  br label %8

; <label>:8:                                      ; preds = %36, %7
  %.035 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %.0 = phi i8* [ %1, %7 ], [ %35, %36 ]
  %9 = mul nsw i32 %2, %3
  %10 = icmp slt i32 %.035, %9
  br i1 %10, label %11, label %38

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %.0, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %11
  %16 = ptrtoint i8* %.0 to i32
  %17 = ptrtoint i8* %1 to i32
  %18 = sub i32 %16, %17
  %19 = getelementptr inbounds i8, i8* %0, i32 %18
  %20 = sub i32 0, %2
  %21 = getelementptr inbounds i8, i8* %19, i32 %20
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8 -1, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8 -1, i8* %23, align 1
  store i8 -1, i8* %24, align 1
  %25 = sub nsw i32 %2, 2
  %26 = getelementptr inbounds i8, i8* %24, i32 %25
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8 -1, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  %29 = load i8, i8* %27, align 1
  store i8 -1, i8* %28, align 1
  %30 = sub nsw i32 %2, 2
  %31 = getelementptr inbounds i8, i8* %28, i32 %30
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8 -1, i8* %31, align 1
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8 -1, i8* %32, align 1
  store i8 -1, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %15, %11
  %35 = getelementptr inbounds i8, i8* %.0, i32 1
  br label %36

; <label>:36:                                     ; preds = %34
  %37 = add nsw i32 %.035, 1
  br label %8

; <label>:38:                                     ; preds = %8
  br label %39

; <label>:39:                                     ; preds = %38, %5
  br label %40

; <label>:40:                                     ; preds = %54, %39
  %.136 = phi i32 [ 0, %39 ], [ %55, %54 ]
  %.1 = phi i8* [ %1, %39 ], [ %53, %54 ]
  %41 = mul nsw i32 %2, %3
  %42 = icmp slt i32 %.136, %41
  br i1 %42, label %43, label %56

; <label>:43:                                     ; preds = %40
  %44 = load i8, i8* %.1, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %43
  %48 = ptrtoint i8* %.1 to i32
  %49 = ptrtoint i8* %1 to i32
  %50 = sub i32 %48, %49
  %51 = getelementptr inbounds i8, i8* %0, i32 %50
  store i8 0, i8* %51, align 1
  br label %52

; <label>:52:                                     ; preds = %47, %43
  %53 = getelementptr inbounds i8, i8* %.1, i32 1
  br label %54

; <label>:54:                                     ; preds = %52
  %55 = add nsw i32 %.136, 1
  br label %40

; <label>:56:                                     ; preds = %40
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_thin(i32*, i8*, i32, i32) #0 {
  %5 = alloca [9 x i32], align 4
  br label %6

; <label>:6:                                      ; preds = %847, %4
  %.0392 = phi i32 [ undef, %4 ], [ %.1393, %847 ]
  %.0385 = phi i32 [ undef, %4 ], [ %.1386, %847 ]
  %.0363 = phi i32 [ 4, %4 ], [ %848, %847 ]
  %7 = sub nsw i32 %3, 4
  %8 = icmp slt i32 %.0363, %7
  br i1 %8, label %9, label %849

; <label>:9:                                      ; preds = %6
  br label %10

; <label>:10:                                     ; preds = %844, %9
  %.1393 = phi i32 [ %.0392, %9 ], [ %.6398, %844 ]
  %.1386 = phi i32 [ %.0385, %9 ], [ %.6391, %844 ]
  %.1364 = phi i32 [ %.0363, %9 ], [ %.14, %844 ]
  %.0 = phi i32 [ 4, %9 ], [ %845, %844 ]
  %11 = sub nsw i32 %2, 4
  %12 = icmp slt i32 %.0, %11
  br i1 %12, label %13, label %846

; <label>:13:                                     ; preds = %10
  %14 = mul nsw i32 %.1364, %2
  %15 = add nsw i32 %14, %.0
  %16 = getelementptr inbounds i8, i8* %1, i32 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %843

; <label>:20:                                     ; preds = %13
  %21 = mul nsw i32 %.1364, %2
  %22 = add nsw i32 %21, %.0
  %23 = getelementptr inbounds i32, i32* %0, i32 %22
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %.1364, 1
  %26 = mul nsw i32 %25, %2
  %27 = getelementptr inbounds i8, i8* %1, i32 %26
  %28 = getelementptr inbounds i8, i8* %27, i32 %.0
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 8
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds i8, i8* %29, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 8
  %38 = zext i1 %37 to i32
  %39 = add nsw i32 %33, %38
  %40 = getelementptr inbounds i8, i8* %29, i32 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 8
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %39, %44
  %46 = getelementptr inbounds i8, i8* %29, i32 %2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 8
  %50 = zext i1 %49 to i32
  %51 = add nsw i32 %45, %50
  %52 = getelementptr inbounds i8, i8* %29, i32 %2
  %53 = getelementptr inbounds i8, i8* %52, i32 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %55, 8
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %51, %57
  %59 = getelementptr inbounds i8, i8* %29, i32 %2
  %60 = getelementptr inbounds i8, i8* %59, i32 %2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 8
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %58, %64
  %66 = getelementptr inbounds i8, i8* %29, i32 %2
  %67 = getelementptr inbounds i8, i8* %66, i32 %2
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %70, 8
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %65, %72
  %74 = getelementptr inbounds i8, i8* %29, i32 %2
  %75 = getelementptr inbounds i8, i8* %74, i32 %2
  %76 = getelementptr inbounds i8, i8* %75, i32 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %78, 8
  %80 = zext i1 %79 to i32
  %81 = add nsw i32 %73, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

; <label>:83:                                     ; preds = %20
  %84 = mul nsw i32 %.1364, %2
  %85 = add nsw i32 %84, %.0
  %86 = getelementptr inbounds i8, i8* %1, i32 %85
  store i8 100, i8* %86, align 1
  br label %87

; <label>:87:                                     ; preds = %83, %20
  %88 = icmp eq i32 %81, 1
  br i1 %88, label %89, label %450

; <label>:89:                                     ; preds = %87
  %90 = mul nsw i32 %.1364, %2
  %91 = add nsw i32 %90, %.0
  %92 = getelementptr inbounds i8, i8* %1, i32 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp slt i32 %94, 6
  br i1 %95, label %96, label %450

; <label>:96:                                     ; preds = %89
  %97 = sub nsw i32 %.1364, 1
  %98 = mul nsw i32 %97, %2
  %99 = add nsw i32 %98, %.0
  %100 = sub nsw i32 %99, 1
  %101 = getelementptr inbounds i32, i32* %0, i32 %100
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = sub nsw i32 %.1364, 1
  %105 = mul nsw i32 %104, %2
  %106 = add nsw i32 %105, %.0
  %107 = getelementptr inbounds i32, i32* %0, i32 %106
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = sub nsw i32 %.1364, 1
  %111 = mul nsw i32 %110, %2
  %112 = add nsw i32 %111, %.0
  %113 = add nsw i32 %112, 1
  %114 = getelementptr inbounds i32, i32* %0, i32 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = mul nsw i32 %.1364, %2
  %118 = add nsw i32 %117, %.0
  %119 = sub nsw i32 %118, 1
  %120 = getelementptr inbounds i32, i32* %0, i32 %119
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 4
  store i32 0, i32* %123, align 4
  %124 = mul nsw i32 %.1364, %2
  %125 = add nsw i32 %124, %.0
  %126 = add nsw i32 %125, 1
  %127 = getelementptr inbounds i32, i32* %0, i32 %126
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = add nsw i32 %.1364, 1
  %131 = mul nsw i32 %130, %2
  %132 = add nsw i32 %131, %.0
  %133 = sub nsw i32 %132, 1
  %134 = getelementptr inbounds i32, i32* %0, i32 %133
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  store i32 %135, i32* %136, align 4
  %137 = add nsw i32 %.1364, 1
  %138 = mul nsw i32 %137, %2
  %139 = add nsw i32 %138, %.0
  %140 = getelementptr inbounds i32, i32* %0, i32 %139
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  store i32 %141, i32* %142, align 4
  %143 = add nsw i32 %.1364, 1
  %144 = mul nsw i32 %143, %2
  %145 = add nsw i32 %144, %.0
  %146 = add nsw i32 %145, 1
  %147 = getelementptr inbounds i32, i32* %0, i32 %146
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  store i32 %148, i32* %149, align 4
  %150 = sub nsw i32 %.1364, 1
  %151 = mul nsw i32 %150, %2
  %152 = add nsw i32 %151, %.0
  %153 = sub nsw i32 %152, 1
  %154 = getelementptr inbounds i8, i8* %1, i32 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp slt i32 %156, 8
  br i1 %157, label %158, label %177

; <label>:158:                                    ; preds = %96
  %159 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  store i32 0, i32* %159, align 4
  %160 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  store i32 0, i32* %160, align 4
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  store i32 0, i32* %161, align 4
  %162 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 2
  store i32 %164, i32* %162, align 4
  %165 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %166, 2
  store i32 %167, i32* %165, align 4
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %169, 3
  store i32 %170, i32* %168, align 4
  %171 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 3
  store i32 %173, i32* %171, align 4
  %174 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 4
  store i32 %176, i32* %174, align 4
  br label %376

; <label>:177:                                    ; preds = %96
  %178 = sub nsw i32 %.1364, 1
  %179 = mul nsw i32 %178, %2
  %180 = add nsw i32 %179, %.0
  %181 = getelementptr inbounds i8, i8* %1, i32 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %183, 8
  br i1 %184, label %185, label %204

; <label>:185:                                    ; preds = %177
  %186 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  store i32 0, i32* %187, align 4
  %188 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %190, 2
  store i32 %191, i32* %189, align 4
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %193, 2
  store i32 %194, i32* %192, align 4
  %195 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, 3
  store i32 %197, i32* %195, align 4
  %198 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %199, 3
  store i32 %200, i32* %198, align 4
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 4
  store i32 %203, i32* %201, align 4
  br label %375

; <label>:204:                                    ; preds = %177
  %205 = sub nsw i32 %.1364, 1
  %206 = mul nsw i32 %205, %2
  %207 = add nsw i32 %206, %.0
  %208 = add nsw i32 %207, 1
  %209 = getelementptr inbounds i8, i8* %1, i32 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %232

; <label>:213:                                    ; preds = %204
  %214 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  store i32 0, i32* %215, align 4
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %218, 2
  store i32 %219, i32* %217, align 4
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %221, 2
  store i32 %222, i32* %220, align 4
  %223 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %224, 3
  store i32 %225, i32* %223, align 4
  %226 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %227, 3
  store i32 %228, i32* %226, align 4
  %229 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %230, 4
  store i32 %231, i32* %229, align 4
  br label %374

; <label>:232:                                    ; preds = %204
  %233 = mul nsw i32 %.1364, %2
  %234 = add nsw i32 %233, %.0
  %235 = sub nsw i32 %234, 1
  %236 = getelementptr inbounds i8, i8* %1, i32 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp slt i32 %238, 8
  br i1 %239, label %240, label %259

; <label>:240:                                    ; preds = %232
  %241 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  store i32 0, i32* %241, align 4
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  store i32 0, i32* %242, align 4
  %243 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  store i32 0, i32* %243, align 4
  %244 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %245, 2
  store i32 %246, i32* %244, align 4
  %247 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %247, align 4
  %250 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %251, 3
  store i32 %252, i32* %250, align 4
  %253 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %254, 3
  store i32 %255, i32* %253, align 4
  %256 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 4
  store i32 %258, i32* %256, align 4
  br label %373

; <label>:259:                                    ; preds = %232
  %260 = mul nsw i32 %.1364, %2
  %261 = add nsw i32 %260, %.0
  %262 = add nsw i32 %261, 1
  %263 = getelementptr inbounds i8, i8* %1, i32 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp slt i32 %265, 8
  br i1 %266, label %267, label %286

; <label>:267:                                    ; preds = %259
  %268 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  store i32 0, i32* %268, align 4
  %269 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  store i32 0, i32* %269, align 4
  %270 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  store i32 0, i32* %270, align 4
  %271 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %272, 2
  store i32 %273, i32* %271, align 4
  %274 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %275, 2
  store i32 %276, i32* %274, align 4
  %277 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %278, 3
  store i32 %279, i32* %277, align 4
  %280 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %281, 3
  store i32 %282, i32* %280, align 4
  %283 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 %284, 4
  store i32 %285, i32* %283, align 4
  br label %372

; <label>:286:                                    ; preds = %259
  %287 = add nsw i32 %.1364, 1
  %288 = mul nsw i32 %287, %2
  %289 = add nsw i32 %288, %.0
  %290 = sub nsw i32 %289, 1
  %291 = getelementptr inbounds i8, i8* %1, i32 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp slt i32 %293, 8
  br i1 %294, label %295, label %314

; <label>:295:                                    ; preds = %286
  %296 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  store i32 0, i32* %296, align 4
  %297 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  store i32 0, i32* %297, align 4
  %298 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  store i32 0, i32* %298, align 4
  %299 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = mul nsw i32 %300, 2
  store i32 %301, i32* %299, align 4
  %302 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %303, 2
  store i32 %304, i32* %302, align 4
  %305 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 %306, 3
  store i32 %307, i32* %305, align 4
  %308 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 %309, 3
  store i32 %310, i32* %308, align 4
  %311 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %312, 4
  store i32 %313, i32* %311, align 4
  br label %371

; <label>:314:                                    ; preds = %286
  %315 = add nsw i32 %.1364, 1
  %316 = mul nsw i32 %315, %2
  %317 = add nsw i32 %316, %.0
  %318 = getelementptr inbounds i8, i8* %1, i32 %317
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp slt i32 %320, 8
  br i1 %321, label %322, label %341

; <label>:322:                                    ; preds = %314
  %323 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  store i32 0, i32* %323, align 4
  %324 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  store i32 0, i32* %324, align 4
  %325 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  store i32 0, i32* %325, align 4
  %326 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %327, 2
  store i32 %328, i32* %326, align 4
  %329 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = mul nsw i32 %330, 2
  store i32 %331, i32* %329, align 4
  %332 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, 3
  store i32 %334, i32* %332, align 4
  %335 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 3
  store i32 %337, i32* %335, align 4
  %338 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %339, 4
  store i32 %340, i32* %338, align 4
  br label %370

; <label>:341:                                    ; preds = %314
  %342 = add nsw i32 %.1364, 1
  %343 = mul nsw i32 %342, %2
  %344 = add nsw i32 %343, %.0
  %345 = add nsw i32 %344, 1
  %346 = getelementptr inbounds i8, i8* %1, i32 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp slt i32 %348, 8
  br i1 %349, label %350, label %369

; <label>:350:                                    ; preds = %341
  %351 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 8
  store i32 0, i32* %351, align 4
  %352 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 5
  store i32 0, i32* %352, align 4
  %353 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 7
  store i32 0, i32* %353, align 4
  %354 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 %355, 2
  store i32 %356, i32* %354, align 4
  %357 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %358, 2
  store i32 %359, i32* %357, align 4
  %360 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %361, 3
  store i32 %362, i32* %360, align 4
  %363 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %364, 3
  store i32 %365, i32* %363, align 4
  %366 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %367, 4
  store i32 %368, i32* %366, align 4
  br label %369

; <label>:369:                                    ; preds = %350, %341
  br label %370

; <label>:370:                                    ; preds = %369, %322
  br label %371

; <label>:371:                                    ; preds = %370, %295
  br label %372

; <label>:372:                                    ; preds = %371, %267
  br label %373

; <label>:373:                                    ; preds = %372, %240
  br label %374

; <label>:374:                                    ; preds = %373, %213
  br label %375

; <label>:375:                                    ; preds = %374, %185
  br label %376

; <label>:376:                                    ; preds = %375, %158
  br label %377

; <label>:377:                                    ; preds = %399, %376
  %.0399 = phi i32 [ 0, %376 ], [ %.1400, %399 ]
  %.2394 = phi i32 [ %.1393, %376 ], [ %.3395, %399 ]
  %.2387 = phi i32 [ %.1386, %376 ], [ %.3388, %399 ]
  %.0377 = phi i32 [ 0, %376 ], [ %400, %399 ]
  %378 = icmp slt i32 %.0377, 3
  br i1 %378, label %379, label %401

; <label>:379:                                    ; preds = %377
  br label %380

; <label>:380:                                    ; preds = %396, %379
  %.1400 = phi i32 [ %.0399, %379 ], [ %.2401, %396 ]
  %.3395 = phi i32 [ %.2394, %379 ], [ %.4396, %396 ]
  %.3388 = phi i32 [ %.2387, %379 ], [ %.4389, %396 ]
  %.0381 = phi i32 [ 0, %379 ], [ %397, %396 ]
  %381 = icmp slt i32 %.0381, 3
  br i1 %381, label %382, label %398

; <label>:382:                                    ; preds = %380
  %383 = add nsw i32 %.0377, %.0377
  %384 = add nsw i32 %383, %.0377
  %385 = add nsw i32 %384, %.0381
  %386 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 %385
  %387 = load i32, i32* %386, align 4
  %388 = icmp sgt i32 %387, %.1400
  br i1 %388, label %389, label %395

; <label>:389:                                    ; preds = %382
  %390 = add nsw i32 %.0377, %.0377
  %391 = add nsw i32 %390, %.0377
  %392 = add nsw i32 %391, %.0381
  %393 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i32 0, i32 %392
  %394 = load i32, i32* %393, align 4
  br label %395

; <label>:395:                                    ; preds = %389, %382
  %.2401 = phi i32 [ %394, %389 ], [ %.1400, %382 ]
  %.4396 = phi i32 [ %.0377, %389 ], [ %.3395, %382 ]
  %.4389 = phi i32 [ %.0381, %389 ], [ %.3388, %382 ]
  br label %396

; <label>:396:                                    ; preds = %395
  %397 = add nsw i32 %.0381, 1
  br label %380

; <label>:398:                                    ; preds = %380
  br label %399

; <label>:399:                                    ; preds = %398
  %400 = add nsw i32 %.0377, 1
  br label %377

; <label>:401:                                    ; preds = %377
  %402 = icmp sgt i32 %.0399, 0
  br i1 %402, label %403, label %449

; <label>:403:                                    ; preds = %401
  %404 = mul nsw i32 %.1364, %2
  %405 = add nsw i32 %404, %.0
  %406 = getelementptr inbounds i8, i8* %1, i32 %405
  %407 = load i8, i8* %406, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp slt i32 %408, 4
  br i1 %409, label %410, label %418

; <label>:410:                                    ; preds = %403
  %411 = add nsw i32 %.1364, %.2394
  %412 = sub nsw i32 %411, 1
  %413 = mul nsw i32 %412, %2
  %414 = add nsw i32 %413, %.0
  %415 = add nsw i32 %414, %.2387
  %416 = sub nsw i32 %415, 1
  %417 = getelementptr inbounds i8, i8* %1, i32 %416
  store i8 4, i8* %417, align 1
  br label %433

; <label>:418:                                    ; preds = %403
  %419 = mul nsw i32 %.1364, %2
  %420 = add nsw i32 %419, %.0
  %421 = getelementptr inbounds i8, i8* %1, i32 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = add nsw i32 %423, 1
  %425 = trunc i32 %424 to i8
  %426 = add nsw i32 %.1364, %.2394
  %427 = sub nsw i32 %426, 1
  %428 = mul nsw i32 %427, %2
  %429 = add nsw i32 %428, %.0
  %430 = add nsw i32 %429, %.2387
  %431 = sub nsw i32 %430, 1
  %432 = getelementptr inbounds i8, i8* %1, i32 %431
  store i8 %425, i8* %432, align 1
  br label %433

; <label>:433:                                    ; preds = %418, %410
  %434 = add nsw i32 %.2394, %.2394
  %435 = add nsw i32 %434, %.2387
  %436 = icmp slt i32 %435, 3
  br i1 %436, label %437, label %448

; <label>:437:                                    ; preds = %433
  %438 = sub nsw i32 %.2394, 1
  %439 = add nsw i32 %.1364, %438
  %440 = sub nsw i32 %.2387, 2
  %441 = add nsw i32 %.0, %440
  %442 = icmp slt i32 %439, 4
  br i1 %442, label %443, label %444

; <label>:443:                                    ; preds = %437
  br label %444

; <label>:444:                                    ; preds = %443, %437
  %.2365 = phi i32 [ 4, %443 ], [ %439, %437 ]
  %445 = icmp slt i32 %441, 4
  br i1 %445, label %446, label %447

; <label>:446:                                    ; preds = %444
  br label %447

; <label>:447:                                    ; preds = %446, %444
  %.1 = phi i32 [ 4, %446 ], [ %441, %444 ]
  br label %448

; <label>:448:                                    ; preds = %447, %433
  %.3366 = phi i32 [ %.2365, %447 ], [ %.1364, %433 ]
  %.2 = phi i32 [ %.1, %447 ], [ %.0, %433 ]
  br label %449

; <label>:449:                                    ; preds = %448, %401
  %.4367 = phi i32 [ %.3366, %448 ], [ %.1364, %401 ]
  %.3 = phi i32 [ %.2, %448 ], [ %.0, %401 ]
  br label %450

; <label>:450:                                    ; preds = %449, %89, %87
  %.5397 = phi i32 [ %.2394, %449 ], [ %.1393, %89 ], [ %.1393, %87 ]
  %.5390 = phi i32 [ %.2387, %449 ], [ %.1386, %89 ], [ %.1386, %87 ]
  %.5368 = phi i32 [ %.4367, %449 ], [ %.1364, %89 ], [ %.1364, %87 ]
  %.4 = phi i32 [ %.3, %449 ], [ %.0, %89 ], [ %.0, %87 ]
  %451 = icmp eq i32 %81, 2
  br i1 %451, label %452, label %736

; <label>:452:                                    ; preds = %450
  %453 = sub nsw i32 %.5368, 1
  %454 = mul nsw i32 %453, %2
  %455 = add nsw i32 %454, %.4
  %456 = sub nsw i32 %455, 1
  %457 = getelementptr inbounds i8, i8* %1, i32 %456
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = icmp slt i32 %459, 8
  %461 = zext i1 %460 to i32
  %462 = sub nsw i32 %.5368, 1
  %463 = mul nsw i32 %462, %2
  %464 = add nsw i32 %463, %.4
  %465 = add nsw i32 %464, 1
  %466 = getelementptr inbounds i8, i8* %1, i32 %465
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = icmp slt i32 %468, 8
  %470 = zext i1 %469 to i32
  %471 = add nsw i32 %.5368, 1
  %472 = mul nsw i32 %471, %2
  %473 = add nsw i32 %472, %.4
  %474 = sub nsw i32 %473, 1
  %475 = getelementptr inbounds i8, i8* %1, i32 %474
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp slt i32 %477, 8
  %479 = zext i1 %478 to i32
  %480 = add nsw i32 %.5368, 1
  %481 = mul nsw i32 %480, %2
  %482 = add nsw i32 %481, %.4
  %483 = add nsw i32 %482, 1
  %484 = getelementptr inbounds i8, i8* %1, i32 %483
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i32
  %487 = icmp slt i32 %486, 8
  %488 = zext i1 %487 to i32
  %489 = add nsw i32 %461, %470
  %490 = add nsw i32 %489, %479
  %491 = add nsw i32 %490, %488
  %492 = icmp eq i32 %491, 2
  br i1 %492, label %493, label %595

; <label>:493:                                    ; preds = %452
  %494 = or i32 %461, %488
  %495 = or i32 %470, %479
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %595

; <label>:498:                                    ; preds = %493
  %499 = icmp ne i32 %461, 0
  br i1 %499, label %500, label %505

; <label>:500:                                    ; preds = %498
  %501 = icmp ne i32 %470, 0
  br i1 %501, label %502, label %503

; <label>:502:                                    ; preds = %500
  br label %504

; <label>:503:                                    ; preds = %500
  br label %504

; <label>:504:                                    ; preds = %503, %502
  %.1382 = phi i32 [ 0, %502 ], [ -1, %503 ]
  %.1378 = phi i32 [ -1, %502 ], [ 0, %503 ]
  br label %510

; <label>:505:                                    ; preds = %498
  %506 = icmp ne i32 %470, 0
  br i1 %506, label %507, label %508

; <label>:507:                                    ; preds = %505
  br label %509

; <label>:508:                                    ; preds = %505
  br label %509

; <label>:509:                                    ; preds = %508, %507
  %.2383 = phi i32 [ 1, %507 ], [ 0, %508 ]
  %.2379 = phi i32 [ 0, %507 ], [ 1, %508 ]
  br label %510

; <label>:510:                                    ; preds = %509, %504
  %.3384 = phi i32 [ %.1382, %504 ], [ %.2383, %509 ]
  %.3380 = phi i32 [ %.1378, %504 ], [ %.2379, %509 ]
  %511 = add nsw i32 %.5368, %.3380
  %512 = mul nsw i32 %511, %2
  %513 = add nsw i32 %512, %.4
  %514 = add nsw i32 %513, %.3384
  %515 = getelementptr inbounds i32, i32* %0, i32 %514
  %516 = load i32, i32* %515, align 4
  %517 = sitofp i32 %516 to float
  %518 = sitofp i32 %24 to float
  %519 = fdiv float %517, %518
  %520 = fpext float %519 to double
  %521 = fcmp ogt double %520, 7.000000e-01
  br i1 %521, label %522, label %594

; <label>:522:                                    ; preds = %510
  %523 = icmp eq i32 %.3384, 0
  br i1 %523, label %524, label %553

; <label>:524:                                    ; preds = %522
  %525 = mul nsw i32 2, %.3380
  %526 = add nsw i32 %.5368, %525
  %527 = mul nsw i32 %526, %2
  %528 = add nsw i32 %527, %.4
  %529 = getelementptr inbounds i8, i8* %1, i32 %528
  %530 = load i8, i8* %529, align 1
  %531 = zext i8 %530 to i32
  %532 = icmp sgt i32 %531, 7
  br i1 %532, label %533, label %553

; <label>:533:                                    ; preds = %524
  %534 = mul nsw i32 2, %.3380
  %535 = add nsw i32 %.5368, %534
  %536 = mul nsw i32 %535, %2
  %537 = add nsw i32 %536, %.4
  %538 = sub nsw i32 %537, 1
  %539 = getelementptr inbounds i8, i8* %1, i32 %538
  %540 = load i8, i8* %539, align 1
  %541 = zext i8 %540 to i32
  %542 = icmp sgt i32 %541, 7
  br i1 %542, label %543, label %553

; <label>:543:                                    ; preds = %533
  %544 = mul nsw i32 2, %.3380
  %545 = add nsw i32 %.5368, %544
  %546 = mul nsw i32 %545, %2
  %547 = add nsw i32 %546, %.4
  %548 = add nsw i32 %547, 1
  %549 = getelementptr inbounds i8, i8* %1, i32 %548
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  %552 = icmp sgt i32 %551, 7
  br i1 %552, label %584, label %553

; <label>:553:                                    ; preds = %543, %533, %524, %522
  %554 = icmp eq i32 %.3380, 0
  br i1 %554, label %555, label %593

; <label>:555:                                    ; preds = %553
  %556 = mul nsw i32 %.5368, %2
  %557 = add nsw i32 %556, %.4
  %558 = mul nsw i32 2, %.3384
  %559 = add nsw i32 %557, %558
  %560 = getelementptr inbounds i8, i8* %1, i32 %559
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i32
  %563 = icmp sgt i32 %562, 7
  br i1 %563, label %564, label %593

; <label>:564:                                    ; preds = %555
  %565 = add nsw i32 %.5368, 1
  %566 = mul nsw i32 %565, %2
  %567 = add nsw i32 %566, %.4
  %568 = mul nsw i32 2, %.3384
  %569 = add nsw i32 %567, %568
  %570 = getelementptr inbounds i8, i8* %1, i32 %569
  %571 = load i8, i8* %570, align 1
  %572 = zext i8 %571 to i32
  %573 = icmp sgt i32 %572, 7
  br i1 %573, label %574, label %593

; <label>:574:                                    ; preds = %564
  %575 = sub nsw i32 %.5368, 1
  %576 = mul nsw i32 %575, %2
  %577 = add nsw i32 %576, %.4
  %578 = mul nsw i32 2, %.3384
  %579 = add nsw i32 %577, %578
  %580 = getelementptr inbounds i8, i8* %1, i32 %579
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp sgt i32 %582, 7
  br i1 %583, label %584, label %593

; <label>:584:                                    ; preds = %574, %543
  %585 = mul nsw i32 %.5368, %2
  %586 = add nsw i32 %585, %.4
  %587 = getelementptr inbounds i8, i8* %1, i32 %586
  store i8 100, i8* %587, align 1
  %588 = add nsw i32 %.5368, %.3380
  %589 = mul nsw i32 %588, %2
  %590 = add nsw i32 %589, %.4
  %591 = add nsw i32 %590, %.3384
  %592 = getelementptr inbounds i8, i8* %1, i32 %591
  store i8 3, i8* %592, align 1
  br label %593

; <label>:593:                                    ; preds = %584, %574, %564, %555, %553
  br label %594

; <label>:594:                                    ; preds = %593, %510
  br label %735

; <label>:595:                                    ; preds = %493, %452
  %596 = sub nsw i32 %.5368, 1
  %597 = mul nsw i32 %596, %2
  %598 = add nsw i32 %597, %.4
  %599 = getelementptr inbounds i8, i8* %1, i32 %598
  %600 = load i8, i8* %599, align 1
  %601 = zext i8 %600 to i32
  %602 = icmp slt i32 %601, 8
  %603 = zext i1 %602 to i32
  %604 = mul nsw i32 %.5368, %2
  %605 = add nsw i32 %604, %.4
  %606 = add nsw i32 %605, 1
  %607 = getelementptr inbounds i8, i8* %1, i32 %606
  %608 = load i8, i8* %607, align 1
  %609 = zext i8 %608 to i32
  %610 = icmp slt i32 %609, 8
  %611 = zext i1 %610 to i32
  %612 = add nsw i32 %.5368, 1
  %613 = mul nsw i32 %612, %2
  %614 = add nsw i32 %613, %.4
  %615 = getelementptr inbounds i8, i8* %1, i32 %614
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i32
  %618 = icmp slt i32 %617, 8
  %619 = zext i1 %618 to i32
  %620 = mul nsw i32 %.5368, %2
  %621 = add nsw i32 %620, %.4
  %622 = sub nsw i32 %621, 1
  %623 = getelementptr inbounds i8, i8* %1, i32 %622
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp slt i32 %625, 8
  %627 = zext i1 %626 to i32
  %628 = add nsw i32 %603, %611
  %629 = add nsw i32 %628, %619
  %630 = add nsw i32 %629, %627
  %631 = icmp eq i32 %630, 2
  br i1 %631, label %632, label %734

; <label>:632:                                    ; preds = %595
  %633 = or i32 %627, %611
  %634 = or i32 %603, %619
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %734

; <label>:637:                                    ; preds = %632
  %638 = sub nsw i32 %.5368, 2
  %639 = mul nsw i32 %638, %2
  %640 = add nsw i32 %639, %.4
  %641 = sub nsw i32 %640, 1
  %642 = getelementptr inbounds i8, i8* %1, i32 %641
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i32
  %645 = icmp slt i32 %644, 8
  %646 = zext i1 %645 to i32
  %647 = sub nsw i32 %.5368, 2
  %648 = mul nsw i32 %647, %2
  %649 = add nsw i32 %648, %.4
  %650 = add nsw i32 %649, 1
  %651 = getelementptr inbounds i8, i8* %1, i32 %650
  %652 = load i8, i8* %651, align 1
  %653 = zext i8 %652 to i32
  %654 = icmp slt i32 %653, 8
  %655 = zext i1 %654 to i32
  %656 = or i32 %646, %655
  %657 = and i32 %603, %656
  %658 = sub nsw i32 %.5368, 1
  %659 = mul nsw i32 %658, %2
  %660 = add nsw i32 %659, %.4
  %661 = sub nsw i32 %660, 2
  %662 = getelementptr inbounds i8, i8* %1, i32 %661
  %663 = load i8, i8* %662, align 1
  %664 = zext i8 %663 to i32
  %665 = icmp slt i32 %664, 8
  %666 = zext i1 %665 to i32
  %667 = add nsw i32 %.5368, 1
  %668 = mul nsw i32 %667, %2
  %669 = add nsw i32 %668, %.4
  %670 = sub nsw i32 %669, 2
  %671 = getelementptr inbounds i8, i8* %1, i32 %670
  %672 = load i8, i8* %671, align 1
  %673 = zext i8 %672 to i32
  %674 = icmp slt i32 %673, 8
  %675 = zext i1 %674 to i32
  %676 = or i32 %666, %675
  %677 = and i32 %627, %676
  %678 = or i32 %657, %677
  %679 = sub nsw i32 %.5368, 1
  %680 = mul nsw i32 %679, %2
  %681 = add nsw i32 %680, %.4
  %682 = add nsw i32 %681, 2
  %683 = getelementptr inbounds i8, i8* %1, i32 %682
  %684 = load i8, i8* %683, align 1
  %685 = zext i8 %684 to i32
  %686 = icmp slt i32 %685, 8
  %687 = zext i1 %686 to i32
  %688 = add nsw i32 %.5368, 1
  %689 = mul nsw i32 %688, %2
  %690 = add nsw i32 %689, %.4
  %691 = add nsw i32 %690, 2
  %692 = getelementptr inbounds i8, i8* %1, i32 %691
  %693 = load i8, i8* %692, align 1
  %694 = zext i8 %693 to i32
  %695 = icmp slt i32 %694, 8
  %696 = zext i1 %695 to i32
  %697 = or i32 %687, %696
  %698 = and i32 %611, %697
  %699 = or i32 %678, %698
  %700 = add nsw i32 %.5368, 2
  %701 = mul nsw i32 %700, %2
  %702 = add nsw i32 %701, %.4
  %703 = sub nsw i32 %702, 1
  %704 = getelementptr inbounds i8, i8* %1, i32 %703
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i32
  %707 = icmp slt i32 %706, 8
  %708 = zext i1 %707 to i32
  %709 = add nsw i32 %.5368, 2
  %710 = mul nsw i32 %709, %2
  %711 = add nsw i32 %710, %.4
  %712 = add nsw i32 %711, 1
  %713 = getelementptr inbounds i8, i8* %1, i32 %712
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i32
  %716 = icmp slt i32 %715, 8
  %717 = zext i1 %716 to i32
  %718 = or i32 %708, %717
  %719 = and i32 %619, %718
  %720 = or i32 %699, %719
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %722, label %734

; <label>:722:                                    ; preds = %637
  %723 = mul nsw i32 %.5368, %2
  %724 = add nsw i32 %723, %.4
  %725 = getelementptr inbounds i8, i8* %1, i32 %724
  store i8 100, i8* %725, align 1
  %726 = add nsw i32 %.5368, -1
  %727 = sub nsw i32 %.4, 2
  %728 = icmp slt i32 %726, 4
  br i1 %728, label %729, label %730

; <label>:729:                                    ; preds = %722
  br label %730

; <label>:730:                                    ; preds = %729, %722
  %.6369 = phi i32 [ 4, %729 ], [ %726, %722 ]
  %731 = icmp slt i32 %727, 4
  br i1 %731, label %732, label %733

; <label>:732:                                    ; preds = %730
  br label %733

; <label>:733:                                    ; preds = %732, %730
  %.5 = phi i32 [ 4, %732 ], [ %727, %730 ]
  br label %734

; <label>:734:                                    ; preds = %733, %637, %632, %595
  %.7370 = phi i32 [ %.6369, %733 ], [ %.5368, %637 ], [ %.5368, %632 ], [ %.5368, %595 ]
  %.6 = phi i32 [ %.5, %733 ], [ %.4, %637 ], [ %.4, %632 ], [ %.4, %595 ]
  br label %735

; <label>:735:                                    ; preds = %734, %594
  %.8371 = phi i32 [ %.5368, %594 ], [ %.7370, %734 ]
  %.7 = phi i32 [ %.4, %594 ], [ %.6, %734 ]
  br label %736

; <label>:736:                                    ; preds = %735, %450
  %.9372 = phi i32 [ %.8371, %735 ], [ %.5368, %450 ]
  %.8 = phi i32 [ %.7, %735 ], [ %.4, %450 ]
  %737 = icmp sgt i32 %81, 2
  br i1 %737, label %738, label %842

; <label>:738:                                    ; preds = %736
  %739 = sub nsw i32 %.9372, 1
  %740 = mul nsw i32 %739, %2
  %741 = add nsw i32 %740, %.8
  %742 = getelementptr inbounds i8, i8* %1, i32 %741
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i32
  %745 = icmp slt i32 %744, 8
  %746 = zext i1 %745 to i32
  %747 = mul nsw i32 %.9372, %2
  %748 = add nsw i32 %747, %.8
  %749 = add nsw i32 %748, 1
  %750 = getelementptr inbounds i8, i8* %1, i32 %749
  %751 = load i8, i8* %750, align 1
  %752 = zext i8 %751 to i32
  %753 = icmp slt i32 %752, 8
  %754 = zext i1 %753 to i32
  %755 = add nsw i32 %.9372, 1
  %756 = mul nsw i32 %755, %2
  %757 = add nsw i32 %756, %.8
  %758 = getelementptr inbounds i8, i8* %1, i32 %757
  %759 = load i8, i8* %758, align 1
  %760 = zext i8 %759 to i32
  %761 = icmp slt i32 %760, 8
  %762 = zext i1 %761 to i32
  %763 = mul nsw i32 %.9372, %2
  %764 = add nsw i32 %763, %.8
  %765 = sub nsw i32 %764, 1
  %766 = getelementptr inbounds i8, i8* %1, i32 %765
  %767 = load i8, i8* %766, align 1
  %768 = zext i8 %767 to i32
  %769 = icmp slt i32 %768, 8
  %770 = zext i1 %769 to i32
  %771 = add nsw i32 %746, %754
  %772 = add nsw i32 %771, %762
  %773 = add nsw i32 %772, %770
  %774 = icmp sgt i32 %773, 1
  br i1 %774, label %775, label %841

; <label>:775:                                    ; preds = %738
  %776 = sub nsw i32 %.9372, 1
  %777 = mul nsw i32 %776, %2
  %778 = add nsw i32 %777, %.8
  %779 = sub nsw i32 %778, 1
  %780 = getelementptr inbounds i8, i8* %1, i32 %779
  %781 = load i8, i8* %780, align 1
  %782 = zext i8 %781 to i32
  %783 = icmp slt i32 %782, 8
  %784 = zext i1 %783 to i32
  %785 = sub nsw i32 %.9372, 1
  %786 = mul nsw i32 %785, %2
  %787 = add nsw i32 %786, %.8
  %788 = add nsw i32 %787, 1
  %789 = getelementptr inbounds i8, i8* %1, i32 %788
  %790 = load i8, i8* %789, align 1
  %791 = zext i8 %790 to i32
  %792 = icmp slt i32 %791, 8
  %793 = zext i1 %792 to i32
  %794 = add nsw i32 %.9372, 1
  %795 = mul nsw i32 %794, %2
  %796 = add nsw i32 %795, %.8
  %797 = sub nsw i32 %796, 1
  %798 = getelementptr inbounds i8, i8* %1, i32 %797
  %799 = load i8, i8* %798, align 1
  %800 = zext i8 %799 to i32
  %801 = icmp slt i32 %800, 8
  %802 = zext i1 %801 to i32
  %803 = add nsw i32 %.9372, 1
  %804 = mul nsw i32 %803, %2
  %805 = add nsw i32 %804, %.8
  %806 = add nsw i32 %805, 1
  %807 = getelementptr inbounds i8, i8* %1, i32 %806
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i32
  %810 = icmp slt i32 %809, 8
  %811 = zext i1 %810 to i32
  %812 = or i32 %784, %746
  %813 = or i32 %793, %754
  %814 = or i32 %811, %762
  %815 = or i32 %802, %770
  %816 = add nsw i32 %812, %813
  %817 = add nsw i32 %816, %814
  %818 = add nsw i32 %817, %815
  %819 = and i32 %746, %813
  %820 = and i32 %754, %814
  %821 = add nsw i32 %819, %820
  %822 = and i32 %762, %815
  %823 = add nsw i32 %821, %822
  %824 = and i32 %770, %812
  %825 = add nsw i32 %823, %824
  %826 = sub nsw i32 %818, %825
  %827 = icmp slt i32 %826, 2
  br i1 %827, label %828, label %840

; <label>:828:                                    ; preds = %775
  %829 = mul nsw i32 %.9372, %2
  %830 = add nsw i32 %829, %.8
  %831 = getelementptr inbounds i8, i8* %1, i32 %830
  store i8 100, i8* %831, align 1
  %832 = add nsw i32 %.9372, -1
  %833 = sub nsw i32 %.8, 2
  %834 = icmp slt i32 %832, 4
  br i1 %834, label %835, label %836

; <label>:835:                                    ; preds = %828
  br label %836

; <label>:836:                                    ; preds = %835, %828
  %.10373 = phi i32 [ 4, %835 ], [ %832, %828 ]
  %837 = icmp slt i32 %833, 4
  br i1 %837, label %838, label %839

; <label>:838:                                    ; preds = %836
  br label %839

; <label>:839:                                    ; preds = %838, %836
  %.9 = phi i32 [ 4, %838 ], [ %833, %836 ]
  br label %840

; <label>:840:                                    ; preds = %839, %775
  %.11374 = phi i32 [ %.10373, %839 ], [ %.9372, %775 ]
  %.10 = phi i32 [ %.9, %839 ], [ %.8, %775 ]
  br label %841

; <label>:841:                                    ; preds = %840, %738
  %.12375 = phi i32 [ %.11374, %840 ], [ %.9372, %738 ]
  %.11 = phi i32 [ %.10, %840 ], [ %.8, %738 ]
  br label %842

; <label>:842:                                    ; preds = %841, %736
  %.13376 = phi i32 [ %.12375, %841 ], [ %.9372, %736 ]
  %.12 = phi i32 [ %.11, %841 ], [ %.8, %736 ]
  br label %843

; <label>:843:                                    ; preds = %842, %13
  %.6398 = phi i32 [ %.5397, %842 ], [ %.1393, %13 ]
  %.6391 = phi i32 [ %.5390, %842 ], [ %.1386, %13 ]
  %.14 = phi i32 [ %.13376, %842 ], [ %.1364, %13 ]
  %.13 = phi i32 [ %.12, %842 ], [ %.0, %13 ]
  br label %844

; <label>:844:                                    ; preds = %843
  %845 = add nsw i32 %.13, 1
  br label %10

; <label>:846:                                    ; preds = %10
  br label %847

; <label>:847:                                    ; preds = %846
  %848 = add nsw i32 %.1364, 1
  br label %6

; <label>:849:                                    ; preds = %6
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_edges(i8*, i32*, i8*, i8*, i32, i32, i32) #0 {
  %8 = bitcast i32* %1 to i8*
  %9 = mul nsw i32 %5, %6
  %10 = mul i32 %9, 4
  call void @llvm.memset.p0i8.i32(i8* %8, i8 0, i32 %10, i32 4, i1 false)
  br label %11

; <label>:11:                                     ; preds = %333, %7
  %.0732 = phi i32 [ 3, %7 ], [ %334, %333 ]
  %12 = sub nsw i32 %6, 3
  %13 = icmp slt i32 %.0732, %12
  br i1 %13, label %14, label %335

; <label>:14:                                     ; preds = %11
  br label %15

; <label>:15:                                     ; preds = %330, %14
  %.0730 = phi i32 [ 3, %14 ], [ %331, %330 ]
  %16 = sub nsw i32 %5, 3
  %17 = icmp slt i32 %.0730, %16
  br i1 %17, label %18, label %332

; <label>:18:                                     ; preds = %15
  %19 = sub nsw i32 %.0732, 3
  %20 = mul nsw i32 %19, %5
  %21 = getelementptr inbounds i8, i8* %0, i32 %20
  %22 = getelementptr inbounds i8, i8* %21, i32 %.0730
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  %24 = mul nsw i32 %.0732, %5
  %25 = add nsw i32 %24, %.0730
  %26 = getelementptr inbounds i8, i8* %0, i32 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, i8* %3, i32 %28
  %30 = getelementptr inbounds i8, i8* %23, i32 1
  %31 = load i8, i8* %23, align 1
  %32 = zext i8 %31 to i32
  %33 = sub i32 0, %32
  %34 = getelementptr inbounds i8, i8* %29, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 100, %36
  %38 = getelementptr inbounds i8, i8* %30, i32 1
  %39 = load i8, i8* %30, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 0, %40
  %42 = getelementptr inbounds i8, i8* %29, i32 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %37, %44
  %46 = load i8, i8* %38, align 1
  %47 = zext i8 %46 to i32
  %48 = sub i32 0, %47
  %49 = getelementptr inbounds i8, i8* %29, i32 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %45, %51
  %53 = sub nsw i32 %5, 3
  %54 = getelementptr inbounds i8, i8* %38, i32 %53
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = sub i32 0, %57
  %59 = getelementptr inbounds i8, i8* %29, i32 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %52, %61
  %63 = getelementptr inbounds i8, i8* %55, i32 1
  %64 = load i8, i8* %55, align 1
  %65 = zext i8 %64 to i32
  %66 = sub i32 0, %65
  %67 = getelementptr inbounds i8, i8* %29, i32 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %62, %69
  %71 = getelementptr inbounds i8, i8* %63, i32 1
  %72 = load i8, i8* %63, align 1
  %73 = zext i8 %72 to i32
  %74 = sub i32 0, %73
  %75 = getelementptr inbounds i8, i8* %29, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = getelementptr inbounds i8, i8* %71, i32 1
  %80 = load i8, i8* %71, align 1
  %81 = zext i8 %80 to i32
  %82 = sub i32 0, %81
  %83 = getelementptr inbounds i8, i8* %29, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = load i8, i8* %79, align 1
  %88 = zext i8 %87 to i32
  %89 = sub i32 0, %88
  %90 = getelementptr inbounds i8, i8* %29, i32 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %86, %92
  %94 = sub nsw i32 %5, 5
  %95 = getelementptr inbounds i8, i8* %79, i32 %94
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = sub i32 0, %98
  %100 = getelementptr inbounds i8, i8* %29, i32 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %93, %102
  %104 = getelementptr inbounds i8, i8* %96, i32 1
  %105 = load i8, i8* %96, align 1
  %106 = zext i8 %105 to i32
  %107 = sub i32 0, %106
  %108 = getelementptr inbounds i8, i8* %29, i32 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %103, %110
  %112 = getelementptr inbounds i8, i8* %104, i32 1
  %113 = load i8, i8* %104, align 1
  %114 = zext i8 %113 to i32
  %115 = sub i32 0, %114
  %116 = getelementptr inbounds i8, i8* %29, i32 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %111, %118
  %120 = getelementptr inbounds i8, i8* %112, i32 1
  %121 = load i8, i8* %112, align 1
  %122 = zext i8 %121 to i32
  %123 = sub i32 0, %122
  %124 = getelementptr inbounds i8, i8* %29, i32 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %119, %126
  %128 = getelementptr inbounds i8, i8* %120, i32 1
  %129 = load i8, i8* %120, align 1
  %130 = zext i8 %129 to i32
  %131 = sub i32 0, %130
  %132 = getelementptr inbounds i8, i8* %29, i32 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %127, %134
  %136 = getelementptr inbounds i8, i8* %128, i32 1
  %137 = load i8, i8* %128, align 1
  %138 = zext i8 %137 to i32
  %139 = sub i32 0, %138
  %140 = getelementptr inbounds i8, i8* %29, i32 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %135, %142
  %144 = load i8, i8* %136, align 1
  %145 = zext i8 %144 to i32
  %146 = sub i32 0, %145
  %147 = getelementptr inbounds i8, i8* %29, i32 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %143, %149
  %151 = sub nsw i32 %5, 6
  %152 = getelementptr inbounds i8, i8* %136, i32 %151
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  %154 = load i8, i8* %152, align 1
  %155 = zext i8 %154 to i32
  %156 = sub i32 0, %155
  %157 = getelementptr inbounds i8, i8* %29, i32 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %150, %159
  %161 = getelementptr inbounds i8, i8* %153, i32 1
  %162 = load i8, i8* %153, align 1
  %163 = zext i8 %162 to i32
  %164 = sub i32 0, %163
  %165 = getelementptr inbounds i8, i8* %29, i32 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = add nsw i32 %160, %167
  %169 = load i8, i8* %161, align 1
  %170 = zext i8 %169 to i32
  %171 = sub i32 0, %170
  %172 = getelementptr inbounds i8, i8* %29, i32 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %168, %174
  %176 = getelementptr inbounds i8, i8* %161, i32 2
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  %178 = load i8, i8* %176, align 1
  %179 = zext i8 %178 to i32
  %180 = sub i32 0, %179
  %181 = getelementptr inbounds i8, i8* %29, i32 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %175, %183
  %185 = getelementptr inbounds i8, i8* %177, i32 1
  %186 = load i8, i8* %177, align 1
  %187 = zext i8 %186 to i32
  %188 = sub i32 0, %187
  %189 = getelementptr inbounds i8, i8* %29, i32 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = add nsw i32 %184, %191
  %193 = load i8, i8* %185, align 1
  %194 = zext i8 %193 to i32
  %195 = sub i32 0, %194
  %196 = getelementptr inbounds i8, i8* %29, i32 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = add nsw i32 %192, %198
  %200 = sub nsw i32 %5, 6
  %201 = getelementptr inbounds i8, i8* %185, i32 %200
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  %203 = load i8, i8* %201, align 1
  %204 = zext i8 %203 to i32
  %205 = sub i32 0, %204
  %206 = getelementptr inbounds i8, i8* %29, i32 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %199, %208
  %210 = getelementptr inbounds i8, i8* %202, i32 1
  %211 = load i8, i8* %202, align 1
  %212 = zext i8 %211 to i32
  %213 = sub i32 0, %212
  %214 = getelementptr inbounds i8, i8* %29, i32 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 %209, %216
  %218 = getelementptr inbounds i8, i8* %210, i32 1
  %219 = load i8, i8* %210, align 1
  %220 = zext i8 %219 to i32
  %221 = sub i32 0, %220
  %222 = getelementptr inbounds i8, i8* %29, i32 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %217, %224
  %226 = getelementptr inbounds i8, i8* %218, i32 1
  %227 = load i8, i8* %218, align 1
  %228 = zext i8 %227 to i32
  %229 = sub i32 0, %228
  %230 = getelementptr inbounds i8, i8* %29, i32 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = add nsw i32 %225, %232
  %234 = getelementptr inbounds i8, i8* %226, i32 1
  %235 = load i8, i8* %226, align 1
  %236 = zext i8 %235 to i32
  %237 = sub i32 0, %236
  %238 = getelementptr inbounds i8, i8* %29, i32 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %233, %240
  %242 = getelementptr inbounds i8, i8* %234, i32 1
  %243 = load i8, i8* %234, align 1
  %244 = zext i8 %243 to i32
  %245 = sub i32 0, %244
  %246 = getelementptr inbounds i8, i8* %29, i32 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %241, %248
  %250 = load i8, i8* %242, align 1
  %251 = zext i8 %250 to i32
  %252 = sub i32 0, %251
  %253 = getelementptr inbounds i8, i8* %29, i32 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = add nsw i32 %249, %255
  %257 = sub nsw i32 %5, 5
  %258 = getelementptr inbounds i8, i8* %242, i32 %257
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  %260 = load i8, i8* %258, align 1
  %261 = zext i8 %260 to i32
  %262 = sub i32 0, %261
  %263 = getelementptr inbounds i8, i8* %29, i32 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = add nsw i32 %256, %265
  %267 = getelementptr inbounds i8, i8* %259, i32 1
  %268 = load i8, i8* %259, align 1
  %269 = zext i8 %268 to i32
  %270 = sub i32 0, %269
  %271 = getelementptr inbounds i8, i8* %29, i32 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = add nsw i32 %266, %273
  %275 = getelementptr inbounds i8, i8* %267, i32 1
  %276 = load i8, i8* %267, align 1
  %277 = zext i8 %276 to i32
  %278 = sub i32 0, %277
  %279 = getelementptr inbounds i8, i8* %29, i32 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = add nsw i32 %274, %281
  %283 = getelementptr inbounds i8, i8* %275, i32 1
  %284 = load i8, i8* %275, align 1
  %285 = zext i8 %284 to i32
  %286 = sub i32 0, %285
  %287 = getelementptr inbounds i8, i8* %29, i32 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = add nsw i32 %282, %289
  %291 = load i8, i8* %283, align 1
  %292 = zext i8 %291 to i32
  %293 = sub i32 0, %292
  %294 = getelementptr inbounds i8, i8* %29, i32 %293
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = add nsw i32 %290, %296
  %298 = sub nsw i32 %5, 3
  %299 = getelementptr inbounds i8, i8* %283, i32 %298
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  %301 = load i8, i8* %299, align 1
  %302 = zext i8 %301 to i32
  %303 = sub i32 0, %302
  %304 = getelementptr inbounds i8, i8* %29, i32 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = add nsw i32 %297, %306
  %308 = getelementptr inbounds i8, i8* %300, i32 1
  %309 = load i8, i8* %300, align 1
  %310 = zext i8 %309 to i32
  %311 = sub i32 0, %310
  %312 = getelementptr inbounds i8, i8* %29, i32 %311
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = add nsw i32 %307, %314
  %316 = load i8, i8* %308, align 1
  %317 = zext i8 %316 to i32
  %318 = sub i32 0, %317
  %319 = getelementptr inbounds i8, i8* %29, i32 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = add nsw i32 %315, %321
  %323 = icmp sle i32 %322, %4
  br i1 %323, label %324, label %329

; <label>:324:                                    ; preds = %18
  %325 = sub nsw i32 %4, %322
  %326 = mul nsw i32 %.0732, %5
  %327 = add nsw i32 %326, %.0730
  %328 = getelementptr inbounds i32, i32* %1, i32 %327
  store i32 %325, i32* %328, align 4
  br label %329

; <label>:329:                                    ; preds = %324, %18
  br label %330

; <label>:330:                                    ; preds = %329
  %331 = add nsw i32 %.0730, 1
  br label %15

; <label>:332:                                    ; preds = %15
  br label %333

; <label>:333:                                    ; preds = %332
  %334 = add nsw i32 %.0732, 1
  br label %11

; <label>:335:                                    ; preds = %11
  br label %336

; <label>:336:                                    ; preds = %1338, %335
  %.1733 = phi i32 [ 4, %335 ], [ %1339, %1338 ]
  %337 = sub nsw i32 %6, 4
  %338 = icmp slt i32 %.1733, %337
  br i1 %338, label %339, label %1340

; <label>:339:                                    ; preds = %336
  br label %340

; <label>:340:                                    ; preds = %1335, %339
  %.1731 = phi i32 [ 4, %339 ], [ %1336, %1335 ]
  %341 = sub nsw i32 %5, 4
  %342 = icmp slt i32 %.1731, %341
  br i1 %342, label %343, label %1337

; <label>:343:                                    ; preds = %340
  %344 = mul nsw i32 %.1733, %5
  %345 = add nsw i32 %344, %.1731
  %346 = getelementptr inbounds i32, i32* %1, i32 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %1334

; <label>:349:                                    ; preds = %343
  %350 = mul nsw i32 %.1733, %5
  %351 = add nsw i32 %350, %.1731
  %352 = getelementptr inbounds i32, i32* %1, i32 %351
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %4, %353
  %355 = mul nsw i32 %.1733, %5
  %356 = add nsw i32 %355, %.1731
  %357 = getelementptr inbounds i8, i8* %0, i32 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = getelementptr inbounds i8, i8* %3, i32 %359
  %361 = icmp sgt i32 %354, 600
  br i1 %361, label %362, label %822

; <label>:362:                                    ; preds = %349
  %363 = sub nsw i32 %.1733, 3
  %364 = mul nsw i32 %363, %5
  %365 = getelementptr inbounds i8, i8* %0, i32 %364
  %366 = getelementptr inbounds i8, i8* %365, i32 %.1731
  %367 = getelementptr inbounds i8, i8* %366, i32 -1
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  %369 = load i8, i8* %367, align 1
  %370 = zext i8 %369 to i32
  %371 = sub i32 0, %370
  %372 = getelementptr inbounds i8, i8* %360, i32 %371
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = sub nsw i32 0, %374
  %376 = zext i8 %373 to i32
  %377 = mul nsw i32 3, %376
  %378 = sub nsw i32 0, %377
  %379 = getelementptr inbounds i8, i8* %368, i32 1
  %380 = load i8, i8* %368, align 1
  %381 = zext i8 %380 to i32
  %382 = sub i32 0, %381
  %383 = getelementptr inbounds i8, i8* %360, i32 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = mul nsw i32 3, %385
  %387 = sub nsw i32 %378, %386
  %388 = load i8, i8* %379, align 1
  %389 = zext i8 %388 to i32
  %390 = sub i32 0, %389
  %391 = getelementptr inbounds i8, i8* %360, i32 %390
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = add nsw i32 %375, %393
  %395 = zext i8 %392 to i32
  %396 = mul nsw i32 3, %395
  %397 = sub nsw i32 %387, %396
  %398 = sub nsw i32 %5, 3
  %399 = getelementptr inbounds i8, i8* %379, i32 %398
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  %401 = load i8, i8* %399, align 1
  %402 = zext i8 %401 to i32
  %403 = sub i32 0, %402
  %404 = getelementptr inbounds i8, i8* %360, i32 %403
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = mul nsw i32 2, %406
  %408 = sub nsw i32 %394, %407
  %409 = zext i8 %405 to i32
  %410 = mul nsw i32 2, %409
  %411 = sub nsw i32 %397, %410
  %412 = getelementptr inbounds i8, i8* %400, i32 1
  %413 = load i8, i8* %400, align 1
  %414 = zext i8 %413 to i32
  %415 = sub i32 0, %414
  %416 = getelementptr inbounds i8, i8* %360, i32 %415
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i32
  %419 = sub nsw i32 %408, %418
  %420 = zext i8 %417 to i32
  %421 = mul nsw i32 2, %420
  %422 = sub nsw i32 %411, %421
  %423 = getelementptr inbounds i8, i8* %412, i32 1
  %424 = load i8, i8* %412, align 1
  %425 = zext i8 %424 to i32
  %426 = sub i32 0, %425
  %427 = getelementptr inbounds i8, i8* %360, i32 %426
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = mul nsw i32 2, %429
  %431 = sub nsw i32 %422, %430
  %432 = getelementptr inbounds i8, i8* %423, i32 1
  %433 = load i8, i8* %423, align 1
  %434 = zext i8 %433 to i32
  %435 = sub i32 0, %434
  %436 = getelementptr inbounds i8, i8* %360, i32 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = add nsw i32 %419, %438
  %440 = zext i8 %437 to i32
  %441 = mul nsw i32 2, %440
  %442 = sub nsw i32 %431, %441
  %443 = load i8, i8* %432, align 1
  %444 = zext i8 %443 to i32
  %445 = sub i32 0, %444
  %446 = getelementptr inbounds i8, i8* %360, i32 %445
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  %449 = mul nsw i32 2, %448
  %450 = add nsw i32 %439, %449
  %451 = zext i8 %447 to i32
  %452 = mul nsw i32 2, %451
  %453 = sub nsw i32 %442, %452
  %454 = sub nsw i32 %5, 5
  %455 = getelementptr inbounds i8, i8* %432, i32 %454
  %456 = getelementptr inbounds i8, i8* %455, i32 1
  %457 = load i8, i8* %455, align 1
  %458 = zext i8 %457 to i32
  %459 = sub i32 0, %458
  %460 = getelementptr inbounds i8, i8* %360, i32 %459
  %461 = load i8, i8* %460, align 1
  %462 = zext i8 %461 to i32
  %463 = mul nsw i32 3, %462
  %464 = sub nsw i32 %450, %463
  %465 = zext i8 %461 to i32
  %466 = sub nsw i32 %453, %465
  %467 = getelementptr inbounds i8, i8* %456, i32 1
  %468 = load i8, i8* %456, align 1
  %469 = zext i8 %468 to i32
  %470 = sub i32 0, %469
  %471 = getelementptr inbounds i8, i8* %360, i32 %470
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  %474 = mul nsw i32 2, %473
  %475 = sub nsw i32 %464, %474
  %476 = zext i8 %472 to i32
  %477 = sub nsw i32 %466, %476
  %478 = getelementptr inbounds i8, i8* %467, i32 1
  %479 = load i8, i8* %467, align 1
  %480 = zext i8 %479 to i32
  %481 = sub i32 0, %480
  %482 = getelementptr inbounds i8, i8* %360, i32 %481
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i32
  %485 = sub nsw i32 %475, %484
  %486 = zext i8 %483 to i32
  %487 = sub nsw i32 %477, %486
  %488 = getelementptr inbounds i8, i8* %478, i32 1
  %489 = load i8, i8* %478, align 1
  %490 = zext i8 %489 to i32
  %491 = sub i32 0, %490
  %492 = getelementptr inbounds i8, i8* %360, i32 %491
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i32
  %495 = sub nsw i32 %487, %494
  %496 = getelementptr inbounds i8, i8* %488, i32 1
  %497 = load i8, i8* %488, align 1
  %498 = zext i8 %497 to i32
  %499 = sub i32 0, %498
  %500 = getelementptr inbounds i8, i8* %360, i32 %499
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = add nsw i32 %485, %502
  %504 = zext i8 %501 to i32
  %505 = sub nsw i32 %495, %504
  %506 = getelementptr inbounds i8, i8* %496, i32 1
  %507 = load i8, i8* %496, align 1
  %508 = zext i8 %507 to i32
  %509 = sub i32 0, %508
  %510 = getelementptr inbounds i8, i8* %360, i32 %509
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i32
  %513 = mul nsw i32 2, %512
  %514 = add nsw i32 %503, %513
  %515 = zext i8 %511 to i32
  %516 = sub nsw i32 %505, %515
  %517 = load i8, i8* %506, align 1
  %518 = zext i8 %517 to i32
  %519 = sub i32 0, %518
  %520 = getelementptr inbounds i8, i8* %360, i32 %519
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i32
  %523 = mul nsw i32 3, %522
  %524 = add nsw i32 %514, %523
  %525 = zext i8 %521 to i32
  %526 = sub nsw i32 %516, %525
  %527 = sub nsw i32 %5, 6
  %528 = getelementptr inbounds i8, i8* %506, i32 %527
  %529 = getelementptr inbounds i8, i8* %528, i32 1
  %530 = load i8, i8* %528, align 1
  %531 = zext i8 %530 to i32
  %532 = sub i32 0, %531
  %533 = getelementptr inbounds i8, i8* %360, i32 %532
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i32
  %536 = mul nsw i32 3, %535
  %537 = sub nsw i32 %524, %536
  %538 = getelementptr inbounds i8, i8* %529, i32 1
  %539 = load i8, i8* %529, align 1
  %540 = zext i8 %539 to i32
  %541 = sub i32 0, %540
  %542 = getelementptr inbounds i8, i8* %360, i32 %541
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  %545 = mul nsw i32 2, %544
  %546 = sub nsw i32 %537, %545
  %547 = load i8, i8* %538, align 1
  %548 = zext i8 %547 to i32
  %549 = sub i32 0, %548
  %550 = getelementptr inbounds i8, i8* %360, i32 %549
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  %553 = sub nsw i32 %546, %552
  %554 = getelementptr inbounds i8, i8* %538, i32 2
  %555 = getelementptr inbounds i8, i8* %554, i32 1
  %556 = load i8, i8* %554, align 1
  %557 = zext i8 %556 to i32
  %558 = sub i32 0, %557
  %559 = getelementptr inbounds i8, i8* %360, i32 %558
  %560 = load i8, i8* %559, align 1
  %561 = zext i8 %560 to i32
  %562 = add nsw i32 %553, %561
  %563 = getelementptr inbounds i8, i8* %555, i32 1
  %564 = load i8, i8* %555, align 1
  %565 = zext i8 %564 to i32
  %566 = sub i32 0, %565
  %567 = getelementptr inbounds i8, i8* %360, i32 %566
  %568 = load i8, i8* %567, align 1
  %569 = zext i8 %568 to i32
  %570 = mul nsw i32 2, %569
  %571 = add nsw i32 %562, %570
  %572 = load i8, i8* %563, align 1
  %573 = zext i8 %572 to i32
  %574 = sub i32 0, %573
  %575 = getelementptr inbounds i8, i8* %360, i32 %574
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i32
  %578 = mul nsw i32 3, %577
  %579 = add nsw i32 %571, %578
  %580 = sub nsw i32 %5, 6
  %581 = getelementptr inbounds i8, i8* %563, i32 %580
  %582 = getelementptr inbounds i8, i8* %581, i32 1
  %583 = load i8, i8* %581, align 1
  %584 = zext i8 %583 to i32
  %585 = sub i32 0, %584
  %586 = getelementptr inbounds i8, i8* %360, i32 %585
  %587 = load i8, i8* %586, align 1
  %588 = zext i8 %587 to i32
  %589 = mul nsw i32 3, %588
  %590 = sub nsw i32 %579, %589
  %591 = zext i8 %587 to i32
  %592 = add nsw i32 %526, %591
  %593 = getelementptr inbounds i8, i8* %582, i32 1
  %594 = load i8, i8* %582, align 1
  %595 = zext i8 %594 to i32
  %596 = sub i32 0, %595
  %597 = getelementptr inbounds i8, i8* %360, i32 %596
  %598 = load i8, i8* %597, align 1
  %599 = zext i8 %598 to i32
  %600 = mul nsw i32 2, %599
  %601 = sub nsw i32 %590, %600
  %602 = zext i8 %598 to i32
  %603 = add nsw i32 %592, %602
  %604 = getelementptr inbounds i8, i8* %593, i32 1
  %605 = load i8, i8* %593, align 1
  %606 = zext i8 %605 to i32
  %607 = sub i32 0, %606
  %608 = getelementptr inbounds i8, i8* %360, i32 %607
  %609 = load i8, i8* %608, align 1
  %610 = zext i8 %609 to i32
  %611 = sub nsw i32 %601, %610
  %612 = zext i8 %609 to i32
  %613 = add nsw i32 %603, %612
  %614 = getelementptr inbounds i8, i8* %604, i32 1
  %615 = load i8, i8* %604, align 1
  %616 = zext i8 %615 to i32
  %617 = sub i32 0, %616
  %618 = getelementptr inbounds i8, i8* %360, i32 %617
  %619 = load i8, i8* %618, align 1
  %620 = zext i8 %619 to i32
  %621 = add nsw i32 %613, %620
  %622 = getelementptr inbounds i8, i8* %614, i32 1
  %623 = load i8, i8* %614, align 1
  %624 = zext i8 %623 to i32
  %625 = sub i32 0, %624
  %626 = getelementptr inbounds i8, i8* %360, i32 %625
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  %629 = add nsw i32 %611, %628
  %630 = zext i8 %627 to i32
  %631 = add nsw i32 %621, %630
  %632 = getelementptr inbounds i8, i8* %622, i32 1
  %633 = load i8, i8* %622, align 1
  %634 = zext i8 %633 to i32
  %635 = sub i32 0, %634
  %636 = getelementptr inbounds i8, i8* %360, i32 %635
  %637 = load i8, i8* %636, align 1
  %638 = zext i8 %637 to i32
  %639 = mul nsw i32 2, %638
  %640 = add nsw i32 %629, %639
  %641 = zext i8 %637 to i32
  %642 = add nsw i32 %631, %641
  %643 = load i8, i8* %632, align 1
  %644 = zext i8 %643 to i32
  %645 = sub i32 0, %644
  %646 = getelementptr inbounds i8, i8* %360, i32 %645
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  %649 = mul nsw i32 3, %648
  %650 = add nsw i32 %640, %649
  %651 = zext i8 %647 to i32
  %652 = add nsw i32 %642, %651
  %653 = sub nsw i32 %5, 5
  %654 = getelementptr inbounds i8, i8* %632, i32 %653
  %655 = getelementptr inbounds i8, i8* %654, i32 1
  %656 = load i8, i8* %654, align 1
  %657 = zext i8 %656 to i32
  %658 = sub i32 0, %657
  %659 = getelementptr inbounds i8, i8* %360, i32 %658
  %660 = load i8, i8* %659, align 1
  %661 = zext i8 %660 to i32
  %662 = mul nsw i32 2, %661
  %663 = sub nsw i32 %650, %662
  %664 = zext i8 %660 to i32
  %665 = mul nsw i32 2, %664
  %666 = add nsw i32 %652, %665
  %667 = getelementptr inbounds i8, i8* %655, i32 1
  %668 = load i8, i8* %655, align 1
  %669 = zext i8 %668 to i32
  %670 = sub i32 0, %669
  %671 = getelementptr inbounds i8, i8* %360, i32 %670
  %672 = load i8, i8* %671, align 1
  %673 = zext i8 %672 to i32
  %674 = sub nsw i32 %663, %673
  %675 = zext i8 %672 to i32
  %676 = mul nsw i32 2, %675
  %677 = add nsw i32 %666, %676
  %678 = getelementptr inbounds i8, i8* %667, i32 1
  %679 = load i8, i8* %667, align 1
  %680 = zext i8 %679 to i32
  %681 = sub i32 0, %680
  %682 = getelementptr inbounds i8, i8* %360, i32 %681
  %683 = load i8, i8* %682, align 1
  %684 = zext i8 %683 to i32
  %685 = mul nsw i32 2, %684
  %686 = add nsw i32 %677, %685
  %687 = getelementptr inbounds i8, i8* %678, i32 1
  %688 = load i8, i8* %678, align 1
  %689 = zext i8 %688 to i32
  %690 = sub i32 0, %689
  %691 = getelementptr inbounds i8, i8* %360, i32 %690
  %692 = load i8, i8* %691, align 1
  %693 = zext i8 %692 to i32
  %694 = add nsw i32 %674, %693
  %695 = zext i8 %692 to i32
  %696 = mul nsw i32 2, %695
  %697 = add nsw i32 %686, %696
  %698 = load i8, i8* %687, align 1
  %699 = zext i8 %698 to i32
  %700 = sub i32 0, %699
  %701 = getelementptr inbounds i8, i8* %360, i32 %700
  %702 = load i8, i8* %701, align 1
  %703 = zext i8 %702 to i32
  %704 = mul nsw i32 2, %703
  %705 = add nsw i32 %694, %704
  %706 = zext i8 %702 to i32
  %707 = mul nsw i32 2, %706
  %708 = add nsw i32 %697, %707
  %709 = sub nsw i32 %5, 3
  %710 = getelementptr inbounds i8, i8* %687, i32 %709
  %711 = getelementptr inbounds i8, i8* %710, i32 1
  %712 = load i8, i8* %710, align 1
  %713 = zext i8 %712 to i32
  %714 = sub i32 0, %713
  %715 = getelementptr inbounds i8, i8* %360, i32 %714
  %716 = load i8, i8* %715, align 1
  %717 = zext i8 %716 to i32
  %718 = sub nsw i32 %705, %717
  %719 = zext i8 %716 to i32
  %720 = mul nsw i32 3, %719
  %721 = add nsw i32 %708, %720
  %722 = getelementptr inbounds i8, i8* %711, i32 1
  %723 = load i8, i8* %711, align 1
  %724 = zext i8 %723 to i32
  %725 = sub i32 0, %724
  %726 = getelementptr inbounds i8, i8* %360, i32 %725
  %727 = load i8, i8* %726, align 1
  %728 = zext i8 %727 to i32
  %729 = mul nsw i32 3, %728
  %730 = add nsw i32 %721, %729
  %731 = load i8, i8* %722, align 1
  %732 = zext i8 %731 to i32
  %733 = sub i32 0, %732
  %734 = getelementptr inbounds i8, i8* %360, i32 %733
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i32
  %737 = add nsw i32 %718, %736
  %738 = zext i8 %735 to i32
  %739 = mul nsw i32 3, %738
  %740 = add nsw i32 %730, %739
  %741 = mul nsw i32 %737, %737
  %742 = mul nsw i32 %740, %740
  %743 = add nsw i32 %741, %742
  %744 = sitofp i32 %743 to float
  %745 = fpext float %744 to double
  %746 = call arm_aapcscc double @sqrt(double %745) #7
  %747 = fptrunc double %746 to float
  %748 = fpext float %747 to double
  %749 = sitofp i32 %354 to float
  %750 = fpext float %749 to double
  %751 = fmul double 9.000000e-01, %750
  %752 = fcmp ogt double %748, %751
  br i1 %752, label %753, label %820

; <label>:753:                                    ; preds = %362
  %754 = icmp eq i32 %737, 0
  br i1 %754, label %755, label %756

; <label>:755:                                    ; preds = %753
  br label %760

; <label>:756:                                    ; preds = %753
  %757 = sitofp i32 %740 to float
  %758 = sitofp i32 %737 to float
  %759 = fdiv float %757, %758
  br label %760

; <label>:760:                                    ; preds = %756, %755
  %.0727 = phi float [ 1.000000e+06, %755 ], [ %759, %756 ]
  %761 = fcmp olt float %.0727, 0.000000e+00
  br i1 %761, label %762, label %764

; <label>:762:                                    ; preds = %760
  %763 = fsub float -0.000000e+00, %.0727
  br label %765

; <label>:764:                                    ; preds = %760
  br label %765

; <label>:765:                                    ; preds = %764, %762
  %.1728 = phi float [ %763, %762 ], [ %.0727, %764 ]
  %.0 = phi i32 [ -1, %762 ], [ 1, %764 ]
  %766 = fpext float %.1728 to double
  %767 = fcmp olt double %766, 5.000000e-01
  br i1 %767, label %768, label %769

; <label>:768:                                    ; preds = %765
  br label %779

; <label>:769:                                    ; preds = %765
  %770 = fpext float %.1728 to double
  %771 = fcmp ogt double %770, 2.000000e+00
  br i1 %771, label %772, label %773

; <label>:772:                                    ; preds = %769
  br label %778

; <label>:773:                                    ; preds = %769
  %774 = icmp sgt i32 %.0, 0
  br i1 %774, label %775, label %776

; <label>:775:                                    ; preds = %773
  br label %777

; <label>:776:                                    ; preds = %773
  br label %777

; <label>:777:                                    ; preds = %776, %775
  %.0721 = phi i32 [ 1, %775 ], [ -1, %776 ]
  br label %778

; <label>:778:                                    ; preds = %777, %772
  %.1722 = phi i32 [ 1, %772 ], [ %.0721, %777 ]
  %.1 = phi i32 [ 0, %772 ], [ 1, %777 ]
  br label %779

; <label>:779:                                    ; preds = %778, %768
  %.2723 = phi i32 [ 0, %768 ], [ %.1722, %778 ]
  %.2 = phi i32 [ 1, %768 ], [ %.1, %778 ]
  %780 = add nsw i32 %.1733, %.2723
  %781 = mul nsw i32 %780, %5
  %782 = add nsw i32 %781, %.1731
  %783 = add nsw i32 %782, %.2
  %784 = getelementptr inbounds i32, i32* %1, i32 %783
  %785 = load i32, i32* %784, align 4
  %786 = icmp sgt i32 %353, %785
  br i1 %786, label %787, label %819

; <label>:787:                                    ; preds = %779
  %788 = sub nsw i32 %.1733, %.2723
  %789 = mul nsw i32 %788, %5
  %790 = add nsw i32 %789, %.1731
  %791 = sub nsw i32 %790, %.2
  %792 = getelementptr inbounds i32, i32* %1, i32 %791
  %793 = load i32, i32* %792, align 4
  %794 = icmp sge i32 %353, %793
  br i1 %794, label %795, label %819

; <label>:795:                                    ; preds = %787
  %796 = mul nsw i32 2, %.2723
  %797 = add nsw i32 %.1733, %796
  %798 = mul nsw i32 %797, %5
  %799 = add nsw i32 %798, %.1731
  %800 = mul nsw i32 2, %.2
  %801 = add nsw i32 %799, %800
  %802 = getelementptr inbounds i32, i32* %1, i32 %801
  %803 = load i32, i32* %802, align 4
  %804 = icmp sgt i32 %353, %803
  br i1 %804, label %805, label %819

; <label>:805:                                    ; preds = %795
  %806 = mul nsw i32 2, %.2723
  %807 = sub nsw i32 %.1733, %806
  %808 = mul nsw i32 %807, %5
  %809 = add nsw i32 %808, %.1731
  %810 = mul nsw i32 2, %.2
  %811 = sub nsw i32 %809, %810
  %812 = getelementptr inbounds i32, i32* %1, i32 %811
  %813 = load i32, i32* %812, align 4
  %814 = icmp sge i32 %353, %813
  br i1 %814, label %815, label %819

; <label>:815:                                    ; preds = %805
  %816 = mul nsw i32 %.1733, %5
  %817 = add nsw i32 %816, %.1731
  %818 = getelementptr inbounds i8, i8* %2, i32 %817
  store i8 1, i8* %818, align 1
  br label %819

; <label>:819:                                    ; preds = %815, %805, %795, %787, %779
  br label %821

; <label>:820:                                    ; preds = %362
  br label %821

; <label>:821:                                    ; preds = %820, %819
  %.0734 = phi i32 [ 0, %819 ], [ 1, %820 ]
  br label %823

; <label>:822:                                    ; preds = %349
  br label %823

; <label>:823:                                    ; preds = %822, %821
  %.1735 = phi i32 [ %.0734, %821 ], [ 1, %822 ]
  %824 = icmp eq i32 %.1735, 1
  br i1 %824, label %825, label %1333

; <label>:825:                                    ; preds = %823
  %826 = sub nsw i32 %.1733, 3
  %827 = mul nsw i32 %826, %5
  %828 = getelementptr inbounds i8, i8* %0, i32 %827
  %829 = getelementptr inbounds i8, i8* %828, i32 %.1731
  %830 = getelementptr inbounds i8, i8* %829, i32 -1
  %831 = getelementptr inbounds i8, i8* %830, i32 1
  %832 = load i8, i8* %830, align 1
  %833 = zext i8 %832 to i32
  %834 = sub i32 0, %833
  %835 = getelementptr inbounds i8, i8* %360, i32 %834
  %836 = load i8, i8* %835, align 1
  %837 = zext i8 %836 to i32
  %838 = add nsw i32 0, %837
  %839 = zext i8 %836 to i32
  %840 = mul nsw i32 9, %839
  %841 = add nsw i32 0, %840
  %842 = zext i8 %836 to i32
  %843 = mul nsw i32 3, %842
  %844 = add nsw i32 0, %843
  %845 = getelementptr inbounds i8, i8* %831, i32 1
  %846 = load i8, i8* %831, align 1
  %847 = zext i8 %846 to i32
  %848 = sub i32 0, %847
  %849 = getelementptr inbounds i8, i8* %360, i32 %848
  %850 = load i8, i8* %849, align 1
  %851 = zext i8 %850 to i32
  %852 = mul nsw i32 9, %851
  %853 = add nsw i32 %841, %852
  %854 = load i8, i8* %845, align 1
  %855 = zext i8 %854 to i32
  %856 = sub i32 0, %855
  %857 = getelementptr inbounds i8, i8* %360, i32 %856
  %858 = load i8, i8* %857, align 1
  %859 = zext i8 %858 to i32
  %860 = add nsw i32 %838, %859
  %861 = zext i8 %858 to i32
  %862 = mul nsw i32 9, %861
  %863 = add nsw i32 %853, %862
  %864 = zext i8 %858 to i32
  %865 = mul nsw i32 3, %864
  %866 = sub nsw i32 %844, %865
  %867 = sub nsw i32 %5, 3
  %868 = getelementptr inbounds i8, i8* %845, i32 %867
  %869 = getelementptr inbounds i8, i8* %868, i32 1
  %870 = load i8, i8* %868, align 1
  %871 = zext i8 %870 to i32
  %872 = sub i32 0, %871
  %873 = getelementptr inbounds i8, i8* %360, i32 %872
  %874 = load i8, i8* %873, align 1
  %875 = zext i8 %874 to i32
  %876 = mul nsw i32 4, %875
  %877 = add nsw i32 %860, %876
  %878 = zext i8 %874 to i32
  %879 = mul nsw i32 4, %878
  %880 = add nsw i32 %863, %879
  %881 = zext i8 %874 to i32
  %882 = mul nsw i32 4, %881
  %883 = add nsw i32 %866, %882
  %884 = getelementptr inbounds i8, i8* %869, i32 1
  %885 = load i8, i8* %869, align 1
  %886 = zext i8 %885 to i32
  %887 = sub i32 0, %886
  %888 = getelementptr inbounds i8, i8* %360, i32 %887
  %889 = load i8, i8* %888, align 1
  %890 = zext i8 %889 to i32
  %891 = add nsw i32 %877, %890
  %892 = zext i8 %889 to i32
  %893 = mul nsw i32 4, %892
  %894 = add nsw i32 %880, %893
  %895 = zext i8 %889 to i32
  %896 = mul nsw i32 2, %895
  %897 = add nsw i32 %883, %896
  %898 = getelementptr inbounds i8, i8* %884, i32 1
  %899 = load i8, i8* %884, align 1
  %900 = zext i8 %899 to i32
  %901 = sub i32 0, %900
  %902 = getelementptr inbounds i8, i8* %360, i32 %901
  %903 = load i8, i8* %902, align 1
  %904 = zext i8 %903 to i32
  %905 = mul nsw i32 4, %904
  %906 = add nsw i32 %894, %905
  %907 = getelementptr inbounds i8, i8* %898, i32 1
  %908 = load i8, i8* %898, align 1
  %909 = zext i8 %908 to i32
  %910 = sub i32 0, %909
  %911 = getelementptr inbounds i8, i8* %360, i32 %910
  %912 = load i8, i8* %911, align 1
  %913 = zext i8 %912 to i32
  %914 = add nsw i32 %891, %913
  %915 = zext i8 %912 to i32
  %916 = mul nsw i32 4, %915
  %917 = add nsw i32 %906, %916
  %918 = zext i8 %912 to i32
  %919 = mul nsw i32 2, %918
  %920 = sub nsw i32 %897, %919
  %921 = load i8, i8* %907, align 1
  %922 = zext i8 %921 to i32
  %923 = sub i32 0, %922
  %924 = getelementptr inbounds i8, i8* %360, i32 %923
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = mul nsw i32 4, %926
  %928 = add nsw i32 %914, %927
  %929 = zext i8 %925 to i32
  %930 = mul nsw i32 4, %929
  %931 = add nsw i32 %917, %930
  %932 = zext i8 %925 to i32
  %933 = mul nsw i32 4, %932
  %934 = sub nsw i32 %920, %933
  %935 = sub nsw i32 %5, 5
  %936 = getelementptr inbounds i8, i8* %907, i32 %935
  %937 = getelementptr inbounds i8, i8* %936, i32 1
  %938 = load i8, i8* %936, align 1
  %939 = zext i8 %938 to i32
  %940 = sub i32 0, %939
  %941 = getelementptr inbounds i8, i8* %360, i32 %940
  %942 = load i8, i8* %941, align 1
  %943 = zext i8 %942 to i32
  %944 = mul nsw i32 9, %943
  %945 = add nsw i32 %928, %944
  %946 = zext i8 %942 to i32
  %947 = add nsw i32 %931, %946
  %948 = zext i8 %942 to i32
  %949 = mul nsw i32 3, %948
  %950 = add nsw i32 %934, %949
  %951 = getelementptr inbounds i8, i8* %937, i32 1
  %952 = load i8, i8* %937, align 1
  %953 = zext i8 %952 to i32
  %954 = sub i32 0, %953
  %955 = getelementptr inbounds i8, i8* %360, i32 %954
  %956 = load i8, i8* %955, align 1
  %957 = zext i8 %956 to i32
  %958 = mul nsw i32 4, %957
  %959 = add nsw i32 %945, %958
  %960 = zext i8 %956 to i32
  %961 = add nsw i32 %947, %960
  %962 = zext i8 %956 to i32
  %963 = mul nsw i32 2, %962
  %964 = add nsw i32 %950, %963
  %965 = getelementptr inbounds i8, i8* %951, i32 1
  %966 = load i8, i8* %951, align 1
  %967 = zext i8 %966 to i32
  %968 = sub i32 0, %967
  %969 = getelementptr inbounds i8, i8* %360, i32 %968
  %970 = load i8, i8* %969, align 1
  %971 = zext i8 %970 to i32
  %972 = add nsw i32 %959, %971
  %973 = zext i8 %970 to i32
  %974 = add nsw i32 %961, %973
  %975 = zext i8 %970 to i32
  %976 = add nsw i32 %964, %975
  %977 = getelementptr inbounds i8, i8* %965, i32 1
  %978 = load i8, i8* %965, align 1
  %979 = zext i8 %978 to i32
  %980 = sub i32 0, %979
  %981 = getelementptr inbounds i8, i8* %360, i32 %980
  %982 = load i8, i8* %981, align 1
  %983 = zext i8 %982 to i32
  %984 = add nsw i32 %974, %983
  %985 = getelementptr inbounds i8, i8* %977, i32 1
  %986 = load i8, i8* %977, align 1
  %987 = zext i8 %986 to i32
  %988 = sub i32 0, %987
  %989 = getelementptr inbounds i8, i8* %360, i32 %988
  %990 = load i8, i8* %989, align 1
  %991 = zext i8 %990 to i32
  %992 = add nsw i32 %972, %991
  %993 = zext i8 %990 to i32
  %994 = add nsw i32 %984, %993
  %995 = zext i8 %990 to i32
  %996 = sub nsw i32 %976, %995
  %997 = getelementptr inbounds i8, i8* %985, i32 1
  %998 = load i8, i8* %985, align 1
  %999 = zext i8 %998 to i32
  %1000 = sub i32 0, %999
  %1001 = getelementptr inbounds i8, i8* %360, i32 %1000
  %1002 = load i8, i8* %1001, align 1
  %1003 = zext i8 %1002 to i32
  %1004 = mul nsw i32 4, %1003
  %1005 = add nsw i32 %992, %1004
  %1006 = zext i8 %1002 to i32
  %1007 = add nsw i32 %994, %1006
  %1008 = zext i8 %1002 to i32
  %1009 = mul nsw i32 2, %1008
  %1010 = sub nsw i32 %996, %1009
  %1011 = load i8, i8* %997, align 1
  %1012 = zext i8 %1011 to i32
  %1013 = sub i32 0, %1012
  %1014 = getelementptr inbounds i8, i8* %360, i32 %1013
  %1015 = load i8, i8* %1014, align 1
  %1016 = zext i8 %1015 to i32
  %1017 = mul nsw i32 9, %1016
  %1018 = add nsw i32 %1005, %1017
  %1019 = zext i8 %1015 to i32
  %1020 = add nsw i32 %1007, %1019
  %1021 = zext i8 %1015 to i32
  %1022 = mul nsw i32 3, %1021
  %1023 = sub nsw i32 %1010, %1022
  %1024 = sub nsw i32 %5, 6
  %1025 = getelementptr inbounds i8, i8* %997, i32 %1024
  %1026 = getelementptr inbounds i8, i8* %1025, i32 1
  %1027 = load i8, i8* %1025, align 1
  %1028 = zext i8 %1027 to i32
  %1029 = sub i32 0, %1028
  %1030 = getelementptr inbounds i8, i8* %360, i32 %1029
  %1031 = load i8, i8* %1030, align 1
  %1032 = zext i8 %1031 to i32
  %1033 = mul nsw i32 9, %1032
  %1034 = add nsw i32 %1018, %1033
  %1035 = getelementptr inbounds i8, i8* %1026, i32 1
  %1036 = load i8, i8* %1026, align 1
  %1037 = zext i8 %1036 to i32
  %1038 = sub i32 0, %1037
  %1039 = getelementptr inbounds i8, i8* %360, i32 %1038
  %1040 = load i8, i8* %1039, align 1
  %1041 = zext i8 %1040 to i32
  %1042 = mul nsw i32 4, %1041
  %1043 = add nsw i32 %1034, %1042
  %1044 = load i8, i8* %1035, align 1
  %1045 = zext i8 %1044 to i32
  %1046 = sub i32 0, %1045
  %1047 = getelementptr inbounds i8, i8* %360, i32 %1046
  %1048 = load i8, i8* %1047, align 1
  %1049 = zext i8 %1048 to i32
  %1050 = add nsw i32 %1043, %1049
  %1051 = getelementptr inbounds i8, i8* %1035, i32 2
  %1052 = getelementptr inbounds i8, i8* %1051, i32 1
  %1053 = load i8, i8* %1051, align 1
  %1054 = zext i8 %1053 to i32
  %1055 = sub i32 0, %1054
  %1056 = getelementptr inbounds i8, i8* %360, i32 %1055
  %1057 = load i8, i8* %1056, align 1
  %1058 = zext i8 %1057 to i32
  %1059 = add nsw i32 %1050, %1058
  %1060 = getelementptr inbounds i8, i8* %1052, i32 1
  %1061 = load i8, i8* %1052, align 1
  %1062 = zext i8 %1061 to i32
  %1063 = sub i32 0, %1062
  %1064 = getelementptr inbounds i8, i8* %360, i32 %1063
  %1065 = load i8, i8* %1064, align 1
  %1066 = zext i8 %1065 to i32
  %1067 = mul nsw i32 4, %1066
  %1068 = add nsw i32 %1059, %1067
  %1069 = load i8, i8* %1060, align 1
  %1070 = zext i8 %1069 to i32
  %1071 = sub i32 0, %1070
  %1072 = getelementptr inbounds i8, i8* %360, i32 %1071
  %1073 = load i8, i8* %1072, align 1
  %1074 = zext i8 %1073 to i32
  %1075 = mul nsw i32 9, %1074
  %1076 = add nsw i32 %1068, %1075
  %1077 = sub nsw i32 %5, 6
  %1078 = getelementptr inbounds i8, i8* %1060, i32 %1077
  %1079 = getelementptr inbounds i8, i8* %1078, i32 1
  %1080 = load i8, i8* %1078, align 1
  %1081 = zext i8 %1080 to i32
  %1082 = sub i32 0, %1081
  %1083 = getelementptr inbounds i8, i8* %360, i32 %1082
  %1084 = load i8, i8* %1083, align 1
  %1085 = zext i8 %1084 to i32
  %1086 = mul nsw i32 9, %1085
  %1087 = add nsw i32 %1076, %1086
  %1088 = zext i8 %1084 to i32
  %1089 = add nsw i32 %1020, %1088
  %1090 = zext i8 %1084 to i32
  %1091 = mul nsw i32 3, %1090
  %1092 = sub nsw i32 %1023, %1091
  %1093 = getelementptr inbounds i8, i8* %1079, i32 1
  %1094 = load i8, i8* %1079, align 1
  %1095 = zext i8 %1094 to i32
  %1096 = sub i32 0, %1095
  %1097 = getelementptr inbounds i8, i8* %360, i32 %1096
  %1098 = load i8, i8* %1097, align 1
  %1099 = zext i8 %1098 to i32
  %1100 = mul nsw i32 4, %1099
  %1101 = add nsw i32 %1087, %1100
  %1102 = zext i8 %1098 to i32
  %1103 = add nsw i32 %1089, %1102
  %1104 = zext i8 %1098 to i32
  %1105 = mul nsw i32 2, %1104
  %1106 = sub nsw i32 %1092, %1105
  %1107 = getelementptr inbounds i8, i8* %1093, i32 1
  %1108 = load i8, i8* %1093, align 1
  %1109 = zext i8 %1108 to i32
  %1110 = sub i32 0, %1109
  %1111 = getelementptr inbounds i8, i8* %360, i32 %1110
  %1112 = load i8, i8* %1111, align 1
  %1113 = zext i8 %1112 to i32
  %1114 = add nsw i32 %1101, %1113
  %1115 = zext i8 %1112 to i32
  %1116 = add nsw i32 %1103, %1115
  %1117 = zext i8 %1112 to i32
  %1118 = sub nsw i32 %1106, %1117
  %1119 = getelementptr inbounds i8, i8* %1107, i32 1
  %1120 = load i8, i8* %1107, align 1
  %1121 = zext i8 %1120 to i32
  %1122 = sub i32 0, %1121
  %1123 = getelementptr inbounds i8, i8* %360, i32 %1122
  %1124 = load i8, i8* %1123, align 1
  %1125 = zext i8 %1124 to i32
  %1126 = add nsw i32 %1116, %1125
  %1127 = getelementptr inbounds i8, i8* %1119, i32 1
  %1128 = load i8, i8* %1119, align 1
  %1129 = zext i8 %1128 to i32
  %1130 = sub i32 0, %1129
  %1131 = getelementptr inbounds i8, i8* %360, i32 %1130
  %1132 = load i8, i8* %1131, align 1
  %1133 = zext i8 %1132 to i32
  %1134 = add nsw i32 %1114, %1133
  %1135 = zext i8 %1132 to i32
  %1136 = add nsw i32 %1126, %1135
  %1137 = zext i8 %1132 to i32
  %1138 = add nsw i32 %1118, %1137
  %1139 = getelementptr inbounds i8, i8* %1127, i32 1
  %1140 = load i8, i8* %1127, align 1
  %1141 = zext i8 %1140 to i32
  %1142 = sub i32 0, %1141
  %1143 = getelementptr inbounds i8, i8* %360, i32 %1142
  %1144 = load i8, i8* %1143, align 1
  %1145 = zext i8 %1144 to i32
  %1146 = mul nsw i32 4, %1145
  %1147 = add nsw i32 %1134, %1146
  %1148 = zext i8 %1144 to i32
  %1149 = add nsw i32 %1136, %1148
  %1150 = zext i8 %1144 to i32
  %1151 = mul nsw i32 2, %1150
  %1152 = add nsw i32 %1138, %1151
  %1153 = load i8, i8* %1139, align 1
  %1154 = zext i8 %1153 to i32
  %1155 = sub i32 0, %1154
  %1156 = getelementptr inbounds i8, i8* %360, i32 %1155
  %1157 = load i8, i8* %1156, align 1
  %1158 = zext i8 %1157 to i32
  %1159 = mul nsw i32 9, %1158
  %1160 = add nsw i32 %1147, %1159
  %1161 = zext i8 %1157 to i32
  %1162 = add nsw i32 %1149, %1161
  %1163 = zext i8 %1157 to i32
  %1164 = mul nsw i32 3, %1163
  %1165 = add nsw i32 %1152, %1164
  %1166 = sub nsw i32 %5, 5
  %1167 = getelementptr inbounds i8, i8* %1139, i32 %1166
  %1168 = getelementptr inbounds i8, i8* %1167, i32 1
  %1169 = load i8, i8* %1167, align 1
  %1170 = zext i8 %1169 to i32
  %1171 = sub i32 0, %1170
  %1172 = getelementptr inbounds i8, i8* %360, i32 %1171
  %1173 = load i8, i8* %1172, align 1
  %1174 = zext i8 %1173 to i32
  %1175 = mul nsw i32 4, %1174
  %1176 = add nsw i32 %1160, %1175
  %1177 = zext i8 %1173 to i32
  %1178 = mul nsw i32 4, %1177
  %1179 = add nsw i32 %1162, %1178
  %1180 = zext i8 %1173 to i32
  %1181 = mul nsw i32 4, %1180
  %1182 = sub nsw i32 %1165, %1181
  %1183 = getelementptr inbounds i8, i8* %1168, i32 1
  %1184 = load i8, i8* %1168, align 1
  %1185 = zext i8 %1184 to i32
  %1186 = sub i32 0, %1185
  %1187 = getelementptr inbounds i8, i8* %360, i32 %1186
  %1188 = load i8, i8* %1187, align 1
  %1189 = zext i8 %1188 to i32
  %1190 = add nsw i32 %1176, %1189
  %1191 = zext i8 %1188 to i32
  %1192 = mul nsw i32 4, %1191
  %1193 = add nsw i32 %1179, %1192
  %1194 = zext i8 %1188 to i32
  %1195 = mul nsw i32 2, %1194
  %1196 = sub nsw i32 %1182, %1195
  %1197 = getelementptr inbounds i8, i8* %1183, i32 1
  %1198 = load i8, i8* %1183, align 1
  %1199 = zext i8 %1198 to i32
  %1200 = sub i32 0, %1199
  %1201 = getelementptr inbounds i8, i8* %360, i32 %1200
  %1202 = load i8, i8* %1201, align 1
  %1203 = zext i8 %1202 to i32
  %1204 = mul nsw i32 4, %1203
  %1205 = add nsw i32 %1193, %1204
  %1206 = getelementptr inbounds i8, i8* %1197, i32 1
  %1207 = load i8, i8* %1197, align 1
  %1208 = zext i8 %1207 to i32
  %1209 = sub i32 0, %1208
  %1210 = getelementptr inbounds i8, i8* %360, i32 %1209
  %1211 = load i8, i8* %1210, align 1
  %1212 = zext i8 %1211 to i32
  %1213 = add nsw i32 %1190, %1212
  %1214 = zext i8 %1211 to i32
  %1215 = mul nsw i32 4, %1214
  %1216 = add nsw i32 %1205, %1215
  %1217 = zext i8 %1211 to i32
  %1218 = mul nsw i32 2, %1217
  %1219 = add nsw i32 %1196, %1218
  %1220 = load i8, i8* %1206, align 1
  %1221 = zext i8 %1220 to i32
  %1222 = sub i32 0, %1221
  %1223 = getelementptr inbounds i8, i8* %360, i32 %1222
  %1224 = load i8, i8* %1223, align 1
  %1225 = zext i8 %1224 to i32
  %1226 = mul nsw i32 4, %1225
  %1227 = add nsw i32 %1213, %1226
  %1228 = zext i8 %1224 to i32
  %1229 = mul nsw i32 4, %1228
  %1230 = add nsw i32 %1216, %1229
  %1231 = zext i8 %1224 to i32
  %1232 = mul nsw i32 4, %1231
  %1233 = add nsw i32 %1219, %1232
  %1234 = sub nsw i32 %5, 3
  %1235 = getelementptr inbounds i8, i8* %1206, i32 %1234
  %1236 = getelementptr inbounds i8, i8* %1235, i32 1
  %1237 = load i8, i8* %1235, align 1
  %1238 = zext i8 %1237 to i32
  %1239 = sub i32 0, %1238
  %1240 = getelementptr inbounds i8, i8* %360, i32 %1239
  %1241 = load i8, i8* %1240, align 1
  %1242 = zext i8 %1241 to i32
  %1243 = add nsw i32 %1227, %1242
  %1244 = zext i8 %1241 to i32
  %1245 = mul nsw i32 9, %1244
  %1246 = add nsw i32 %1230, %1245
  %1247 = zext i8 %1241 to i32
  %1248 = mul nsw i32 3, %1247
  %1249 = sub nsw i32 %1233, %1248
  %1250 = getelementptr inbounds i8, i8* %1236, i32 1
  %1251 = load i8, i8* %1236, align 1
  %1252 = zext i8 %1251 to i32
  %1253 = sub i32 0, %1252
  %1254 = getelementptr inbounds i8, i8* %360, i32 %1253
  %1255 = load i8, i8* %1254, align 1
  %1256 = zext i8 %1255 to i32
  %1257 = mul nsw i32 9, %1256
  %1258 = add nsw i32 %1246, %1257
  %1259 = load i8, i8* %1250, align 1
  %1260 = zext i8 %1259 to i32
  %1261 = sub i32 0, %1260
  %1262 = getelementptr inbounds i8, i8* %360, i32 %1261
  %1263 = load i8, i8* %1262, align 1
  %1264 = zext i8 %1263 to i32
  %1265 = add nsw i32 %1243, %1264
  %1266 = zext i8 %1263 to i32
  %1267 = mul nsw i32 9, %1266
  %1268 = add nsw i32 %1258, %1267
  %1269 = zext i8 %1263 to i32
  %1270 = mul nsw i32 3, %1269
  %1271 = add nsw i32 %1249, %1270
  %1272 = icmp eq i32 %1268, 0
  br i1 %1272, label %1273, label %1274

; <label>:1273:                                   ; preds = %825
  br label %1278

; <label>:1274:                                   ; preds = %825
  %1275 = sitofp i32 %1265 to float
  %1276 = sitofp i32 %1268 to float
  %1277 = fdiv float %1275, %1276
  br label %1278

; <label>:1278:                                   ; preds = %1274, %1273
  %.2729 = phi float [ 1.000000e+06, %1273 ], [ %1277, %1274 ]
  %1279 = fpext float %.2729 to double
  %1280 = fcmp olt double %1279, 5.000000e-01
  br i1 %1280, label %1281, label %1282

; <label>:1281:                                   ; preds = %1278
  br label %1292

; <label>:1282:                                   ; preds = %1278
  %1283 = fpext float %.2729 to double
  %1284 = fcmp ogt double %1283, 2.000000e+00
  br i1 %1284, label %1285, label %1286

; <label>:1285:                                   ; preds = %1282
  br label %1291

; <label>:1286:                                   ; preds = %1282
  %1287 = icmp sgt i32 %1271, 0
  br i1 %1287, label %1288, label %1289

; <label>:1288:                                   ; preds = %1286
  br label %1290

; <label>:1289:                                   ; preds = %1286
  br label %1290

; <label>:1290:                                   ; preds = %1289, %1288
  %.3724 = phi i32 [ -1, %1288 ], [ 1, %1289 ]
  br label %1291

; <label>:1291:                                   ; preds = %1290, %1285
  %.4725 = phi i32 [ 1, %1285 ], [ %.3724, %1290 ]
  %.4 = phi i32 [ 0, %1285 ], [ 1, %1290 ]
  br label %1292

; <label>:1292:                                   ; preds = %1291, %1281
  %.5726 = phi i32 [ 0, %1281 ], [ %.4725, %1291 ]
  %.5 = phi i32 [ 1, %1281 ], [ %.4, %1291 ]
  %1293 = add nsw i32 %.1733, %.5726
  %1294 = mul nsw i32 %1293, %5
  %1295 = add nsw i32 %1294, %.1731
  %1296 = add nsw i32 %1295, %.5
  %1297 = getelementptr inbounds i32, i32* %1, i32 %1296
  %1298 = load i32, i32* %1297, align 4
  %1299 = icmp sgt i32 %353, %1298
  br i1 %1299, label %1300, label %1332

; <label>:1300:                                   ; preds = %1292
  %1301 = sub nsw i32 %.1733, %.5726
  %1302 = mul nsw i32 %1301, %5
  %1303 = add nsw i32 %1302, %.1731
  %1304 = sub nsw i32 %1303, %.5
  %1305 = getelementptr inbounds i32, i32* %1, i32 %1304
  %1306 = load i32, i32* %1305, align 4
  %1307 = icmp sge i32 %353, %1306
  br i1 %1307, label %1308, label %1332

; <label>:1308:                                   ; preds = %1300
  %1309 = mul nsw i32 2, %.5726
  %1310 = add nsw i32 %.1733, %1309
  %1311 = mul nsw i32 %1310, %5
  %1312 = add nsw i32 %1311, %.1731
  %1313 = mul nsw i32 2, %.5
  %1314 = add nsw i32 %1312, %1313
  %1315 = getelementptr inbounds i32, i32* %1, i32 %1314
  %1316 = load i32, i32* %1315, align 4
  %1317 = icmp sgt i32 %353, %1316
  br i1 %1317, label %1318, label %1332

; <label>:1318:                                   ; preds = %1308
  %1319 = mul nsw i32 2, %.5726
  %1320 = sub nsw i32 %.1733, %1319
  %1321 = mul nsw i32 %1320, %5
  %1322 = add nsw i32 %1321, %.1731
  %1323 = mul nsw i32 2, %.5
  %1324 = sub nsw i32 %1322, %1323
  %1325 = getelementptr inbounds i32, i32* %1, i32 %1324
  %1326 = load i32, i32* %1325, align 4
  %1327 = icmp sge i32 %353, %1326
  br i1 %1327, label %1328, label %1332

; <label>:1328:                                   ; preds = %1318
  %1329 = mul nsw i32 %.1733, %5
  %1330 = add nsw i32 %1329, %.1731
  %1331 = getelementptr inbounds i8, i8* %2, i32 %1330
  store i8 2, i8* %1331, align 1
  br label %1332

; <label>:1332:                                   ; preds = %1328, %1318, %1308, %1300, %1292
  br label %1333

; <label>:1333:                                   ; preds = %1332, %823
  br label %1334

; <label>:1334:                                   ; preds = %1333, %343
  br label %1335

; <label>:1335:                                   ; preds = %1334
  %1336 = add nsw i32 %.1731, 1
  br label %340

; <label>:1337:                                   ; preds = %340
  br label %1338

; <label>:1338:                                   ; preds = %1337
  %1339 = add nsw i32 %.1733, 1
  br label %336

; <label>:1340:                                   ; preds = %336
  ret i32 undef
}

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #3

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_edges_small(i8*, i32*, i8*, i8*, i32, i32, i32) #0 {
  %8 = bitcast i32* %1 to i8*
  %9 = mul nsw i32 %5, %6
  %10 = mul i32 %9, 4
  call void @llvm.memset.p0i8.i32(i8* %8, i8 0, i32 %10, i32 4, i1 false)
  br label %11

; <label>:11:                                     ; preds = %105, %7
  %.0249 = phi i32 [ 1, %7 ], [ %106, %105 ]
  %12 = sub nsw i32 %6, 1
  %13 = icmp slt i32 %.0249, %12
  br i1 %13, label %14, label %107

; <label>:14:                                     ; preds = %11
  br label %15

; <label>:15:                                     ; preds = %102, %14
  %.0247 = phi i32 [ 1, %14 ], [ %103, %102 ]
  %16 = sub nsw i32 %5, 1
  %17 = icmp slt i32 %.0247, %16
  br i1 %17, label %18, label %104

; <label>:18:                                     ; preds = %15
  %19 = sub nsw i32 %.0249, 1
  %20 = mul nsw i32 %19, %5
  %21 = getelementptr inbounds i8, i8* %0, i32 %20
  %22 = getelementptr inbounds i8, i8* %21, i32 %.0247
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  %24 = mul nsw i32 %.0249, %5
  %25 = add nsw i32 %24, %.0247
  %26 = getelementptr inbounds i8, i8* %0, i32 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, i8* %3, i32 %28
  %30 = getelementptr inbounds i8, i8* %23, i32 1
  %31 = load i8, i8* %23, align 1
  %32 = zext i8 %31 to i32
  %33 = sub i32 0, %32
  %34 = getelementptr inbounds i8, i8* %29, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 100, %36
  %38 = getelementptr inbounds i8, i8* %30, i32 1
  %39 = load i8, i8* %30, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 0, %40
  %42 = getelementptr inbounds i8, i8* %29, i32 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %37, %44
  %46 = load i8, i8* %38, align 1
  %47 = zext i8 %46 to i32
  %48 = sub i32 0, %47
  %49 = getelementptr inbounds i8, i8* %29, i32 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %45, %51
  %53 = sub nsw i32 %5, 2
  %54 = getelementptr inbounds i8, i8* %38, i32 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = sub i32 0, %56
  %58 = getelementptr inbounds i8, i8* %29, i32 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %52, %60
  %62 = getelementptr inbounds i8, i8* %54, i32 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = sub i32 0, %64
  %66 = getelementptr inbounds i8, i8* %29, i32 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = sub nsw i32 %5, 2
  %71 = getelementptr inbounds i8, i8* %62, i32 %70
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = sub i32 0, %74
  %76 = getelementptr inbounds i8, i8* %29, i32 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %69, %78
  %80 = getelementptr inbounds i8, i8* %72, i32 1
  %81 = load i8, i8* %72, align 1
  %82 = zext i8 %81 to i32
  %83 = sub i32 0, %82
  %84 = getelementptr inbounds i8, i8* %29, i32 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %79, %86
  %88 = load i8, i8* %80, align 1
  %89 = zext i8 %88 to i32
  %90 = sub i32 0, %89
  %91 = getelementptr inbounds i8, i8* %29, i32 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %87, %93
  %95 = icmp sle i32 %94, 730
  br i1 %95, label %96, label %101

; <label>:96:                                     ; preds = %18
  %97 = sub nsw i32 730, %94
  %98 = mul nsw i32 %.0249, %5
  %99 = add nsw i32 %98, %.0247
  %100 = getelementptr inbounds i32, i32* %1, i32 %99
  store i32 %97, i32* %100, align 4
  br label %101

; <label>:101:                                    ; preds = %96, %18
  br label %102

; <label>:102:                                    ; preds = %101
  %103 = add nsw i32 %.0247, 1
  br label %15

; <label>:104:                                    ; preds = %15
  br label %105

; <label>:105:                                    ; preds = %104
  %106 = add nsw i32 %.0249, 1
  br label %11

; <label>:107:                                    ; preds = %11
  br label %108

; <label>:108:                                    ; preds = %410, %107
  %.1250 = phi i32 [ 2, %107 ], [ %411, %410 ]
  %109 = sub nsw i32 %6, 2
  %110 = icmp slt i32 %.1250, %109
  br i1 %110, label %111, label %412

; <label>:111:                                    ; preds = %108
  br label %112

; <label>:112:                                    ; preds = %407, %111
  %.1248 = phi i32 [ 2, %111 ], [ %408, %407 ]
  %113 = sub nsw i32 %5, 2
  %114 = icmp slt i32 %.1248, %113
  br i1 %114, label %115, label %409

; <label>:115:                                    ; preds = %112
  %116 = mul nsw i32 %.1250, %5
  %117 = add nsw i32 %116, %.1248
  %118 = getelementptr inbounds i32, i32* %1, i32 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %406

; <label>:121:                                    ; preds = %115
  %122 = mul nsw i32 %.1250, %5
  %123 = add nsw i32 %122, %.1248
  %124 = getelementptr inbounds i32, i32* %1, i32 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 730, %125
  %127 = mul nsw i32 %.1250, %5
  %128 = add nsw i32 %127, %.1248
  %129 = getelementptr inbounds i8, i8* %0, i32 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr inbounds i8, i8* %3, i32 %131
  %133 = icmp sgt i32 %126, 250
  br i1 %133, label %134, label %274

; <label>:134:                                    ; preds = %121
  %135 = sub nsw i32 %.1250, 1
  %136 = mul nsw i32 %135, %5
  %137 = getelementptr inbounds i8, i8* %0, i32 %136
  %138 = getelementptr inbounds i8, i8* %137, i32 %.1248
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  %141 = load i8, i8* %139, align 1
  %142 = zext i8 %141 to i32
  %143 = sub i32 0, %142
  %144 = getelementptr inbounds i8, i8* %132, i32 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = sub nsw i32 0, %146
  %148 = zext i8 %145 to i32
  %149 = sub nsw i32 0, %148
  %150 = getelementptr inbounds i8, i8* %140, i32 1
  %151 = load i8, i8* %140, align 1
  %152 = zext i8 %151 to i32
  %153 = sub i32 0, %152
  %154 = getelementptr inbounds i8, i8* %132, i32 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %149, %156
  %158 = load i8, i8* %150, align 1
  %159 = zext i8 %158 to i32
  %160 = sub i32 0, %159
  %161 = getelementptr inbounds i8, i8* %132, i32 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %147, %163
  %165 = zext i8 %162 to i32
  %166 = sub nsw i32 %157, %165
  %167 = sub nsw i32 %5, 2
  %168 = getelementptr inbounds i8, i8* %150, i32 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = sub i32 0, %170
  %172 = getelementptr inbounds i8, i8* %132, i32 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %164, %174
  %176 = getelementptr inbounds i8, i8* %168, i32 2
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = sub i32 0, %178
  %180 = getelementptr inbounds i8, i8* %132, i32 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %175, %182
  %184 = sub nsw i32 %5, 2
  %185 = getelementptr inbounds i8, i8* %176, i32 %184
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  %187 = load i8, i8* %185, align 1
  %188 = zext i8 %187 to i32
  %189 = sub i32 0, %188
  %190 = getelementptr inbounds i8, i8* %132, i32 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = sub nsw i32 %183, %192
  %194 = zext i8 %191 to i32
  %195 = add nsw i32 %166, %194
  %196 = getelementptr inbounds i8, i8* %186, i32 1
  %197 = load i8, i8* %186, align 1
  %198 = zext i8 %197 to i32
  %199 = sub i32 0, %198
  %200 = getelementptr inbounds i8, i8* %132, i32 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %195, %202
  %204 = load i8, i8* %196, align 1
  %205 = zext i8 %204 to i32
  %206 = sub i32 0, %205
  %207 = getelementptr inbounds i8, i8* %132, i32 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %193, %209
  %211 = zext i8 %208 to i32
  %212 = add nsw i32 %203, %211
  %213 = mul nsw i32 %210, %210
  %214 = mul nsw i32 %212, %212
  %215 = add nsw i32 %213, %214
  %216 = sitofp i32 %215 to float
  %217 = fpext float %216 to double
  %218 = call arm_aapcscc double @sqrt(double %217) #7
  %219 = fptrunc double %218 to float
  %220 = fpext float %219 to double
  %221 = sitofp i32 %126 to float
  %222 = fpext float %221 to double
  %223 = fmul double 4.000000e-01, %222
  %224 = fcmp ogt double %220, %223
  br i1 %224, label %225, label %272

; <label>:225:                                    ; preds = %134
  %226 = icmp eq i32 %210, 0
  br i1 %226, label %227, label %228

; <label>:227:                                    ; preds = %225
  br label %232

; <label>:228:                                    ; preds = %225
  %229 = sitofp i32 %212 to float
  %230 = sitofp i32 %210 to float
  %231 = fdiv float %229, %230
  br label %232

; <label>:232:                                    ; preds = %228, %227
  %.0253 = phi float [ 1.000000e+06, %227 ], [ %231, %228 ]
  %233 = fcmp olt float %.0253, 0.000000e+00
  br i1 %233, label %234, label %236

; <label>:234:                                    ; preds = %232
  %235 = fsub float -0.000000e+00, %.0253
  br label %237

; <label>:236:                                    ; preds = %232
  br label %237

; <label>:237:                                    ; preds = %236, %234
  %.1254 = phi float [ %235, %234 ], [ %.0253, %236 ]
  %.0 = phi i32 [ -1, %234 ], [ 1, %236 ]
  %238 = fpext float %.1254 to double
  %239 = fcmp olt double %238, 5.000000e-01
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %237
  br label %251

; <label>:241:                                    ; preds = %237
  %242 = fpext float %.1254 to double
  %243 = fcmp ogt double %242, 2.000000e+00
  br i1 %243, label %244, label %245

; <label>:244:                                    ; preds = %241
  br label %250

; <label>:245:                                    ; preds = %241
  %246 = icmp sgt i32 %.0, 0
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %245
  br label %249

; <label>:248:                                    ; preds = %245
  br label %249

; <label>:249:                                    ; preds = %248, %247
  %.0241 = phi i32 [ 1, %247 ], [ -1, %248 ]
  br label %250

; <label>:250:                                    ; preds = %249, %244
  %.1242 = phi i32 [ 1, %244 ], [ %.0241, %249 ]
  %.1 = phi i32 [ 0, %244 ], [ 1, %249 ]
  br label %251

; <label>:251:                                    ; preds = %250, %240
  %.2243 = phi i32 [ 0, %240 ], [ %.1242, %250 ]
  %.2 = phi i32 [ 1, %240 ], [ %.1, %250 ]
  %252 = add nsw i32 %.1250, %.2243
  %253 = mul nsw i32 %252, %5
  %254 = add nsw i32 %253, %.1248
  %255 = add nsw i32 %254, %.2
  %256 = getelementptr inbounds i32, i32* %1, i32 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp sgt i32 %125, %257
  br i1 %258, label %259, label %271

; <label>:259:                                    ; preds = %251
  %260 = sub nsw i32 %.1250, %.2243
  %261 = mul nsw i32 %260, %5
  %262 = add nsw i32 %261, %.1248
  %263 = sub nsw i32 %262, %.2
  %264 = getelementptr inbounds i32, i32* %1, i32 %263
  %265 = load i32, i32* %264, align 4
  %266 = icmp sge i32 %125, %265
  br i1 %266, label %267, label %271

; <label>:267:                                    ; preds = %259
  %268 = mul nsw i32 %.1250, %5
  %269 = add nsw i32 %268, %.1248
  %270 = getelementptr inbounds i8, i8* %2, i32 %269
  store i8 1, i8* %270, align 1
  br label %271

; <label>:271:                                    ; preds = %267, %259, %251
  br label %273

; <label>:272:                                    ; preds = %134
  br label %273

; <label>:273:                                    ; preds = %272, %271
  %.0251 = phi i32 [ 0, %271 ], [ 1, %272 ]
  br label %275

; <label>:274:                                    ; preds = %121
  br label %275

; <label>:275:                                    ; preds = %274, %273
  %.1252 = phi i32 [ %.0251, %273 ], [ 1, %274 ]
  %276 = icmp eq i32 %.1252, 1
  br i1 %276, label %277, label %405

; <label>:277:                                    ; preds = %275
  %278 = sub nsw i32 %.1250, 1
  %279 = mul nsw i32 %278, %5
  %280 = getelementptr inbounds i8, i8* %0, i32 %279
  %281 = getelementptr inbounds i8, i8* %280, i32 %.1248
  %282 = getelementptr inbounds i8, i8* %281, i32 -1
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  %284 = load i8, i8* %282, align 1
  %285 = zext i8 %284 to i32
  %286 = sub i32 0, %285
  %287 = getelementptr inbounds i8, i8* %132, i32 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = add nsw i32 0, %289
  %291 = zext i8 %288 to i32
  %292 = add nsw i32 0, %291
  %293 = zext i8 %288 to i32
  %294 = add nsw i32 0, %293
  %295 = getelementptr inbounds i8, i8* %283, i32 1
  %296 = load i8, i8* %283, align 1
  %297 = zext i8 %296 to i32
  %298 = sub i32 0, %297
  %299 = getelementptr inbounds i8, i8* %132, i32 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = add nsw i32 %292, %301
  %303 = load i8, i8* %295, align 1
  %304 = zext i8 %303 to i32
  %305 = sub i32 0, %304
  %306 = getelementptr inbounds i8, i8* %132, i32 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %290, %308
  %310 = zext i8 %307 to i32
  %311 = add nsw i32 %302, %310
  %312 = zext i8 %307 to i32
  %313 = sub nsw i32 %294, %312
  %314 = sub nsw i32 %5, 2
  %315 = getelementptr inbounds i8, i8* %295, i32 %314
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = sub i32 0, %317
  %319 = getelementptr inbounds i8, i8* %132, i32 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = add nsw i32 %309, %321
  %323 = getelementptr inbounds i8, i8* %315, i32 2
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = sub i32 0, %325
  %327 = getelementptr inbounds i8, i8* %132, i32 %326
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = add nsw i32 %322, %329
  %331 = sub nsw i32 %5, 2
  %332 = getelementptr inbounds i8, i8* %323, i32 %331
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  %334 = load i8, i8* %332, align 1
  %335 = zext i8 %334 to i32
  %336 = sub i32 0, %335
  %337 = getelementptr inbounds i8, i8* %132, i32 %336
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = add nsw i32 %330, %339
  %341 = zext i8 %338 to i32
  %342 = add nsw i32 %311, %341
  %343 = zext i8 %338 to i32
  %344 = sub nsw i32 %313, %343
  %345 = getelementptr inbounds i8, i8* %333, i32 1
  %346 = load i8, i8* %333, align 1
  %347 = zext i8 %346 to i32
  %348 = sub i32 0, %347
  %349 = getelementptr inbounds i8, i8* %132, i32 %348
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = add nsw i32 %342, %351
  %353 = load i8, i8* %345, align 1
  %354 = zext i8 %353 to i32
  %355 = sub i32 0, %354
  %356 = getelementptr inbounds i8, i8* %132, i32 %355
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = add nsw i32 %340, %358
  %360 = zext i8 %357 to i32
  %361 = add nsw i32 %352, %360
  %362 = zext i8 %357 to i32
  %363 = add nsw i32 %344, %362
  %364 = icmp eq i32 %361, 0
  br i1 %364, label %365, label %366

; <label>:365:                                    ; preds = %277
  br label %370

; <label>:366:                                    ; preds = %277
  %367 = sitofp i32 %359 to float
  %368 = sitofp i32 %361 to float
  %369 = fdiv float %367, %368
  br label %370

; <label>:370:                                    ; preds = %366, %365
  %.2255 = phi float [ 1.000000e+06, %365 ], [ %369, %366 ]
  %371 = fpext float %.2255 to double
  %372 = fcmp olt double %371, 5.000000e-01
  br i1 %372, label %373, label %374

; <label>:373:                                    ; preds = %370
  br label %384

; <label>:374:                                    ; preds = %370
  %375 = fpext float %.2255 to double
  %376 = fcmp ogt double %375, 2.000000e+00
  br i1 %376, label %377, label %378

; <label>:377:                                    ; preds = %374
  br label %383

; <label>:378:                                    ; preds = %374
  %379 = icmp sgt i32 %363, 0
  br i1 %379, label %380, label %381

; <label>:380:                                    ; preds = %378
  br label %382

; <label>:381:                                    ; preds = %378
  br label %382

; <label>:382:                                    ; preds = %381, %380
  %.3244 = phi i32 [ -1, %380 ], [ 1, %381 ]
  br label %383

; <label>:383:                                    ; preds = %382, %377
  %.4245 = phi i32 [ 1, %377 ], [ %.3244, %382 ]
  %.4 = phi i32 [ 0, %377 ], [ 1, %382 ]
  br label %384

; <label>:384:                                    ; preds = %383, %373
  %.5246 = phi i32 [ 0, %373 ], [ %.4245, %383 ]
  %.5 = phi i32 [ 1, %373 ], [ %.4, %383 ]
  %385 = add nsw i32 %.1250, %.5246
  %386 = mul nsw i32 %385, %5
  %387 = add nsw i32 %386, %.1248
  %388 = add nsw i32 %387, %.5
  %389 = getelementptr inbounds i32, i32* %1, i32 %388
  %390 = load i32, i32* %389, align 4
  %391 = icmp sgt i32 %125, %390
  br i1 %391, label %392, label %404

; <label>:392:                                    ; preds = %384
  %393 = sub nsw i32 %.1250, %.5246
  %394 = mul nsw i32 %393, %5
  %395 = add nsw i32 %394, %.1248
  %396 = sub nsw i32 %395, %.5
  %397 = getelementptr inbounds i32, i32* %1, i32 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp sge i32 %125, %398
  br i1 %399, label %400, label %404

; <label>:400:                                    ; preds = %392
  %401 = mul nsw i32 %.1250, %5
  %402 = add nsw i32 %401, %.1248
  %403 = getelementptr inbounds i8, i8* %2, i32 %402
  store i8 2, i8* %403, align 1
  br label %404

; <label>:404:                                    ; preds = %400, %392, %384
  br label %405

; <label>:405:                                    ; preds = %404, %275
  br label %406

; <label>:406:                                    ; preds = %405, %115
  br label %407

; <label>:407:                                    ; preds = %406
  %408 = add nsw i32 %.1248, 1
  br label %112

; <label>:409:                                    ; preds = %112
  br label %410

; <label>:410:                                    ; preds = %409
  %411 = add nsw i32 %.1250, 1
  br label %108

; <label>:412:                                    ; preds = %108
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc i32 @corner_draw(i8*, %struct.anon*, i32, i32) #0 {
  br label %5

; <label>:5:                                      ; preds = %46, %4
  %.0 = phi i32 [ 0, %4 ], [ %.1, %46 ]
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 %.0
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 7
  br i1 %9, label %10, label %47

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %35

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 %.0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %16, %2
  %18 = getelementptr inbounds i8, i8* %0, i32 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 %.0
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds i8, i8* %18, i32 %21
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8 -1, i8* %23, align 1
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8 -1, i8* %24, align 1
  store i8 -1, i8* %25, align 1
  %26 = sub nsw i32 %2, 2
  %27 = getelementptr inbounds i8, i8* %25, i32 %26
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8 -1, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8 0, i8* %28, align 1
  store i8 -1, i8* %29, align 1
  %30 = sub nsw i32 %2, 2
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8 -1, i8* %31, align 1
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8 -1, i8* %32, align 1
  store i8 -1, i8* %33, align 1
  %34 = add nsw i32 %.0, 1
  br label %46

; <label>:35:                                     ; preds = %10
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 %.0
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, %2
  %40 = getelementptr inbounds i8, i8* %0, i32 %39
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 %.0
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds i8, i8* %40, i32 %43
  store i8 0, i8* %44, align 1
  %45 = add nsw i32 %.0, 1
  br label %46

; <label>:46:                                     ; preds = %35, %12
  %.1 = phi i32 [ %34, %12 ], [ %45, %35 ]
  br label %5

; <label>:47:                                     ; preds = %5
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_corners(i8*, i32*, i8*, i32, %struct.anon*, i32, i32) #0 {
  %8 = bitcast i32* %1 to i8*
  %9 = mul nsw i32 %5, %6
  %10 = mul i32 %9, 4
  call void @llvm.memset.p0i8.i32(i8* %8, i8 0, i32 %10, i32 4, i1 false)
  %11 = mul nsw i32 %5, %6
  %12 = mul i32 %11, 4
  %13 = call arm_aapcscc i8* @malloc(i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = mul nsw i32 %5, %6
  %16 = mul i32 %15, 4
  %17 = call arm_aapcscc i8* @malloc(i32 %16)
  %18 = bitcast i8* %17 to i32*
  br label %19

; <label>:19:                                     ; preds = %962, %7
  %.0768 = phi i32 [ 5, %7 ], [ %963, %962 ]
  %20 = sub nsw i32 %6, 5
  %21 = icmp slt i32 %.0768, %20
  br i1 %21, label %22, label %964

; <label>:22:                                     ; preds = %19
  br label %23

; <label>:23:                                     ; preds = %959, %22
  %.0766 = phi i32 [ 5, %22 ], [ %960, %959 ]
  %24 = sub nsw i32 %5, 5
  %25 = icmp slt i32 %.0766, %24
  br i1 %25, label %26, label %961

; <label>:26:                                     ; preds = %23
  %27 = sub nsw i32 %.0768, 3
  %28 = mul nsw i32 %27, %5
  %29 = getelementptr inbounds i8, i8* %0, i32 %28
  %30 = getelementptr inbounds i8, i8* %29, i32 %.0766
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  %32 = mul nsw i32 %.0768, %5
  %33 = add nsw i32 %32, %.0766
  %34 = getelementptr inbounds i8, i8* %0, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, i8* %2, i32 %36
  %38 = getelementptr inbounds i8, i8* %31, i32 1
  %39 = load i8, i8* %31, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 0, %40
  %42 = getelementptr inbounds i8, i8* %37, i32 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 100, %44
  %46 = getelementptr inbounds i8, i8* %38, i32 1
  %47 = load i8, i8* %38, align 1
  %48 = zext i8 %47 to i32
  %49 = sub i32 0, %48
  %50 = getelementptr inbounds i8, i8* %37, i32 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %45, %52
  %54 = load i8, i8* %46, align 1
  %55 = zext i8 %54 to i32
  %56 = sub i32 0, %55
  %57 = getelementptr inbounds i8, i8* %37, i32 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %53, %59
  %61 = sub nsw i32 %5, 3
  %62 = getelementptr inbounds i8, i8* %46, i32 %61
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = sub i32 0, %65
  %67 = getelementptr inbounds i8, i8* %37, i32 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %60, %69
  %71 = getelementptr inbounds i8, i8* %63, i32 1
  %72 = load i8, i8* %63, align 1
  %73 = zext i8 %72 to i32
  %74 = sub i32 0, %73
  %75 = getelementptr inbounds i8, i8* %37, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = getelementptr inbounds i8, i8* %71, i32 1
  %80 = load i8, i8* %71, align 1
  %81 = zext i8 %80 to i32
  %82 = sub i32 0, %81
  %83 = getelementptr inbounds i8, i8* %37, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = getelementptr inbounds i8, i8* %79, i32 1
  %88 = load i8, i8* %79, align 1
  %89 = zext i8 %88 to i32
  %90 = sub i32 0, %89
  %91 = getelementptr inbounds i8, i8* %37, i32 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %86, %93
  %95 = load i8, i8* %87, align 1
  %96 = zext i8 %95 to i32
  %97 = sub i32 0, %96
  %98 = getelementptr inbounds i8, i8* %37, i32 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %94, %100
  %102 = sub nsw i32 %5, 5
  %103 = getelementptr inbounds i8, i8* %87, i32 %102
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i32
  %107 = sub i32 0, %106
  %108 = getelementptr inbounds i8, i8* %37, i32 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %101, %110
  %112 = getelementptr inbounds i8, i8* %104, i32 1
  %113 = load i8, i8* %104, align 1
  %114 = zext i8 %113 to i32
  %115 = sub i32 0, %114
  %116 = getelementptr inbounds i8, i8* %37, i32 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %111, %118
  %120 = getelementptr inbounds i8, i8* %112, i32 1
  %121 = load i8, i8* %112, align 1
  %122 = zext i8 %121 to i32
  %123 = sub i32 0, %122
  %124 = getelementptr inbounds i8, i8* %37, i32 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %119, %126
  %128 = getelementptr inbounds i8, i8* %120, i32 1
  %129 = load i8, i8* %120, align 1
  %130 = zext i8 %129 to i32
  %131 = sub i32 0, %130
  %132 = getelementptr inbounds i8, i8* %37, i32 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %127, %134
  %136 = getelementptr inbounds i8, i8* %128, i32 1
  %137 = load i8, i8* %128, align 1
  %138 = zext i8 %137 to i32
  %139 = sub i32 0, %138
  %140 = getelementptr inbounds i8, i8* %37, i32 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %135, %142
  %144 = getelementptr inbounds i8, i8* %136, i32 1
  %145 = load i8, i8* %136, align 1
  %146 = zext i8 %145 to i32
  %147 = sub i32 0, %146
  %148 = getelementptr inbounds i8, i8* %37, i32 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %143, %150
  %152 = load i8, i8* %144, align 1
  %153 = zext i8 %152 to i32
  %154 = sub i32 0, %153
  %155 = getelementptr inbounds i8, i8* %37, i32 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %151, %157
  %159 = sub nsw i32 %5, 6
  %160 = getelementptr inbounds i8, i8* %144, i32 %159
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  %162 = load i8, i8* %160, align 1
  %163 = zext i8 %162 to i32
  %164 = sub i32 0, %163
  %165 = getelementptr inbounds i8, i8* %37, i32 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = add nsw i32 %158, %167
  %169 = getelementptr inbounds i8, i8* %161, i32 1
  %170 = load i8, i8* %161, align 1
  %171 = zext i8 %170 to i32
  %172 = sub i32 0, %171
  %173 = getelementptr inbounds i8, i8* %37, i32 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %168, %175
  %177 = load i8, i8* %169, align 1
  %178 = zext i8 %177 to i32
  %179 = sub i32 0, %178
  %180 = getelementptr inbounds i8, i8* %37, i32 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %176, %182
  %184 = icmp slt i32 %183, %3
  br i1 %184, label %185, label %958

; <label>:185:                                    ; preds = %26
  %186 = getelementptr inbounds i8, i8* %169, i32 2
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  %188 = load i8, i8* %186, align 1
  %189 = zext i8 %188 to i32
  %190 = sub i32 0, %189
  %191 = getelementptr inbounds i8, i8* %37, i32 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %183, %193
  %195 = icmp slt i32 %194, %3
  br i1 %195, label %196, label %957

; <label>:196:                                    ; preds = %185
  %197 = getelementptr inbounds i8, i8* %187, i32 1
  %198 = load i8, i8* %187, align 1
  %199 = zext i8 %198 to i32
  %200 = sub i32 0, %199
  %201 = getelementptr inbounds i8, i8* %37, i32 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %194, %203
  %205 = icmp slt i32 %204, %3
  br i1 %205, label %206, label %956

; <label>:206:                                    ; preds = %196
  %207 = load i8, i8* %197, align 1
  %208 = zext i8 %207 to i32
  %209 = sub i32 0, %208
  %210 = getelementptr inbounds i8, i8* %37, i32 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %204, %212
  %214 = icmp slt i32 %213, %3
  br i1 %214, label %215, label %955

; <label>:215:                                    ; preds = %206
  %216 = sub nsw i32 %5, 6
  %217 = getelementptr inbounds i8, i8* %197, i32 %216
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  %219 = load i8, i8* %217, align 1
  %220 = zext i8 %219 to i32
  %221 = sub i32 0, %220
  %222 = getelementptr inbounds i8, i8* %37, i32 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %213, %224
  %226 = icmp slt i32 %225, %3
  br i1 %226, label %227, label %954

; <label>:227:                                    ; preds = %215
  %228 = getelementptr inbounds i8, i8* %218, i32 1
  %229 = load i8, i8* %218, align 1
  %230 = zext i8 %229 to i32
  %231 = sub i32 0, %230
  %232 = getelementptr inbounds i8, i8* %37, i32 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %225, %234
  %236 = icmp slt i32 %235, %3
  br i1 %236, label %237, label %953

; <label>:237:                                    ; preds = %227
  %238 = getelementptr inbounds i8, i8* %228, i32 1
  %239 = load i8, i8* %228, align 1
  %240 = zext i8 %239 to i32
  %241 = sub i32 0, %240
  %242 = getelementptr inbounds i8, i8* %37, i32 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = add nsw i32 %235, %244
  %246 = icmp slt i32 %245, %3
  br i1 %246, label %247, label %952

; <label>:247:                                    ; preds = %237
  %248 = getelementptr inbounds i8, i8* %238, i32 1
  %249 = load i8, i8* %238, align 1
  %250 = zext i8 %249 to i32
  %251 = sub i32 0, %250
  %252 = getelementptr inbounds i8, i8* %37, i32 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %245, %254
  %256 = icmp slt i32 %255, %3
  br i1 %256, label %257, label %951

; <label>:257:                                    ; preds = %247
  %258 = getelementptr inbounds i8, i8* %248, i32 1
  %259 = load i8, i8* %248, align 1
  %260 = zext i8 %259 to i32
  %261 = sub i32 0, %260
  %262 = getelementptr inbounds i8, i8* %37, i32 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %255, %264
  %266 = icmp slt i32 %265, %3
  br i1 %266, label %267, label %950

; <label>:267:                                    ; preds = %257
  %268 = getelementptr inbounds i8, i8* %258, i32 1
  %269 = load i8, i8* %258, align 1
  %270 = zext i8 %269 to i32
  %271 = sub i32 0, %270
  %272 = getelementptr inbounds i8, i8* %37, i32 %271
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %265, %274
  %276 = icmp slt i32 %275, %3
  br i1 %276, label %277, label %949

; <label>:277:                                    ; preds = %267
  %278 = load i8, i8* %268, align 1
  %279 = zext i8 %278 to i32
  %280 = sub i32 0, %279
  %281 = getelementptr inbounds i8, i8* %37, i32 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %275, %283
  %285 = icmp slt i32 %284, %3
  br i1 %285, label %286, label %948

; <label>:286:                                    ; preds = %277
  %287 = sub nsw i32 %5, 5
  %288 = getelementptr inbounds i8, i8* %268, i32 %287
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  %290 = load i8, i8* %288, align 1
  %291 = zext i8 %290 to i32
  %292 = sub i32 0, %291
  %293 = getelementptr inbounds i8, i8* %37, i32 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = add nsw i32 %284, %295
  %297 = icmp slt i32 %296, %3
  br i1 %297, label %298, label %947

; <label>:298:                                    ; preds = %286
  %299 = getelementptr inbounds i8, i8* %289, i32 1
  %300 = load i8, i8* %289, align 1
  %301 = zext i8 %300 to i32
  %302 = sub i32 0, %301
  %303 = getelementptr inbounds i8, i8* %37, i32 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = add nsw i32 %296, %305
  %307 = icmp slt i32 %306, %3
  br i1 %307, label %308, label %946

; <label>:308:                                    ; preds = %298
  %309 = getelementptr inbounds i8, i8* %299, i32 1
  %310 = load i8, i8* %299, align 1
  %311 = zext i8 %310 to i32
  %312 = sub i32 0, %311
  %313 = getelementptr inbounds i8, i8* %37, i32 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = add nsw i32 %306, %315
  %317 = icmp slt i32 %316, %3
  br i1 %317, label %318, label %945

; <label>:318:                                    ; preds = %308
  %319 = getelementptr inbounds i8, i8* %309, i32 1
  %320 = load i8, i8* %309, align 1
  %321 = zext i8 %320 to i32
  %322 = sub i32 0, %321
  %323 = getelementptr inbounds i8, i8* %37, i32 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = add nsw i32 %316, %325
  %327 = icmp slt i32 %326, %3
  br i1 %327, label %328, label %944

; <label>:328:                                    ; preds = %318
  %329 = load i8, i8* %319, align 1
  %330 = zext i8 %329 to i32
  %331 = sub i32 0, %330
  %332 = getelementptr inbounds i8, i8* %37, i32 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = add nsw i32 %326, %334
  %336 = icmp slt i32 %335, %3
  br i1 %336, label %337, label %943

; <label>:337:                                    ; preds = %328
  %338 = sub nsw i32 %5, 3
  %339 = getelementptr inbounds i8, i8* %319, i32 %338
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  %341 = load i8, i8* %339, align 1
  %342 = zext i8 %341 to i32
  %343 = sub i32 0, %342
  %344 = getelementptr inbounds i8, i8* %37, i32 %343
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = add nsw i32 %335, %346
  %348 = icmp slt i32 %347, %3
  br i1 %348, label %349, label %942

; <label>:349:                                    ; preds = %337
  %350 = getelementptr inbounds i8, i8* %340, i32 1
  %351 = load i8, i8* %340, align 1
  %352 = zext i8 %351 to i32
  %353 = sub i32 0, %352
  %354 = getelementptr inbounds i8, i8* %37, i32 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = add nsw i32 %347, %356
  %358 = icmp slt i32 %357, %3
  br i1 %358, label %359, label %941

; <label>:359:                                    ; preds = %349
  %360 = load i8, i8* %350, align 1
  %361 = zext i8 %360 to i32
  %362 = sub i32 0, %361
  %363 = getelementptr inbounds i8, i8* %37, i32 %362
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = add nsw i32 %357, %365
  %367 = icmp slt i32 %366, %3
  br i1 %367, label %368, label %940

; <label>:368:                                    ; preds = %359
  %369 = sub nsw i32 %.0768, 3
  %370 = mul nsw i32 %369, %5
  %371 = getelementptr inbounds i8, i8* %0, i32 %370
  %372 = getelementptr inbounds i8, i8* %371, i32 %.0766
  %373 = getelementptr inbounds i8, i8* %372, i32 -1
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  %375 = load i8, i8* %373, align 1
  %376 = zext i8 %375 to i32
  %377 = sub i32 0, %376
  %378 = getelementptr inbounds i8, i8* %37, i32 %377
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = sub nsw i32 0, %380
  %382 = zext i8 %379 to i32
  %383 = mul nsw i32 3, %382
  %384 = sub nsw i32 0, %383
  %385 = getelementptr inbounds i8, i8* %374, i32 1
  %386 = load i8, i8* %374, align 1
  %387 = zext i8 %386 to i32
  %388 = sub i32 0, %387
  %389 = getelementptr inbounds i8, i8* %37, i32 %388
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = mul nsw i32 3, %391
  %393 = sub nsw i32 %384, %392
  %394 = load i8, i8* %385, align 1
  %395 = zext i8 %394 to i32
  %396 = sub i32 0, %395
  %397 = getelementptr inbounds i8, i8* %37, i32 %396
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = add nsw i32 %381, %399
  %401 = zext i8 %398 to i32
  %402 = mul nsw i32 3, %401
  %403 = sub nsw i32 %393, %402
  %404 = sub nsw i32 %5, 3
  %405 = getelementptr inbounds i8, i8* %385, i32 %404
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  %407 = load i8, i8* %405, align 1
  %408 = zext i8 %407 to i32
  %409 = sub i32 0, %408
  %410 = getelementptr inbounds i8, i8* %37, i32 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = mul nsw i32 2, %412
  %414 = sub nsw i32 %400, %413
  %415 = zext i8 %411 to i32
  %416 = mul nsw i32 2, %415
  %417 = sub nsw i32 %403, %416
  %418 = getelementptr inbounds i8, i8* %406, i32 1
  %419 = load i8, i8* %406, align 1
  %420 = zext i8 %419 to i32
  %421 = sub i32 0, %420
  %422 = getelementptr inbounds i8, i8* %37, i32 %421
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = sub nsw i32 %414, %424
  %426 = zext i8 %423 to i32
  %427 = mul nsw i32 2, %426
  %428 = sub nsw i32 %417, %427
  %429 = getelementptr inbounds i8, i8* %418, i32 1
  %430 = load i8, i8* %418, align 1
  %431 = zext i8 %430 to i32
  %432 = sub i32 0, %431
  %433 = getelementptr inbounds i8, i8* %37, i32 %432
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = mul nsw i32 2, %435
  %437 = sub nsw i32 %428, %436
  %438 = getelementptr inbounds i8, i8* %429, i32 1
  %439 = load i8, i8* %429, align 1
  %440 = zext i8 %439 to i32
  %441 = sub i32 0, %440
  %442 = getelementptr inbounds i8, i8* %37, i32 %441
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i32
  %445 = add nsw i32 %425, %444
  %446 = zext i8 %443 to i32
  %447 = mul nsw i32 2, %446
  %448 = sub nsw i32 %437, %447
  %449 = load i8, i8* %438, align 1
  %450 = zext i8 %449 to i32
  %451 = sub i32 0, %450
  %452 = getelementptr inbounds i8, i8* %37, i32 %451
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i32
  %455 = mul nsw i32 2, %454
  %456 = add nsw i32 %445, %455
  %457 = zext i8 %453 to i32
  %458 = mul nsw i32 2, %457
  %459 = sub nsw i32 %448, %458
  %460 = sub nsw i32 %5, 5
  %461 = getelementptr inbounds i8, i8* %438, i32 %460
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  %463 = load i8, i8* %461, align 1
  %464 = zext i8 %463 to i32
  %465 = sub i32 0, %464
  %466 = getelementptr inbounds i8, i8* %37, i32 %465
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = mul nsw i32 3, %468
  %470 = sub nsw i32 %456, %469
  %471 = zext i8 %467 to i32
  %472 = sub nsw i32 %459, %471
  %473 = getelementptr inbounds i8, i8* %462, i32 1
  %474 = load i8, i8* %462, align 1
  %475 = zext i8 %474 to i32
  %476 = sub i32 0, %475
  %477 = getelementptr inbounds i8, i8* %37, i32 %476
  %478 = load i8, i8* %477, align 1
  %479 = zext i8 %478 to i32
  %480 = mul nsw i32 2, %479
  %481 = sub nsw i32 %470, %480
  %482 = zext i8 %478 to i32
  %483 = sub nsw i32 %472, %482
  %484 = getelementptr inbounds i8, i8* %473, i32 1
  %485 = load i8, i8* %473, align 1
  %486 = zext i8 %485 to i32
  %487 = sub i32 0, %486
  %488 = getelementptr inbounds i8, i8* %37, i32 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = sub nsw i32 %481, %490
  %492 = zext i8 %489 to i32
  %493 = sub nsw i32 %483, %492
  %494 = getelementptr inbounds i8, i8* %484, i32 1
  %495 = load i8, i8* %484, align 1
  %496 = zext i8 %495 to i32
  %497 = sub i32 0, %496
  %498 = getelementptr inbounds i8, i8* %37, i32 %497
  %499 = load i8, i8* %498, align 1
  %500 = zext i8 %499 to i32
  %501 = sub nsw i32 %493, %500
  %502 = getelementptr inbounds i8, i8* %494, i32 1
  %503 = load i8, i8* %494, align 1
  %504 = zext i8 %503 to i32
  %505 = sub i32 0, %504
  %506 = getelementptr inbounds i8, i8* %37, i32 %505
  %507 = load i8, i8* %506, align 1
  %508 = zext i8 %507 to i32
  %509 = add nsw i32 %491, %508
  %510 = zext i8 %507 to i32
  %511 = sub nsw i32 %501, %510
  %512 = getelementptr inbounds i8, i8* %502, i32 1
  %513 = load i8, i8* %502, align 1
  %514 = zext i8 %513 to i32
  %515 = sub i32 0, %514
  %516 = getelementptr inbounds i8, i8* %37, i32 %515
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = mul nsw i32 2, %518
  %520 = add nsw i32 %509, %519
  %521 = zext i8 %517 to i32
  %522 = sub nsw i32 %511, %521
  %523 = load i8, i8* %512, align 1
  %524 = zext i8 %523 to i32
  %525 = sub i32 0, %524
  %526 = getelementptr inbounds i8, i8* %37, i32 %525
  %527 = load i8, i8* %526, align 1
  %528 = zext i8 %527 to i32
  %529 = mul nsw i32 3, %528
  %530 = add nsw i32 %520, %529
  %531 = zext i8 %527 to i32
  %532 = sub nsw i32 %522, %531
  %533 = sub nsw i32 %5, 6
  %534 = getelementptr inbounds i8, i8* %512, i32 %533
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  %536 = load i8, i8* %534, align 1
  %537 = zext i8 %536 to i32
  %538 = sub i32 0, %537
  %539 = getelementptr inbounds i8, i8* %37, i32 %538
  %540 = load i8, i8* %539, align 1
  %541 = zext i8 %540 to i32
  %542 = mul nsw i32 3, %541
  %543 = sub nsw i32 %530, %542
  %544 = getelementptr inbounds i8, i8* %535, i32 1
  %545 = load i8, i8* %535, align 1
  %546 = zext i8 %545 to i32
  %547 = sub i32 0, %546
  %548 = getelementptr inbounds i8, i8* %37, i32 %547
  %549 = load i8, i8* %548, align 1
  %550 = zext i8 %549 to i32
  %551 = mul nsw i32 2, %550
  %552 = sub nsw i32 %543, %551
  %553 = load i8, i8* %544, align 1
  %554 = zext i8 %553 to i32
  %555 = sub i32 0, %554
  %556 = getelementptr inbounds i8, i8* %37, i32 %555
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = sub nsw i32 %552, %558
  %560 = getelementptr inbounds i8, i8* %544, i32 2
  %561 = getelementptr inbounds i8, i8* %560, i32 1
  %562 = load i8, i8* %560, align 1
  %563 = zext i8 %562 to i32
  %564 = sub i32 0, %563
  %565 = getelementptr inbounds i8, i8* %37, i32 %564
  %566 = load i8, i8* %565, align 1
  %567 = zext i8 %566 to i32
  %568 = add nsw i32 %559, %567
  %569 = getelementptr inbounds i8, i8* %561, i32 1
  %570 = load i8, i8* %561, align 1
  %571 = zext i8 %570 to i32
  %572 = sub i32 0, %571
  %573 = getelementptr inbounds i8, i8* %37, i32 %572
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = mul nsw i32 2, %575
  %577 = add nsw i32 %568, %576
  %578 = load i8, i8* %569, align 1
  %579 = zext i8 %578 to i32
  %580 = sub i32 0, %579
  %581 = getelementptr inbounds i8, i8* %37, i32 %580
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = mul nsw i32 3, %583
  %585 = add nsw i32 %577, %584
  %586 = sub nsw i32 %5, 6
  %587 = getelementptr inbounds i8, i8* %569, i32 %586
  %588 = getelementptr inbounds i8, i8* %587, i32 1
  %589 = load i8, i8* %587, align 1
  %590 = zext i8 %589 to i32
  %591 = sub i32 0, %590
  %592 = getelementptr inbounds i8, i8* %37, i32 %591
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i32
  %595 = mul nsw i32 3, %594
  %596 = sub nsw i32 %585, %595
  %597 = zext i8 %593 to i32
  %598 = add nsw i32 %532, %597
  %599 = getelementptr inbounds i8, i8* %588, i32 1
  %600 = load i8, i8* %588, align 1
  %601 = zext i8 %600 to i32
  %602 = sub i32 0, %601
  %603 = getelementptr inbounds i8, i8* %37, i32 %602
  %604 = load i8, i8* %603, align 1
  %605 = zext i8 %604 to i32
  %606 = mul nsw i32 2, %605
  %607 = sub nsw i32 %596, %606
  %608 = zext i8 %604 to i32
  %609 = add nsw i32 %598, %608
  %610 = getelementptr inbounds i8, i8* %599, i32 1
  %611 = load i8, i8* %599, align 1
  %612 = zext i8 %611 to i32
  %613 = sub i32 0, %612
  %614 = getelementptr inbounds i8, i8* %37, i32 %613
  %615 = load i8, i8* %614, align 1
  %616 = zext i8 %615 to i32
  %617 = sub nsw i32 %607, %616
  %618 = zext i8 %615 to i32
  %619 = add nsw i32 %609, %618
  %620 = getelementptr inbounds i8, i8* %610, i32 1
  %621 = load i8, i8* %610, align 1
  %622 = zext i8 %621 to i32
  %623 = sub i32 0, %622
  %624 = getelementptr inbounds i8, i8* %37, i32 %623
  %625 = load i8, i8* %624, align 1
  %626 = zext i8 %625 to i32
  %627 = add nsw i32 %619, %626
  %628 = getelementptr inbounds i8, i8* %620, i32 1
  %629 = load i8, i8* %620, align 1
  %630 = zext i8 %629 to i32
  %631 = sub i32 0, %630
  %632 = getelementptr inbounds i8, i8* %37, i32 %631
  %633 = load i8, i8* %632, align 1
  %634 = zext i8 %633 to i32
  %635 = add nsw i32 %617, %634
  %636 = zext i8 %633 to i32
  %637 = add nsw i32 %627, %636
  %638 = getelementptr inbounds i8, i8* %628, i32 1
  %639 = load i8, i8* %628, align 1
  %640 = zext i8 %639 to i32
  %641 = sub i32 0, %640
  %642 = getelementptr inbounds i8, i8* %37, i32 %641
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i32
  %645 = mul nsw i32 2, %644
  %646 = add nsw i32 %635, %645
  %647 = zext i8 %643 to i32
  %648 = add nsw i32 %637, %647
  %649 = load i8, i8* %638, align 1
  %650 = zext i8 %649 to i32
  %651 = sub i32 0, %650
  %652 = getelementptr inbounds i8, i8* %37, i32 %651
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = mul nsw i32 3, %654
  %656 = add nsw i32 %646, %655
  %657 = zext i8 %653 to i32
  %658 = add nsw i32 %648, %657
  %659 = sub nsw i32 %5, 5
  %660 = getelementptr inbounds i8, i8* %638, i32 %659
  %661 = getelementptr inbounds i8, i8* %660, i32 1
  %662 = load i8, i8* %660, align 1
  %663 = zext i8 %662 to i32
  %664 = sub i32 0, %663
  %665 = getelementptr inbounds i8, i8* %37, i32 %664
  %666 = load i8, i8* %665, align 1
  %667 = zext i8 %666 to i32
  %668 = mul nsw i32 2, %667
  %669 = sub nsw i32 %656, %668
  %670 = zext i8 %666 to i32
  %671 = mul nsw i32 2, %670
  %672 = add nsw i32 %658, %671
  %673 = getelementptr inbounds i8, i8* %661, i32 1
  %674 = load i8, i8* %661, align 1
  %675 = zext i8 %674 to i32
  %676 = sub i32 0, %675
  %677 = getelementptr inbounds i8, i8* %37, i32 %676
  %678 = load i8, i8* %677, align 1
  %679 = zext i8 %678 to i32
  %680 = sub nsw i32 %669, %679
  %681 = zext i8 %678 to i32
  %682 = mul nsw i32 2, %681
  %683 = add nsw i32 %672, %682
  %684 = getelementptr inbounds i8, i8* %673, i32 1
  %685 = load i8, i8* %673, align 1
  %686 = zext i8 %685 to i32
  %687 = sub i32 0, %686
  %688 = getelementptr inbounds i8, i8* %37, i32 %687
  %689 = load i8, i8* %688, align 1
  %690 = zext i8 %689 to i32
  %691 = mul nsw i32 2, %690
  %692 = add nsw i32 %683, %691
  %693 = getelementptr inbounds i8, i8* %684, i32 1
  %694 = load i8, i8* %684, align 1
  %695 = zext i8 %694 to i32
  %696 = sub i32 0, %695
  %697 = getelementptr inbounds i8, i8* %37, i32 %696
  %698 = load i8, i8* %697, align 1
  %699 = zext i8 %698 to i32
  %700 = add nsw i32 %680, %699
  %701 = zext i8 %698 to i32
  %702 = mul nsw i32 2, %701
  %703 = add nsw i32 %692, %702
  %704 = load i8, i8* %693, align 1
  %705 = zext i8 %704 to i32
  %706 = sub i32 0, %705
  %707 = getelementptr inbounds i8, i8* %37, i32 %706
  %708 = load i8, i8* %707, align 1
  %709 = zext i8 %708 to i32
  %710 = mul nsw i32 2, %709
  %711 = add nsw i32 %700, %710
  %712 = zext i8 %708 to i32
  %713 = mul nsw i32 2, %712
  %714 = add nsw i32 %703, %713
  %715 = sub nsw i32 %5, 3
  %716 = getelementptr inbounds i8, i8* %693, i32 %715
  %717 = getelementptr inbounds i8, i8* %716, i32 1
  %718 = load i8, i8* %716, align 1
  %719 = zext i8 %718 to i32
  %720 = sub i32 0, %719
  %721 = getelementptr inbounds i8, i8* %37, i32 %720
  %722 = load i8, i8* %721, align 1
  %723 = zext i8 %722 to i32
  %724 = sub nsw i32 %711, %723
  %725 = zext i8 %722 to i32
  %726 = mul nsw i32 3, %725
  %727 = add nsw i32 %714, %726
  %728 = getelementptr inbounds i8, i8* %717, i32 1
  %729 = load i8, i8* %717, align 1
  %730 = zext i8 %729 to i32
  %731 = sub i32 0, %730
  %732 = getelementptr inbounds i8, i8* %37, i32 %731
  %733 = load i8, i8* %732, align 1
  %734 = zext i8 %733 to i32
  %735 = mul nsw i32 3, %734
  %736 = add nsw i32 %727, %735
  %737 = load i8, i8* %728, align 1
  %738 = zext i8 %737 to i32
  %739 = sub i32 0, %738
  %740 = getelementptr inbounds i8, i8* %37, i32 %739
  %741 = load i8, i8* %740, align 1
  %742 = zext i8 %741 to i32
  %743 = add nsw i32 %724, %742
  %744 = zext i8 %741 to i32
  %745 = mul nsw i32 3, %744
  %746 = add nsw i32 %736, %745
  %747 = mul nsw i32 %743, %743
  %748 = mul nsw i32 %746, %746
  %749 = add nsw i32 %747, %748
  %750 = mul nsw i32 %366, %366
  %751 = sdiv i32 %750, 2
  %752 = icmp sgt i32 %749, %751
  br i1 %752, label %753, label %939

; <label>:753:                                    ; preds = %368
  %754 = icmp slt i32 %748, %747
  br i1 %754, label %755, label %838

; <label>:755:                                    ; preds = %753
  %756 = sitofp i32 %746 to float
  %757 = call arm_aapcscc i32 @abs(i32 %743) #8
  %758 = sitofp i32 %757 to float
  %759 = fdiv float %756, %758
  %760 = call arm_aapcscc i32 @abs(i32 %743) #8
  %761 = sdiv i32 %760, %743
  %762 = fcmp olt float %759, 0.000000e+00
  br i1 %762, label %763, label %767

; <label>:763:                                    ; preds = %755
  %764 = fpext float %759 to double
  %765 = fsub double %764, 5.000000e-01
  %766 = fptosi double %765 to i32
  br label %771

; <label>:767:                                    ; preds = %755
  %768 = fpext float %759 to double
  %769 = fadd double %768, 5.000000e-01
  %770 = fptosi double %769 to i32
  br label %771

; <label>:771:                                    ; preds = %767, %763
  %772 = phi i32 [ %766, %763 ], [ %770, %767 ]
  %773 = add nsw i32 %.0768, %772
  %774 = mul nsw i32 %773, %5
  %775 = add nsw i32 %774, %.0766
  %776 = add nsw i32 %775, %761
  %777 = getelementptr inbounds i8, i8* %0, i32 %776
  %778 = load i8, i8* %777, align 1
  %779 = zext i8 %778 to i32
  %780 = sub i32 0, %779
  %781 = getelementptr inbounds i8, i8* %37, i32 %780
  %782 = load i8, i8* %781, align 1
  %783 = zext i8 %782 to i32
  %784 = fmul float 2.000000e+00, %759
  %785 = fcmp olt float %784, 0.000000e+00
  br i1 %785, label %786, label %791

; <label>:786:                                    ; preds = %771
  %787 = fmul float 2.000000e+00, %759
  %788 = fpext float %787 to double
  %789 = fsub double %788, 5.000000e-01
  %790 = fptosi double %789 to i32
  br label %796

; <label>:791:                                    ; preds = %771
  %792 = fmul float 2.000000e+00, %759
  %793 = fpext float %792 to double
  %794 = fadd double %793, 5.000000e-01
  %795 = fptosi double %794 to i32
  br label %796

; <label>:796:                                    ; preds = %791, %786
  %797 = phi i32 [ %790, %786 ], [ %795, %791 ]
  %798 = add nsw i32 %.0768, %797
  %799 = mul nsw i32 %798, %5
  %800 = add nsw i32 %799, %.0766
  %801 = mul nsw i32 2, %761
  %802 = add nsw i32 %800, %801
  %803 = getelementptr inbounds i8, i8* %0, i32 %802
  %804 = load i8, i8* %803, align 1
  %805 = zext i8 %804 to i32
  %806 = sub i32 0, %805
  %807 = getelementptr inbounds i8, i8* %37, i32 %806
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i32
  %810 = add nsw i32 %783, %809
  %811 = fmul float 3.000000e+00, %759
  %812 = fcmp olt float %811, 0.000000e+00
  br i1 %812, label %813, label %818

; <label>:813:                                    ; preds = %796
  %814 = fmul float 3.000000e+00, %759
  %815 = fpext float %814 to double
  %816 = fsub double %815, 5.000000e-01
  %817 = fptosi double %816 to i32
  br label %823

; <label>:818:                                    ; preds = %796
  %819 = fmul float 3.000000e+00, %759
  %820 = fpext float %819 to double
  %821 = fadd double %820, 5.000000e-01
  %822 = fptosi double %821 to i32
  br label %823

; <label>:823:                                    ; preds = %818, %813
  %824 = phi i32 [ %817, %813 ], [ %822, %818 ]
  %825 = add nsw i32 %.0768, %824
  %826 = mul nsw i32 %825, %5
  %827 = add nsw i32 %826, %.0766
  %828 = mul nsw i32 3, %761
  %829 = add nsw i32 %827, %828
  %830 = getelementptr inbounds i8, i8* %0, i32 %829
  %831 = load i8, i8* %830, align 1
  %832 = zext i8 %831 to i32
  %833 = sub i32 0, %832
  %834 = getelementptr inbounds i8, i8* %37, i32 %833
  %835 = load i8, i8* %834, align 1
  %836 = zext i8 %835 to i32
  %837 = add nsw i32 %810, %836
  br label %921

; <label>:838:                                    ; preds = %753
  %839 = sitofp i32 %743 to float
  %840 = call arm_aapcscc i32 @abs(i32 %746) #8
  %841 = sitofp i32 %840 to float
  %842 = fdiv float %839, %841
  %843 = call arm_aapcscc i32 @abs(i32 %746) #8
  %844 = sdiv i32 %843, %746
  %845 = add nsw i32 %.0768, %844
  %846 = mul nsw i32 %845, %5
  %847 = add nsw i32 %846, %.0766
  %848 = fcmp olt float %842, 0.000000e+00
  br i1 %848, label %849, label %853

; <label>:849:                                    ; preds = %838
  %850 = fpext float %842 to double
  %851 = fsub double %850, 5.000000e-01
  %852 = fptosi double %851 to i32
  br label %857

; <label>:853:                                    ; preds = %838
  %854 = fpext float %842 to double
  %855 = fadd double %854, 5.000000e-01
  %856 = fptosi double %855 to i32
  br label %857

; <label>:857:                                    ; preds = %853, %849
  %858 = phi i32 [ %852, %849 ], [ %856, %853 ]
  %859 = add nsw i32 %847, %858
  %860 = getelementptr inbounds i8, i8* %0, i32 %859
  %861 = load i8, i8* %860, align 1
  %862 = zext i8 %861 to i32
  %863 = sub i32 0, %862
  %864 = getelementptr inbounds i8, i8* %37, i32 %863
  %865 = load i8, i8* %864, align 1
  %866 = zext i8 %865 to i32
  %867 = mul nsw i32 2, %844
  %868 = add nsw i32 %.0768, %867
  %869 = mul nsw i32 %868, %5
  %870 = add nsw i32 %869, %.0766
  %871 = fmul float 2.000000e+00, %842
  %872 = fcmp olt float %871, 0.000000e+00
  br i1 %872, label %873, label %878

; <label>:873:                                    ; preds = %857
  %874 = fmul float 2.000000e+00, %842
  %875 = fpext float %874 to double
  %876 = fsub double %875, 5.000000e-01
  %877 = fptosi double %876 to i32
  br label %883

; <label>:878:                                    ; preds = %857
  %879 = fmul float 2.000000e+00, %842
  %880 = fpext float %879 to double
  %881 = fadd double %880, 5.000000e-01
  %882 = fptosi double %881 to i32
  br label %883

; <label>:883:                                    ; preds = %878, %873
  %884 = phi i32 [ %877, %873 ], [ %882, %878 ]
  %885 = add nsw i32 %870, %884
  %886 = getelementptr inbounds i8, i8* %0, i32 %885
  %887 = load i8, i8* %886, align 1
  %888 = zext i8 %887 to i32
  %889 = sub i32 0, %888
  %890 = getelementptr inbounds i8, i8* %37, i32 %889
  %891 = load i8, i8* %890, align 1
  %892 = zext i8 %891 to i32
  %893 = add nsw i32 %866, %892
  %894 = mul nsw i32 3, %844
  %895 = add nsw i32 %.0768, %894
  %896 = mul nsw i32 %895, %5
  %897 = add nsw i32 %896, %.0766
  %898 = fmul float 3.000000e+00, %842
  %899 = fcmp olt float %898, 0.000000e+00
  br i1 %899, label %900, label %905

; <label>:900:                                    ; preds = %883
  %901 = fmul float 3.000000e+00, %842
  %902 = fpext float %901 to double
  %903 = fsub double %902, 5.000000e-01
  %904 = fptosi double %903 to i32
  br label %910

; <label>:905:                                    ; preds = %883
  %906 = fmul float 3.000000e+00, %842
  %907 = fpext float %906 to double
  %908 = fadd double %907, 5.000000e-01
  %909 = fptosi double %908 to i32
  br label %910

; <label>:910:                                    ; preds = %905, %900
  %911 = phi i32 [ %904, %900 ], [ %909, %905 ]
  %912 = add nsw i32 %897, %911
  %913 = getelementptr inbounds i8, i8* %0, i32 %912
  %914 = load i8, i8* %913, align 1
  %915 = zext i8 %914 to i32
  %916 = sub i32 0, %915
  %917 = getelementptr inbounds i8, i8* %37, i32 %916
  %918 = load i8, i8* %917, align 1
  %919 = zext i8 %918 to i32
  %920 = add nsw i32 %893, %919
  br label %921

; <label>:921:                                    ; preds = %910, %823
  %.0765 = phi i32 [ %837, %823 ], [ %920, %910 ]
  %922 = icmp sgt i32 %.0765, 290
  br i1 %922, label %923, label %938

; <label>:923:                                    ; preds = %921
  %924 = sub nsw i32 %3, %366
  %925 = mul nsw i32 %.0768, %5
  %926 = add nsw i32 %925, %.0766
  %927 = getelementptr inbounds i32, i32* %1, i32 %926
  store i32 %924, i32* %927, align 4
  %928 = mul nsw i32 51, %743
  %929 = sdiv i32 %928, %366
  %930 = mul nsw i32 %.0768, %5
  %931 = add nsw i32 %930, %.0766
  %932 = getelementptr inbounds i32, i32* %14, i32 %931
  store i32 %929, i32* %932, align 4
  %933 = mul nsw i32 51, %746
  %934 = sdiv i32 %933, %366
  %935 = mul nsw i32 %.0768, %5
  %936 = add nsw i32 %935, %.0766
  %937 = getelementptr inbounds i32, i32* %18, i32 %936
  store i32 %934, i32* %937, align 4
  br label %938

; <label>:938:                                    ; preds = %923, %921
  br label %939

; <label>:939:                                    ; preds = %938, %368
  br label %940

; <label>:940:                                    ; preds = %939, %359
  br label %941

; <label>:941:                                    ; preds = %940, %349
  br label %942

; <label>:942:                                    ; preds = %941, %337
  br label %943

; <label>:943:                                    ; preds = %942, %328
  br label %944

; <label>:944:                                    ; preds = %943, %318
  br label %945

; <label>:945:                                    ; preds = %944, %308
  br label %946

; <label>:946:                                    ; preds = %945, %298
  br label %947

; <label>:947:                                    ; preds = %946, %286
  br label %948

; <label>:948:                                    ; preds = %947, %277
  br label %949

; <label>:949:                                    ; preds = %948, %267
  br label %950

; <label>:950:                                    ; preds = %949, %257
  br label %951

; <label>:951:                                    ; preds = %950, %247
  br label %952

; <label>:952:                                    ; preds = %951, %237
  br label %953

; <label>:953:                                    ; preds = %952, %227
  br label %954

; <label>:954:                                    ; preds = %953, %215
  br label %955

; <label>:955:                                    ; preds = %954, %206
  br label %956

; <label>:956:                                    ; preds = %955, %196
  br label %957

; <label>:957:                                    ; preds = %956, %185
  br label %958

; <label>:958:                                    ; preds = %957, %26
  br label %959

; <label>:959:                                    ; preds = %958
  %960 = add nsw i32 %.0766, 1
  br label %23

; <label>:961:                                    ; preds = %23
  br label %962

; <label>:962:                                    ; preds = %961
  %963 = add nsw i32 %.0768, 1
  br label %19

; <label>:964:                                    ; preds = %19
  br label %965

; <label>:965:                                    ; preds = %1387, %964
  %.1769 = phi i32 [ 5, %964 ], [ %1388, %1387 ]
  %.0 = phi i32 [ 0, %964 ], [ %.1, %1387 ]
  %966 = sub nsw i32 %6, 5
  %967 = icmp slt i32 %.1769, %966
  br i1 %967, label %968, label %1389

; <label>:968:                                    ; preds = %965
  br label %969

; <label>:969:                                    ; preds = %1384, %968
  %.1767 = phi i32 [ 5, %968 ], [ %1385, %1384 ]
  %.1 = phi i32 [ %.0, %968 ], [ %.3, %1384 ]
  %970 = sub nsw i32 %5, 5
  %971 = icmp slt i32 %.1767, %970
  br i1 %971, label %972, label %1386

; <label>:972:                                    ; preds = %969
  %973 = mul nsw i32 %.1769, %5
  %974 = add nsw i32 %973, %.1767
  %975 = getelementptr inbounds i32, i32* %1, i32 %974
  %976 = load i32, i32* %975, align 4
  %977 = icmp sgt i32 %976, 0
  br i1 %977, label %978, label %1383

; <label>:978:                                    ; preds = %972
  %979 = sub nsw i32 %.1769, 3
  %980 = mul nsw i32 %979, %5
  %981 = add nsw i32 %980, %.1767
  %982 = sub nsw i32 %981, 3
  %983 = getelementptr inbounds i32, i32* %1, i32 %982
  %984 = load i32, i32* %983, align 4
  %985 = icmp sgt i32 %976, %984
  br i1 %985, label %986, label %1382

; <label>:986:                                    ; preds = %978
  %987 = sub nsw i32 %.1769, 3
  %988 = mul nsw i32 %987, %5
  %989 = add nsw i32 %988, %.1767
  %990 = sub nsw i32 %989, 2
  %991 = getelementptr inbounds i32, i32* %1, i32 %990
  %992 = load i32, i32* %991, align 4
  %993 = icmp sgt i32 %976, %992
  br i1 %993, label %994, label %1382

; <label>:994:                                    ; preds = %986
  %995 = sub nsw i32 %.1769, 3
  %996 = mul nsw i32 %995, %5
  %997 = add nsw i32 %996, %.1767
  %998 = sub nsw i32 %997, 1
  %999 = getelementptr inbounds i32, i32* %1, i32 %998
  %1000 = load i32, i32* %999, align 4
  %1001 = icmp sgt i32 %976, %1000
  br i1 %1001, label %1002, label %1382

; <label>:1002:                                   ; preds = %994
  %1003 = sub nsw i32 %.1769, 3
  %1004 = mul nsw i32 %1003, %5
  %1005 = add nsw i32 %1004, %.1767
  %1006 = getelementptr inbounds i32, i32* %1, i32 %1005
  %1007 = load i32, i32* %1006, align 4
  %1008 = icmp sgt i32 %976, %1007
  br i1 %1008, label %1009, label %1382

; <label>:1009:                                   ; preds = %1002
  %1010 = sub nsw i32 %.1769, 3
  %1011 = mul nsw i32 %1010, %5
  %1012 = add nsw i32 %1011, %.1767
  %1013 = add nsw i32 %1012, 1
  %1014 = getelementptr inbounds i32, i32* %1, i32 %1013
  %1015 = load i32, i32* %1014, align 4
  %1016 = icmp sgt i32 %976, %1015
  br i1 %1016, label %1017, label %1382

; <label>:1017:                                   ; preds = %1009
  %1018 = sub nsw i32 %.1769, 3
  %1019 = mul nsw i32 %1018, %5
  %1020 = add nsw i32 %1019, %.1767
  %1021 = add nsw i32 %1020, 2
  %1022 = getelementptr inbounds i32, i32* %1, i32 %1021
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp sgt i32 %976, %1023
  br i1 %1024, label %1025, label %1382

; <label>:1025:                                   ; preds = %1017
  %1026 = sub nsw i32 %.1769, 3
  %1027 = mul nsw i32 %1026, %5
  %1028 = add nsw i32 %1027, %.1767
  %1029 = add nsw i32 %1028, 3
  %1030 = getelementptr inbounds i32, i32* %1, i32 %1029
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp sgt i32 %976, %1031
  br i1 %1032, label %1033, label %1382

; <label>:1033:                                   ; preds = %1025
  %1034 = sub nsw i32 %.1769, 2
  %1035 = mul nsw i32 %1034, %5
  %1036 = add nsw i32 %1035, %.1767
  %1037 = sub nsw i32 %1036, 3
  %1038 = getelementptr inbounds i32, i32* %1, i32 %1037
  %1039 = load i32, i32* %1038, align 4
  %1040 = icmp sgt i32 %976, %1039
  br i1 %1040, label %1041, label %1382

; <label>:1041:                                   ; preds = %1033
  %1042 = sub nsw i32 %.1769, 2
  %1043 = mul nsw i32 %1042, %5
  %1044 = add nsw i32 %1043, %.1767
  %1045 = sub nsw i32 %1044, 2
  %1046 = getelementptr inbounds i32, i32* %1, i32 %1045
  %1047 = load i32, i32* %1046, align 4
  %1048 = icmp sgt i32 %976, %1047
  br i1 %1048, label %1049, label %1382

; <label>:1049:                                   ; preds = %1041
  %1050 = sub nsw i32 %.1769, 2
  %1051 = mul nsw i32 %1050, %5
  %1052 = add nsw i32 %1051, %.1767
  %1053 = sub nsw i32 %1052, 1
  %1054 = getelementptr inbounds i32, i32* %1, i32 %1053
  %1055 = load i32, i32* %1054, align 4
  %1056 = icmp sgt i32 %976, %1055
  br i1 %1056, label %1057, label %1382

; <label>:1057:                                   ; preds = %1049
  %1058 = sub nsw i32 %.1769, 2
  %1059 = mul nsw i32 %1058, %5
  %1060 = add nsw i32 %1059, %.1767
  %1061 = getelementptr inbounds i32, i32* %1, i32 %1060
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp sgt i32 %976, %1062
  br i1 %1063, label %1064, label %1382

; <label>:1064:                                   ; preds = %1057
  %1065 = sub nsw i32 %.1769, 2
  %1066 = mul nsw i32 %1065, %5
  %1067 = add nsw i32 %1066, %.1767
  %1068 = add nsw i32 %1067, 1
  %1069 = getelementptr inbounds i32, i32* %1, i32 %1068
  %1070 = load i32, i32* %1069, align 4
  %1071 = icmp sgt i32 %976, %1070
  br i1 %1071, label %1072, label %1382

; <label>:1072:                                   ; preds = %1064
  %1073 = sub nsw i32 %.1769, 2
  %1074 = mul nsw i32 %1073, %5
  %1075 = add nsw i32 %1074, %.1767
  %1076 = add nsw i32 %1075, 2
  %1077 = getelementptr inbounds i32, i32* %1, i32 %1076
  %1078 = load i32, i32* %1077, align 4
  %1079 = icmp sgt i32 %976, %1078
  br i1 %1079, label %1080, label %1382

; <label>:1080:                                   ; preds = %1072
  %1081 = sub nsw i32 %.1769, 2
  %1082 = mul nsw i32 %1081, %5
  %1083 = add nsw i32 %1082, %.1767
  %1084 = add nsw i32 %1083, 3
  %1085 = getelementptr inbounds i32, i32* %1, i32 %1084
  %1086 = load i32, i32* %1085, align 4
  %1087 = icmp sgt i32 %976, %1086
  br i1 %1087, label %1088, label %1382

; <label>:1088:                                   ; preds = %1080
  %1089 = sub nsw i32 %.1769, 1
  %1090 = mul nsw i32 %1089, %5
  %1091 = add nsw i32 %1090, %.1767
  %1092 = sub nsw i32 %1091, 3
  %1093 = getelementptr inbounds i32, i32* %1, i32 %1092
  %1094 = load i32, i32* %1093, align 4
  %1095 = icmp sgt i32 %976, %1094
  br i1 %1095, label %1096, label %1382

; <label>:1096:                                   ; preds = %1088
  %1097 = sub nsw i32 %.1769, 1
  %1098 = mul nsw i32 %1097, %5
  %1099 = add nsw i32 %1098, %.1767
  %1100 = sub nsw i32 %1099, 2
  %1101 = getelementptr inbounds i32, i32* %1, i32 %1100
  %1102 = load i32, i32* %1101, align 4
  %1103 = icmp sgt i32 %976, %1102
  br i1 %1103, label %1104, label %1382

; <label>:1104:                                   ; preds = %1096
  %1105 = sub nsw i32 %.1769, 1
  %1106 = mul nsw i32 %1105, %5
  %1107 = add nsw i32 %1106, %.1767
  %1108 = sub nsw i32 %1107, 1
  %1109 = getelementptr inbounds i32, i32* %1, i32 %1108
  %1110 = load i32, i32* %1109, align 4
  %1111 = icmp sgt i32 %976, %1110
  br i1 %1111, label %1112, label %1382

; <label>:1112:                                   ; preds = %1104
  %1113 = sub nsw i32 %.1769, 1
  %1114 = mul nsw i32 %1113, %5
  %1115 = add nsw i32 %1114, %.1767
  %1116 = getelementptr inbounds i32, i32* %1, i32 %1115
  %1117 = load i32, i32* %1116, align 4
  %1118 = icmp sgt i32 %976, %1117
  br i1 %1118, label %1119, label %1382

; <label>:1119:                                   ; preds = %1112
  %1120 = sub nsw i32 %.1769, 1
  %1121 = mul nsw i32 %1120, %5
  %1122 = add nsw i32 %1121, %.1767
  %1123 = add nsw i32 %1122, 1
  %1124 = getelementptr inbounds i32, i32* %1, i32 %1123
  %1125 = load i32, i32* %1124, align 4
  %1126 = icmp sgt i32 %976, %1125
  br i1 %1126, label %1127, label %1382

; <label>:1127:                                   ; preds = %1119
  %1128 = sub nsw i32 %.1769, 1
  %1129 = mul nsw i32 %1128, %5
  %1130 = add nsw i32 %1129, %.1767
  %1131 = add nsw i32 %1130, 2
  %1132 = getelementptr inbounds i32, i32* %1, i32 %1131
  %1133 = load i32, i32* %1132, align 4
  %1134 = icmp sgt i32 %976, %1133
  br i1 %1134, label %1135, label %1382

; <label>:1135:                                   ; preds = %1127
  %1136 = sub nsw i32 %.1769, 1
  %1137 = mul nsw i32 %1136, %5
  %1138 = add nsw i32 %1137, %.1767
  %1139 = add nsw i32 %1138, 3
  %1140 = getelementptr inbounds i32, i32* %1, i32 %1139
  %1141 = load i32, i32* %1140, align 4
  %1142 = icmp sgt i32 %976, %1141
  br i1 %1142, label %1143, label %1382

; <label>:1143:                                   ; preds = %1135
  %1144 = mul nsw i32 %.1769, %5
  %1145 = add nsw i32 %1144, %.1767
  %1146 = sub nsw i32 %1145, 3
  %1147 = getelementptr inbounds i32, i32* %1, i32 %1146
  %1148 = load i32, i32* %1147, align 4
  %1149 = icmp sgt i32 %976, %1148
  br i1 %1149, label %1150, label %1382

; <label>:1150:                                   ; preds = %1143
  %1151 = mul nsw i32 %.1769, %5
  %1152 = add nsw i32 %1151, %.1767
  %1153 = sub nsw i32 %1152, 2
  %1154 = getelementptr inbounds i32, i32* %1, i32 %1153
  %1155 = load i32, i32* %1154, align 4
  %1156 = icmp sgt i32 %976, %1155
  br i1 %1156, label %1157, label %1382

; <label>:1157:                                   ; preds = %1150
  %1158 = mul nsw i32 %.1769, %5
  %1159 = add nsw i32 %1158, %.1767
  %1160 = sub nsw i32 %1159, 1
  %1161 = getelementptr inbounds i32, i32* %1, i32 %1160
  %1162 = load i32, i32* %1161, align 4
  %1163 = icmp sgt i32 %976, %1162
  br i1 %1163, label %1164, label %1382

; <label>:1164:                                   ; preds = %1157
  %1165 = mul nsw i32 %.1769, %5
  %1166 = add nsw i32 %1165, %.1767
  %1167 = add nsw i32 %1166, 1
  %1168 = getelementptr inbounds i32, i32* %1, i32 %1167
  %1169 = load i32, i32* %1168, align 4
  %1170 = icmp sge i32 %976, %1169
  br i1 %1170, label %1171, label %1382

; <label>:1171:                                   ; preds = %1164
  %1172 = mul nsw i32 %.1769, %5
  %1173 = add nsw i32 %1172, %.1767
  %1174 = add nsw i32 %1173, 2
  %1175 = getelementptr inbounds i32, i32* %1, i32 %1174
  %1176 = load i32, i32* %1175, align 4
  %1177 = icmp sge i32 %976, %1176
  br i1 %1177, label %1178, label %1382

; <label>:1178:                                   ; preds = %1171
  %1179 = mul nsw i32 %.1769, %5
  %1180 = add nsw i32 %1179, %.1767
  %1181 = add nsw i32 %1180, 3
  %1182 = getelementptr inbounds i32, i32* %1, i32 %1181
  %1183 = load i32, i32* %1182, align 4
  %1184 = icmp sge i32 %976, %1183
  br i1 %1184, label %1185, label %1382

; <label>:1185:                                   ; preds = %1178
  %1186 = add nsw i32 %.1769, 1
  %1187 = mul nsw i32 %1186, %5
  %1188 = add nsw i32 %1187, %.1767
  %1189 = sub nsw i32 %1188, 3
  %1190 = getelementptr inbounds i32, i32* %1, i32 %1189
  %1191 = load i32, i32* %1190, align 4
  %1192 = icmp sge i32 %976, %1191
  br i1 %1192, label %1193, label %1382

; <label>:1193:                                   ; preds = %1185
  %1194 = add nsw i32 %.1769, 1
  %1195 = mul nsw i32 %1194, %5
  %1196 = add nsw i32 %1195, %.1767
  %1197 = sub nsw i32 %1196, 2
  %1198 = getelementptr inbounds i32, i32* %1, i32 %1197
  %1199 = load i32, i32* %1198, align 4
  %1200 = icmp sge i32 %976, %1199
  br i1 %1200, label %1201, label %1382

; <label>:1201:                                   ; preds = %1193
  %1202 = add nsw i32 %.1769, 1
  %1203 = mul nsw i32 %1202, %5
  %1204 = add nsw i32 %1203, %.1767
  %1205 = sub nsw i32 %1204, 1
  %1206 = getelementptr inbounds i32, i32* %1, i32 %1205
  %1207 = load i32, i32* %1206, align 4
  %1208 = icmp sge i32 %976, %1207
  br i1 %1208, label %1209, label %1382

; <label>:1209:                                   ; preds = %1201
  %1210 = add nsw i32 %.1769, 1
  %1211 = mul nsw i32 %1210, %5
  %1212 = add nsw i32 %1211, %.1767
  %1213 = getelementptr inbounds i32, i32* %1, i32 %1212
  %1214 = load i32, i32* %1213, align 4
  %1215 = icmp sge i32 %976, %1214
  br i1 %1215, label %1216, label %1382

; <label>:1216:                                   ; preds = %1209
  %1217 = add nsw i32 %.1769, 1
  %1218 = mul nsw i32 %1217, %5
  %1219 = add nsw i32 %1218, %.1767
  %1220 = add nsw i32 %1219, 1
  %1221 = getelementptr inbounds i32, i32* %1, i32 %1220
  %1222 = load i32, i32* %1221, align 4
  %1223 = icmp sge i32 %976, %1222
  br i1 %1223, label %1224, label %1382

; <label>:1224:                                   ; preds = %1216
  %1225 = add nsw i32 %.1769, 1
  %1226 = mul nsw i32 %1225, %5
  %1227 = add nsw i32 %1226, %.1767
  %1228 = add nsw i32 %1227, 2
  %1229 = getelementptr inbounds i32, i32* %1, i32 %1228
  %1230 = load i32, i32* %1229, align 4
  %1231 = icmp sge i32 %976, %1230
  br i1 %1231, label %1232, label %1382

; <label>:1232:                                   ; preds = %1224
  %1233 = add nsw i32 %.1769, 1
  %1234 = mul nsw i32 %1233, %5
  %1235 = add nsw i32 %1234, %.1767
  %1236 = add nsw i32 %1235, 3
  %1237 = getelementptr inbounds i32, i32* %1, i32 %1236
  %1238 = load i32, i32* %1237, align 4
  %1239 = icmp sge i32 %976, %1238
  br i1 %1239, label %1240, label %1382

; <label>:1240:                                   ; preds = %1232
  %1241 = add nsw i32 %.1769, 2
  %1242 = mul nsw i32 %1241, %5
  %1243 = add nsw i32 %1242, %.1767
  %1244 = sub nsw i32 %1243, 3
  %1245 = getelementptr inbounds i32, i32* %1, i32 %1244
  %1246 = load i32, i32* %1245, align 4
  %1247 = icmp sge i32 %976, %1246
  br i1 %1247, label %1248, label %1382

; <label>:1248:                                   ; preds = %1240
  %1249 = add nsw i32 %.1769, 2
  %1250 = mul nsw i32 %1249, %5
  %1251 = add nsw i32 %1250, %.1767
  %1252 = sub nsw i32 %1251, 2
  %1253 = getelementptr inbounds i32, i32* %1, i32 %1252
  %1254 = load i32, i32* %1253, align 4
  %1255 = icmp sge i32 %976, %1254
  br i1 %1255, label %1256, label %1382

; <label>:1256:                                   ; preds = %1248
  %1257 = add nsw i32 %.1769, 2
  %1258 = mul nsw i32 %1257, %5
  %1259 = add nsw i32 %1258, %.1767
  %1260 = sub nsw i32 %1259, 1
  %1261 = getelementptr inbounds i32, i32* %1, i32 %1260
  %1262 = load i32, i32* %1261, align 4
  %1263 = icmp sge i32 %976, %1262
  br i1 %1263, label %1264, label %1382

; <label>:1264:                                   ; preds = %1256
  %1265 = add nsw i32 %.1769, 2
  %1266 = mul nsw i32 %1265, %5
  %1267 = add nsw i32 %1266, %.1767
  %1268 = getelementptr inbounds i32, i32* %1, i32 %1267
  %1269 = load i32, i32* %1268, align 4
  %1270 = icmp sge i32 %976, %1269
  br i1 %1270, label %1271, label %1382

; <label>:1271:                                   ; preds = %1264
  %1272 = add nsw i32 %.1769, 2
  %1273 = mul nsw i32 %1272, %5
  %1274 = add nsw i32 %1273, %.1767
  %1275 = add nsw i32 %1274, 1
  %1276 = getelementptr inbounds i32, i32* %1, i32 %1275
  %1277 = load i32, i32* %1276, align 4
  %1278 = icmp sge i32 %976, %1277
  br i1 %1278, label %1279, label %1382

; <label>:1279:                                   ; preds = %1271
  %1280 = add nsw i32 %.1769, 2
  %1281 = mul nsw i32 %1280, %5
  %1282 = add nsw i32 %1281, %.1767
  %1283 = add nsw i32 %1282, 2
  %1284 = getelementptr inbounds i32, i32* %1, i32 %1283
  %1285 = load i32, i32* %1284, align 4
  %1286 = icmp sge i32 %976, %1285
  br i1 %1286, label %1287, label %1382

; <label>:1287:                                   ; preds = %1279
  %1288 = add nsw i32 %.1769, 2
  %1289 = mul nsw i32 %1288, %5
  %1290 = add nsw i32 %1289, %.1767
  %1291 = add nsw i32 %1290, 3
  %1292 = getelementptr inbounds i32, i32* %1, i32 %1291
  %1293 = load i32, i32* %1292, align 4
  %1294 = icmp sge i32 %976, %1293
  br i1 %1294, label %1295, label %1382

; <label>:1295:                                   ; preds = %1287
  %1296 = add nsw i32 %.1769, 3
  %1297 = mul nsw i32 %1296, %5
  %1298 = add nsw i32 %1297, %.1767
  %1299 = sub nsw i32 %1298, 3
  %1300 = getelementptr inbounds i32, i32* %1, i32 %1299
  %1301 = load i32, i32* %1300, align 4
  %1302 = icmp sge i32 %976, %1301
  br i1 %1302, label %1303, label %1382

; <label>:1303:                                   ; preds = %1295
  %1304 = add nsw i32 %.1769, 3
  %1305 = mul nsw i32 %1304, %5
  %1306 = add nsw i32 %1305, %.1767
  %1307 = sub nsw i32 %1306, 2
  %1308 = getelementptr inbounds i32, i32* %1, i32 %1307
  %1309 = load i32, i32* %1308, align 4
  %1310 = icmp sge i32 %976, %1309
  br i1 %1310, label %1311, label %1382

; <label>:1311:                                   ; preds = %1303
  %1312 = add nsw i32 %.1769, 3
  %1313 = mul nsw i32 %1312, %5
  %1314 = add nsw i32 %1313, %.1767
  %1315 = sub nsw i32 %1314, 1
  %1316 = getelementptr inbounds i32, i32* %1, i32 %1315
  %1317 = load i32, i32* %1316, align 4
  %1318 = icmp sge i32 %976, %1317
  br i1 %1318, label %1319, label %1382

; <label>:1319:                                   ; preds = %1311
  %1320 = add nsw i32 %.1769, 3
  %1321 = mul nsw i32 %1320, %5
  %1322 = add nsw i32 %1321, %.1767
  %1323 = getelementptr inbounds i32, i32* %1, i32 %1322
  %1324 = load i32, i32* %1323, align 4
  %1325 = icmp sge i32 %976, %1324
  br i1 %1325, label %1326, label %1382

; <label>:1326:                                   ; preds = %1319
  %1327 = add nsw i32 %.1769, 3
  %1328 = mul nsw i32 %1327, %5
  %1329 = add nsw i32 %1328, %.1767
  %1330 = add nsw i32 %1329, 1
  %1331 = getelementptr inbounds i32, i32* %1, i32 %1330
  %1332 = load i32, i32* %1331, align 4
  %1333 = icmp sge i32 %976, %1332
  br i1 %1333, label %1334, label %1382

; <label>:1334:                                   ; preds = %1326
  %1335 = add nsw i32 %.1769, 3
  %1336 = mul nsw i32 %1335, %5
  %1337 = add nsw i32 %1336, %.1767
  %1338 = add nsw i32 %1337, 2
  %1339 = getelementptr inbounds i32, i32* %1, i32 %1338
  %1340 = load i32, i32* %1339, align 4
  %1341 = icmp sge i32 %976, %1340
  br i1 %1341, label %1342, label %1382

; <label>:1342:                                   ; preds = %1334
  %1343 = add nsw i32 %.1769, 3
  %1344 = mul nsw i32 %1343, %5
  %1345 = add nsw i32 %1344, %.1767
  %1346 = add nsw i32 %1345, 3
  %1347 = getelementptr inbounds i32, i32* %1, i32 %1346
  %1348 = load i32, i32* %1347, align 4
  %1349 = icmp sge i32 %976, %1348
  br i1 %1349, label %1350, label %1382

; <label>:1350:                                   ; preds = %1342
  %1351 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1352 = getelementptr inbounds %struct.anon, %struct.anon* %1351, i32 0, i32 2
  store i32 0, i32* %1352, align 4
  %1353 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1354 = getelementptr inbounds %struct.anon, %struct.anon* %1353, i32 0, i32 0
  store i32 %.1767, i32* %1354, align 4
  %1355 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1356 = getelementptr inbounds %struct.anon, %struct.anon* %1355, i32 0, i32 1
  store i32 %.1769, i32* %1356, align 4
  %1357 = mul nsw i32 %.1769, %5
  %1358 = add nsw i32 %1357, %.1767
  %1359 = getelementptr inbounds i32, i32* %14, i32 %1358
  %1360 = load i32, i32* %1359, align 4
  %1361 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1362 = getelementptr inbounds %struct.anon, %struct.anon* %1361, i32 0, i32 3
  store i32 %1360, i32* %1362, align 4
  %1363 = mul nsw i32 %.1769, %5
  %1364 = add nsw i32 %1363, %.1767
  %1365 = getelementptr inbounds i32, i32* %18, i32 %1364
  %1366 = load i32, i32* %1365, align 4
  %1367 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1368 = getelementptr inbounds %struct.anon, %struct.anon* %1367, i32 0, i32 4
  store i32 %1366, i32* %1368, align 4
  %1369 = mul nsw i32 %.1769, %5
  %1370 = add nsw i32 %1369, %.1767
  %1371 = getelementptr inbounds i8, i8* %0, i32 %1370
  %1372 = load i8, i8* %1371, align 1
  %1373 = zext i8 %1372 to i32
  %1374 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1375 = getelementptr inbounds %struct.anon, %struct.anon* %1374, i32 0, i32 5
  store i32 %1373, i32* %1375, align 4
  %1376 = add nsw i32 %.1, 1
  %1377 = icmp eq i32 %1376, 15000
  br i1 %1377, label %1378, label %1381

; <label>:1378:                                   ; preds = %1350
  %1379 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %1380 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1379, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #6
  unreachable

; <label>:1381:                                   ; preds = %1350
  br label %1382

; <label>:1382:                                   ; preds = %1381, %1342, %1334, %1326, %1319, %1311, %1303, %1295, %1287, %1279, %1271, %1264, %1256, %1248, %1240, %1232, %1224, %1216, %1209, %1201, %1193, %1185, %1178, %1171, %1164, %1157, %1150, %1143, %1135, %1127, %1119, %1112, %1104, %1096, %1088, %1080, %1072, %1064, %1057, %1049, %1041, %1033, %1025, %1017, %1009, %1002, %994, %986, %978
  %.2 = phi i32 [ %1376, %1381 ], [ %.1, %1342 ], [ %.1, %1334 ], [ %.1, %1326 ], [ %.1, %1319 ], [ %.1, %1311 ], [ %.1, %1303 ], [ %.1, %1295 ], [ %.1, %1287 ], [ %.1, %1279 ], [ %.1, %1271 ], [ %.1, %1264 ], [ %.1, %1256 ], [ %.1, %1248 ], [ %.1, %1240 ], [ %.1, %1232 ], [ %.1, %1224 ], [ %.1, %1216 ], [ %.1, %1209 ], [ %.1, %1201 ], [ %.1, %1193 ], [ %.1, %1185 ], [ %.1, %1178 ], [ %.1, %1171 ], [ %.1, %1164 ], [ %.1, %1157 ], [ %.1, %1150 ], [ %.1, %1143 ], [ %.1, %1135 ], [ %.1, %1127 ], [ %.1, %1119 ], [ %.1, %1112 ], [ %.1, %1104 ], [ %.1, %1096 ], [ %.1, %1088 ], [ %.1, %1080 ], [ %.1, %1072 ], [ %.1, %1064 ], [ %.1, %1057 ], [ %.1, %1049 ], [ %.1, %1041 ], [ %.1, %1033 ], [ %.1, %1025 ], [ %.1, %1017 ], [ %.1, %1009 ], [ %.1, %1002 ], [ %.1, %994 ], [ %.1, %986 ], [ %.1, %978 ]
  br label %1383

; <label>:1383:                                   ; preds = %1382, %972
  %.3 = phi i32 [ %.2, %1382 ], [ %.1, %972 ]
  br label %1384

; <label>:1384:                                   ; preds = %1383
  %1385 = add nsw i32 %.1767, 1
  br label %969

; <label>:1386:                                   ; preds = %969
  br label %1387

; <label>:1387:                                   ; preds = %1386
  %1388 = add nsw i32 %.1769, 1
  br label %965

; <label>:1389:                                   ; preds = %965
  %1390 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.0
  %1391 = getelementptr inbounds %struct.anon, %struct.anon* %1390, i32 0, i32 2
  store i32 7, i32* %1391, align 4
  %1392 = bitcast i32* %14 to i8*
  call arm_aapcscc void @free(i8* %1392)
  %1393 = bitcast i32* %18 to i8*
  call arm_aapcscc void @free(i8* %1393)
  ret i32 undef
}

; Function Attrs: nounwind readnone
declare arm_aapcscc i32 @abs(i32) #5

declare arm_aapcscc void @free(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @susan_corners_quick(i8*, i32*, i8*, i32, %struct.anon*, i32, i32) #0 {
  %8 = bitcast i32* %1 to i8*
  %9 = mul nsw i32 %5, %6
  %10 = mul i32 %9, 4
  call void @llvm.memset.p0i8.i32(i8* %8, i8 0, i32 %10, i32 4, i1 false)
  br label %11

; <label>:11:                                     ; preds = %387, %7
  %.0721 = phi i32 [ 7, %7 ], [ %388, %387 ]
  %12 = sub nsw i32 %6, 7
  %13 = icmp slt i32 %.0721, %12
  br i1 %13, label %14, label %389

; <label>:14:                                     ; preds = %11
  br label %15

; <label>:15:                                     ; preds = %384, %14
  %.0719 = phi i32 [ 7, %14 ], [ %385, %384 ]
  %16 = sub nsw i32 %5, 7
  %17 = icmp slt i32 %.0719, %16
  br i1 %17, label %18, label %386

; <label>:18:                                     ; preds = %15
  %19 = sub nsw i32 %.0721, 3
  %20 = mul nsw i32 %19, %5
  %21 = getelementptr inbounds i8, i8* %0, i32 %20
  %22 = getelementptr inbounds i8, i8* %21, i32 %.0719
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  %24 = mul nsw i32 %.0721, %5
  %25 = add nsw i32 %24, %.0719
  %26 = getelementptr inbounds i8, i8* %0, i32 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i32 %28
  %30 = getelementptr inbounds i8, i8* %23, i32 1
  %31 = load i8, i8* %23, align 1
  %32 = zext i8 %31 to i32
  %33 = sub i32 0, %32
  %34 = getelementptr inbounds i8, i8* %29, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 100, %36
  %38 = getelementptr inbounds i8, i8* %30, i32 1
  %39 = load i8, i8* %30, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 0, %40
  %42 = getelementptr inbounds i8, i8* %29, i32 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %37, %44
  %46 = load i8, i8* %38, align 1
  %47 = zext i8 %46 to i32
  %48 = sub i32 0, %47
  %49 = getelementptr inbounds i8, i8* %29, i32 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %45, %51
  %53 = sub nsw i32 %5, 3
  %54 = getelementptr inbounds i8, i8* %38, i32 %53
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = sub i32 0, %57
  %59 = getelementptr inbounds i8, i8* %29, i32 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %52, %61
  %63 = getelementptr inbounds i8, i8* %55, i32 1
  %64 = load i8, i8* %55, align 1
  %65 = zext i8 %64 to i32
  %66 = sub i32 0, %65
  %67 = getelementptr inbounds i8, i8* %29, i32 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %62, %69
  %71 = getelementptr inbounds i8, i8* %63, i32 1
  %72 = load i8, i8* %63, align 1
  %73 = zext i8 %72 to i32
  %74 = sub i32 0, %73
  %75 = getelementptr inbounds i8, i8* %29, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = getelementptr inbounds i8, i8* %71, i32 1
  %80 = load i8, i8* %71, align 1
  %81 = zext i8 %80 to i32
  %82 = sub i32 0, %81
  %83 = getelementptr inbounds i8, i8* %29, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = load i8, i8* %79, align 1
  %88 = zext i8 %87 to i32
  %89 = sub i32 0, %88
  %90 = getelementptr inbounds i8, i8* %29, i32 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %86, %92
  %94 = sub nsw i32 %5, 5
  %95 = getelementptr inbounds i8, i8* %79, i32 %94
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = sub i32 0, %98
  %100 = getelementptr inbounds i8, i8* %29, i32 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %93, %102
  %104 = getelementptr inbounds i8, i8* %96, i32 1
  %105 = load i8, i8* %96, align 1
  %106 = zext i8 %105 to i32
  %107 = sub i32 0, %106
  %108 = getelementptr inbounds i8, i8* %29, i32 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %103, %110
  %112 = getelementptr inbounds i8, i8* %104, i32 1
  %113 = load i8, i8* %104, align 1
  %114 = zext i8 %113 to i32
  %115 = sub i32 0, %114
  %116 = getelementptr inbounds i8, i8* %29, i32 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %111, %118
  %120 = getelementptr inbounds i8, i8* %112, i32 1
  %121 = load i8, i8* %112, align 1
  %122 = zext i8 %121 to i32
  %123 = sub i32 0, %122
  %124 = getelementptr inbounds i8, i8* %29, i32 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %119, %126
  %128 = getelementptr inbounds i8, i8* %120, i32 1
  %129 = load i8, i8* %120, align 1
  %130 = zext i8 %129 to i32
  %131 = sub i32 0, %130
  %132 = getelementptr inbounds i8, i8* %29, i32 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %127, %134
  %136 = getelementptr inbounds i8, i8* %128, i32 1
  %137 = load i8, i8* %128, align 1
  %138 = zext i8 %137 to i32
  %139 = sub i32 0, %138
  %140 = getelementptr inbounds i8, i8* %29, i32 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %135, %142
  %144 = load i8, i8* %136, align 1
  %145 = zext i8 %144 to i32
  %146 = sub i32 0, %145
  %147 = getelementptr inbounds i8, i8* %29, i32 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %143, %149
  %151 = sub nsw i32 %5, 6
  %152 = getelementptr inbounds i8, i8* %136, i32 %151
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  %154 = load i8, i8* %152, align 1
  %155 = zext i8 %154 to i32
  %156 = sub i32 0, %155
  %157 = getelementptr inbounds i8, i8* %29, i32 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %150, %159
  %161 = getelementptr inbounds i8, i8* %153, i32 1
  %162 = load i8, i8* %153, align 1
  %163 = zext i8 %162 to i32
  %164 = sub i32 0, %163
  %165 = getelementptr inbounds i8, i8* %29, i32 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = add nsw i32 %160, %167
  %169 = load i8, i8* %161, align 1
  %170 = zext i8 %169 to i32
  %171 = sub i32 0, %170
  %172 = getelementptr inbounds i8, i8* %29, i32 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %168, %174
  %176 = icmp slt i32 %175, %3
  br i1 %176, label %177, label %383

; <label>:177:                                    ; preds = %18
  %178 = getelementptr inbounds i8, i8* %161, i32 2
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  %180 = load i8, i8* %178, align 1
  %181 = zext i8 %180 to i32
  %182 = sub i32 0, %181
  %183 = getelementptr inbounds i8, i8* %29, i32 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %175, %185
  %187 = icmp slt i32 %186, %3
  br i1 %187, label %188, label %382

; <label>:188:                                    ; preds = %177
  %189 = getelementptr inbounds i8, i8* %179, i32 1
  %190 = load i8, i8* %179, align 1
  %191 = zext i8 %190 to i32
  %192 = sub i32 0, %191
  %193 = getelementptr inbounds i8, i8* %29, i32 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %186, %195
  %197 = icmp slt i32 %196, %3
  br i1 %197, label %198, label %381

; <label>:198:                                    ; preds = %188
  %199 = load i8, i8* %189, align 1
  %200 = zext i8 %199 to i32
  %201 = sub i32 0, %200
  %202 = getelementptr inbounds i8, i8* %29, i32 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %196, %204
  %206 = icmp slt i32 %205, %3
  br i1 %206, label %207, label %380

; <label>:207:                                    ; preds = %198
  %208 = sub nsw i32 %5, 6
  %209 = getelementptr inbounds i8, i8* %189, i32 %208
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  %211 = load i8, i8* %209, align 1
  %212 = zext i8 %211 to i32
  %213 = sub i32 0, %212
  %214 = getelementptr inbounds i8, i8* %29, i32 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 %205, %216
  %218 = icmp slt i32 %217, %3
  br i1 %218, label %219, label %379

; <label>:219:                                    ; preds = %207
  %220 = getelementptr inbounds i8, i8* %210, i32 1
  %221 = load i8, i8* %210, align 1
  %222 = zext i8 %221 to i32
  %223 = sub i32 0, %222
  %224 = getelementptr inbounds i8, i8* %29, i32 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %217, %226
  %228 = icmp slt i32 %227, %3
  br i1 %228, label %229, label %378

; <label>:229:                                    ; preds = %219
  %230 = getelementptr inbounds i8, i8* %220, i32 1
  %231 = load i8, i8* %220, align 1
  %232 = zext i8 %231 to i32
  %233 = sub i32 0, %232
  %234 = getelementptr inbounds i8, i8* %29, i32 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = add nsw i32 %227, %236
  %238 = icmp slt i32 %237, %3
  br i1 %238, label %239, label %377

; <label>:239:                                    ; preds = %229
  %240 = getelementptr inbounds i8, i8* %230, i32 1
  %241 = load i8, i8* %230, align 1
  %242 = zext i8 %241 to i32
  %243 = sub i32 0, %242
  %244 = getelementptr inbounds i8, i8* %29, i32 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = add nsw i32 %237, %246
  %248 = icmp slt i32 %247, %3
  br i1 %248, label %249, label %376

; <label>:249:                                    ; preds = %239
  %250 = getelementptr inbounds i8, i8* %240, i32 1
  %251 = load i8, i8* %240, align 1
  %252 = zext i8 %251 to i32
  %253 = sub i32 0, %252
  %254 = getelementptr inbounds i8, i8* %29, i32 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %247, %256
  %258 = icmp slt i32 %257, %3
  br i1 %258, label %259, label %375

; <label>:259:                                    ; preds = %249
  %260 = getelementptr inbounds i8, i8* %250, i32 1
  %261 = load i8, i8* %250, align 1
  %262 = zext i8 %261 to i32
  %263 = sub i32 0, %262
  %264 = getelementptr inbounds i8, i8* %29, i32 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = add nsw i32 %257, %266
  %268 = icmp slt i32 %267, %3
  br i1 %268, label %269, label %374

; <label>:269:                                    ; preds = %259
  %270 = load i8, i8* %260, align 1
  %271 = zext i8 %270 to i32
  %272 = sub i32 0, %271
  %273 = getelementptr inbounds i8, i8* %29, i32 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = add nsw i32 %267, %275
  %277 = icmp slt i32 %276, %3
  br i1 %277, label %278, label %373

; <label>:278:                                    ; preds = %269
  %279 = sub nsw i32 %5, 5
  %280 = getelementptr inbounds i8, i8* %260, i32 %279
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  %282 = load i8, i8* %280, align 1
  %283 = zext i8 %282 to i32
  %284 = sub i32 0, %283
  %285 = getelementptr inbounds i8, i8* %29, i32 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = add nsw i32 %276, %287
  %289 = icmp slt i32 %288, %3
  br i1 %289, label %290, label %372

; <label>:290:                                    ; preds = %278
  %291 = getelementptr inbounds i8, i8* %281, i32 1
  %292 = load i8, i8* %281, align 1
  %293 = zext i8 %292 to i32
  %294 = sub i32 0, %293
  %295 = getelementptr inbounds i8, i8* %29, i32 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = add nsw i32 %288, %297
  %299 = icmp slt i32 %298, %3
  br i1 %299, label %300, label %371

; <label>:300:                                    ; preds = %290
  %301 = getelementptr inbounds i8, i8* %291, i32 1
  %302 = load i8, i8* %291, align 1
  %303 = zext i8 %302 to i32
  %304 = sub i32 0, %303
  %305 = getelementptr inbounds i8, i8* %29, i32 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = add nsw i32 %298, %307
  %309 = icmp slt i32 %308, %3
  br i1 %309, label %310, label %370

; <label>:310:                                    ; preds = %300
  %311 = getelementptr inbounds i8, i8* %301, i32 1
  %312 = load i8, i8* %301, align 1
  %313 = zext i8 %312 to i32
  %314 = sub i32 0, %313
  %315 = getelementptr inbounds i8, i8* %29, i32 %314
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = add nsw i32 %308, %317
  %319 = icmp slt i32 %318, %3
  br i1 %319, label %320, label %369

; <label>:320:                                    ; preds = %310
  %321 = load i8, i8* %311, align 1
  %322 = zext i8 %321 to i32
  %323 = sub i32 0, %322
  %324 = getelementptr inbounds i8, i8* %29, i32 %323
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = add nsw i32 %318, %326
  %328 = icmp slt i32 %327, %3
  br i1 %328, label %329, label %368

; <label>:329:                                    ; preds = %320
  %330 = sub nsw i32 %5, 3
  %331 = getelementptr inbounds i8, i8* %311, i32 %330
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  %333 = load i8, i8* %331, align 1
  %334 = zext i8 %333 to i32
  %335 = sub i32 0, %334
  %336 = getelementptr inbounds i8, i8* %29, i32 %335
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = add nsw i32 %327, %338
  %340 = icmp slt i32 %339, %3
  br i1 %340, label %341, label %367

; <label>:341:                                    ; preds = %329
  %342 = getelementptr inbounds i8, i8* %332, i32 1
  %343 = load i8, i8* %332, align 1
  %344 = zext i8 %343 to i32
  %345 = sub i32 0, %344
  %346 = getelementptr inbounds i8, i8* %29, i32 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = add nsw i32 %339, %348
  %350 = icmp slt i32 %349, %3
  br i1 %350, label %351, label %366

; <label>:351:                                    ; preds = %341
  %352 = load i8, i8* %342, align 1
  %353 = zext i8 %352 to i32
  %354 = sub i32 0, %353
  %355 = getelementptr inbounds i8, i8* %29, i32 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = add nsw i32 %349, %357
  %359 = icmp slt i32 %358, %3
  br i1 %359, label %360, label %365

; <label>:360:                                    ; preds = %351
  %361 = sub nsw i32 %3, %358
  %362 = mul nsw i32 %.0721, %5
  %363 = add nsw i32 %362, %.0719
  %364 = getelementptr inbounds i32, i32* %1, i32 %363
  store i32 %361, i32* %364, align 4
  br label %365

; <label>:365:                                    ; preds = %360, %351
  br label %366

; <label>:366:                                    ; preds = %365, %341
  br label %367

; <label>:367:                                    ; preds = %366, %329
  br label %368

; <label>:368:                                    ; preds = %367, %320
  br label %369

; <label>:369:                                    ; preds = %368, %310
  br label %370

; <label>:370:                                    ; preds = %369, %300
  br label %371

; <label>:371:                                    ; preds = %370, %290
  br label %372

; <label>:372:                                    ; preds = %371, %278
  br label %373

; <label>:373:                                    ; preds = %372, %269
  br label %374

; <label>:374:                                    ; preds = %373, %259
  br label %375

; <label>:375:                                    ; preds = %374, %249
  br label %376

; <label>:376:                                    ; preds = %375, %239
  br label %377

; <label>:377:                                    ; preds = %376, %229
  br label %378

; <label>:378:                                    ; preds = %377, %219
  br label %379

; <label>:379:                                    ; preds = %378, %207
  br label %380

; <label>:380:                                    ; preds = %379, %198
  br label %381

; <label>:381:                                    ; preds = %380, %188
  br label %382

; <label>:382:                                    ; preds = %381, %177
  br label %383

; <label>:383:                                    ; preds = %382, %18
  br label %384

; <label>:384:                                    ; preds = %383
  %385 = add nsw i32 %.0719, 1
  br label %15

; <label>:386:                                    ; preds = %15
  br label %387

; <label>:387:                                    ; preds = %386
  %388 = add nsw i32 %.0721, 1
  br label %11

; <label>:389:                                    ; preds = %11
  br label %390

; <label>:390:                                    ; preds = %1303, %389
  %.1722 = phi i32 [ 7, %389 ], [ %1304, %1303 ]
  %.0 = phi i32 [ 0, %389 ], [ %.1, %1303 ]
  %391 = sub nsw i32 %6, 7
  %392 = icmp slt i32 %.1722, %391
  br i1 %392, label %393, label %1305

; <label>:393:                                    ; preds = %390
  br label %394

; <label>:394:                                    ; preds = %1300, %393
  %.1720 = phi i32 [ 7, %393 ], [ %1301, %1300 ]
  %.1 = phi i32 [ %.0, %393 ], [ %.3, %1300 ]
  %395 = sub nsw i32 %5, 7
  %396 = icmp slt i32 %.1720, %395
  br i1 %396, label %397, label %1302

; <label>:397:                                    ; preds = %394
  %398 = mul nsw i32 %.1722, %5
  %399 = add nsw i32 %398, %.1720
  %400 = getelementptr inbounds i32, i32* %1, i32 %399
  %401 = load i32, i32* %400, align 4
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %1299

; <label>:403:                                    ; preds = %397
  %404 = sub nsw i32 %.1722, 3
  %405 = mul nsw i32 %404, %5
  %406 = add nsw i32 %405, %.1720
  %407 = sub nsw i32 %406, 3
  %408 = getelementptr inbounds i32, i32* %1, i32 %407
  %409 = load i32, i32* %408, align 4
  %410 = icmp sgt i32 %401, %409
  br i1 %410, label %411, label %1298

; <label>:411:                                    ; preds = %403
  %412 = sub nsw i32 %.1722, 3
  %413 = mul nsw i32 %412, %5
  %414 = add nsw i32 %413, %.1720
  %415 = sub nsw i32 %414, 2
  %416 = getelementptr inbounds i32, i32* %1, i32 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp sgt i32 %401, %417
  br i1 %418, label %419, label %1298

; <label>:419:                                    ; preds = %411
  %420 = sub nsw i32 %.1722, 3
  %421 = mul nsw i32 %420, %5
  %422 = add nsw i32 %421, %.1720
  %423 = sub nsw i32 %422, 1
  %424 = getelementptr inbounds i32, i32* %1, i32 %423
  %425 = load i32, i32* %424, align 4
  %426 = icmp sgt i32 %401, %425
  br i1 %426, label %427, label %1298

; <label>:427:                                    ; preds = %419
  %428 = sub nsw i32 %.1722, 3
  %429 = mul nsw i32 %428, %5
  %430 = add nsw i32 %429, %.1720
  %431 = getelementptr inbounds i32, i32* %1, i32 %430
  %432 = load i32, i32* %431, align 4
  %433 = icmp sgt i32 %401, %432
  br i1 %433, label %434, label %1298

; <label>:434:                                    ; preds = %427
  %435 = sub nsw i32 %.1722, 3
  %436 = mul nsw i32 %435, %5
  %437 = add nsw i32 %436, %.1720
  %438 = add nsw i32 %437, 1
  %439 = getelementptr inbounds i32, i32* %1, i32 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp sgt i32 %401, %440
  br i1 %441, label %442, label %1298

; <label>:442:                                    ; preds = %434
  %443 = sub nsw i32 %.1722, 3
  %444 = mul nsw i32 %443, %5
  %445 = add nsw i32 %444, %.1720
  %446 = add nsw i32 %445, 2
  %447 = getelementptr inbounds i32, i32* %1, i32 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp sgt i32 %401, %448
  br i1 %449, label %450, label %1298

; <label>:450:                                    ; preds = %442
  %451 = sub nsw i32 %.1722, 3
  %452 = mul nsw i32 %451, %5
  %453 = add nsw i32 %452, %.1720
  %454 = add nsw i32 %453, 3
  %455 = getelementptr inbounds i32, i32* %1, i32 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp sgt i32 %401, %456
  br i1 %457, label %458, label %1298

; <label>:458:                                    ; preds = %450
  %459 = sub nsw i32 %.1722, 2
  %460 = mul nsw i32 %459, %5
  %461 = add nsw i32 %460, %.1720
  %462 = sub nsw i32 %461, 3
  %463 = getelementptr inbounds i32, i32* %1, i32 %462
  %464 = load i32, i32* %463, align 4
  %465 = icmp sgt i32 %401, %464
  br i1 %465, label %466, label %1298

; <label>:466:                                    ; preds = %458
  %467 = sub nsw i32 %.1722, 2
  %468 = mul nsw i32 %467, %5
  %469 = add nsw i32 %468, %.1720
  %470 = sub nsw i32 %469, 2
  %471 = getelementptr inbounds i32, i32* %1, i32 %470
  %472 = load i32, i32* %471, align 4
  %473 = icmp sgt i32 %401, %472
  br i1 %473, label %474, label %1298

; <label>:474:                                    ; preds = %466
  %475 = sub nsw i32 %.1722, 2
  %476 = mul nsw i32 %475, %5
  %477 = add nsw i32 %476, %.1720
  %478 = sub nsw i32 %477, 1
  %479 = getelementptr inbounds i32, i32* %1, i32 %478
  %480 = load i32, i32* %479, align 4
  %481 = icmp sgt i32 %401, %480
  br i1 %481, label %482, label %1298

; <label>:482:                                    ; preds = %474
  %483 = sub nsw i32 %.1722, 2
  %484 = mul nsw i32 %483, %5
  %485 = add nsw i32 %484, %.1720
  %486 = getelementptr inbounds i32, i32* %1, i32 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp sgt i32 %401, %487
  br i1 %488, label %489, label %1298

; <label>:489:                                    ; preds = %482
  %490 = sub nsw i32 %.1722, 2
  %491 = mul nsw i32 %490, %5
  %492 = add nsw i32 %491, %.1720
  %493 = add nsw i32 %492, 1
  %494 = getelementptr inbounds i32, i32* %1, i32 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp sgt i32 %401, %495
  br i1 %496, label %497, label %1298

; <label>:497:                                    ; preds = %489
  %498 = sub nsw i32 %.1722, 2
  %499 = mul nsw i32 %498, %5
  %500 = add nsw i32 %499, %.1720
  %501 = add nsw i32 %500, 2
  %502 = getelementptr inbounds i32, i32* %1, i32 %501
  %503 = load i32, i32* %502, align 4
  %504 = icmp sgt i32 %401, %503
  br i1 %504, label %505, label %1298

; <label>:505:                                    ; preds = %497
  %506 = sub nsw i32 %.1722, 2
  %507 = mul nsw i32 %506, %5
  %508 = add nsw i32 %507, %.1720
  %509 = add nsw i32 %508, 3
  %510 = getelementptr inbounds i32, i32* %1, i32 %509
  %511 = load i32, i32* %510, align 4
  %512 = icmp sgt i32 %401, %511
  br i1 %512, label %513, label %1298

; <label>:513:                                    ; preds = %505
  %514 = sub nsw i32 %.1722, 1
  %515 = mul nsw i32 %514, %5
  %516 = add nsw i32 %515, %.1720
  %517 = sub nsw i32 %516, 3
  %518 = getelementptr inbounds i32, i32* %1, i32 %517
  %519 = load i32, i32* %518, align 4
  %520 = icmp sgt i32 %401, %519
  br i1 %520, label %521, label %1298

; <label>:521:                                    ; preds = %513
  %522 = sub nsw i32 %.1722, 1
  %523 = mul nsw i32 %522, %5
  %524 = add nsw i32 %523, %.1720
  %525 = sub nsw i32 %524, 2
  %526 = getelementptr inbounds i32, i32* %1, i32 %525
  %527 = load i32, i32* %526, align 4
  %528 = icmp sgt i32 %401, %527
  br i1 %528, label %529, label %1298

; <label>:529:                                    ; preds = %521
  %530 = sub nsw i32 %.1722, 1
  %531 = mul nsw i32 %530, %5
  %532 = add nsw i32 %531, %.1720
  %533 = sub nsw i32 %532, 1
  %534 = getelementptr inbounds i32, i32* %1, i32 %533
  %535 = load i32, i32* %534, align 4
  %536 = icmp sgt i32 %401, %535
  br i1 %536, label %537, label %1298

; <label>:537:                                    ; preds = %529
  %538 = sub nsw i32 %.1722, 1
  %539 = mul nsw i32 %538, %5
  %540 = add nsw i32 %539, %.1720
  %541 = getelementptr inbounds i32, i32* %1, i32 %540
  %542 = load i32, i32* %541, align 4
  %543 = icmp sgt i32 %401, %542
  br i1 %543, label %544, label %1298

; <label>:544:                                    ; preds = %537
  %545 = sub nsw i32 %.1722, 1
  %546 = mul nsw i32 %545, %5
  %547 = add nsw i32 %546, %.1720
  %548 = add nsw i32 %547, 1
  %549 = getelementptr inbounds i32, i32* %1, i32 %548
  %550 = load i32, i32* %549, align 4
  %551 = icmp sgt i32 %401, %550
  br i1 %551, label %552, label %1298

; <label>:552:                                    ; preds = %544
  %553 = sub nsw i32 %.1722, 1
  %554 = mul nsw i32 %553, %5
  %555 = add nsw i32 %554, %.1720
  %556 = add nsw i32 %555, 2
  %557 = getelementptr inbounds i32, i32* %1, i32 %556
  %558 = load i32, i32* %557, align 4
  %559 = icmp sgt i32 %401, %558
  br i1 %559, label %560, label %1298

; <label>:560:                                    ; preds = %552
  %561 = sub nsw i32 %.1722, 1
  %562 = mul nsw i32 %561, %5
  %563 = add nsw i32 %562, %.1720
  %564 = add nsw i32 %563, 3
  %565 = getelementptr inbounds i32, i32* %1, i32 %564
  %566 = load i32, i32* %565, align 4
  %567 = icmp sgt i32 %401, %566
  br i1 %567, label %568, label %1298

; <label>:568:                                    ; preds = %560
  %569 = mul nsw i32 %.1722, %5
  %570 = add nsw i32 %569, %.1720
  %571 = sub nsw i32 %570, 3
  %572 = getelementptr inbounds i32, i32* %1, i32 %571
  %573 = load i32, i32* %572, align 4
  %574 = icmp sgt i32 %401, %573
  br i1 %574, label %575, label %1298

; <label>:575:                                    ; preds = %568
  %576 = mul nsw i32 %.1722, %5
  %577 = add nsw i32 %576, %.1720
  %578 = sub nsw i32 %577, 2
  %579 = getelementptr inbounds i32, i32* %1, i32 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp sgt i32 %401, %580
  br i1 %581, label %582, label %1298

; <label>:582:                                    ; preds = %575
  %583 = mul nsw i32 %.1722, %5
  %584 = add nsw i32 %583, %.1720
  %585 = sub nsw i32 %584, 1
  %586 = getelementptr inbounds i32, i32* %1, i32 %585
  %587 = load i32, i32* %586, align 4
  %588 = icmp sgt i32 %401, %587
  br i1 %588, label %589, label %1298

; <label>:589:                                    ; preds = %582
  %590 = mul nsw i32 %.1722, %5
  %591 = add nsw i32 %590, %.1720
  %592 = add nsw i32 %591, 1
  %593 = getelementptr inbounds i32, i32* %1, i32 %592
  %594 = load i32, i32* %593, align 4
  %595 = icmp sge i32 %401, %594
  br i1 %595, label %596, label %1298

; <label>:596:                                    ; preds = %589
  %597 = mul nsw i32 %.1722, %5
  %598 = add nsw i32 %597, %.1720
  %599 = add nsw i32 %598, 2
  %600 = getelementptr inbounds i32, i32* %1, i32 %599
  %601 = load i32, i32* %600, align 4
  %602 = icmp sge i32 %401, %601
  br i1 %602, label %603, label %1298

; <label>:603:                                    ; preds = %596
  %604 = mul nsw i32 %.1722, %5
  %605 = add nsw i32 %604, %.1720
  %606 = add nsw i32 %605, 3
  %607 = getelementptr inbounds i32, i32* %1, i32 %606
  %608 = load i32, i32* %607, align 4
  %609 = icmp sge i32 %401, %608
  br i1 %609, label %610, label %1298

; <label>:610:                                    ; preds = %603
  %611 = add nsw i32 %.1722, 1
  %612 = mul nsw i32 %611, %5
  %613 = add nsw i32 %612, %.1720
  %614 = sub nsw i32 %613, 3
  %615 = getelementptr inbounds i32, i32* %1, i32 %614
  %616 = load i32, i32* %615, align 4
  %617 = icmp sge i32 %401, %616
  br i1 %617, label %618, label %1298

; <label>:618:                                    ; preds = %610
  %619 = add nsw i32 %.1722, 1
  %620 = mul nsw i32 %619, %5
  %621 = add nsw i32 %620, %.1720
  %622 = sub nsw i32 %621, 2
  %623 = getelementptr inbounds i32, i32* %1, i32 %622
  %624 = load i32, i32* %623, align 4
  %625 = icmp sge i32 %401, %624
  br i1 %625, label %626, label %1298

; <label>:626:                                    ; preds = %618
  %627 = add nsw i32 %.1722, 1
  %628 = mul nsw i32 %627, %5
  %629 = add nsw i32 %628, %.1720
  %630 = sub nsw i32 %629, 1
  %631 = getelementptr inbounds i32, i32* %1, i32 %630
  %632 = load i32, i32* %631, align 4
  %633 = icmp sge i32 %401, %632
  br i1 %633, label %634, label %1298

; <label>:634:                                    ; preds = %626
  %635 = add nsw i32 %.1722, 1
  %636 = mul nsw i32 %635, %5
  %637 = add nsw i32 %636, %.1720
  %638 = getelementptr inbounds i32, i32* %1, i32 %637
  %639 = load i32, i32* %638, align 4
  %640 = icmp sge i32 %401, %639
  br i1 %640, label %641, label %1298

; <label>:641:                                    ; preds = %634
  %642 = add nsw i32 %.1722, 1
  %643 = mul nsw i32 %642, %5
  %644 = add nsw i32 %643, %.1720
  %645 = add nsw i32 %644, 1
  %646 = getelementptr inbounds i32, i32* %1, i32 %645
  %647 = load i32, i32* %646, align 4
  %648 = icmp sge i32 %401, %647
  br i1 %648, label %649, label %1298

; <label>:649:                                    ; preds = %641
  %650 = add nsw i32 %.1722, 1
  %651 = mul nsw i32 %650, %5
  %652 = add nsw i32 %651, %.1720
  %653 = add nsw i32 %652, 2
  %654 = getelementptr inbounds i32, i32* %1, i32 %653
  %655 = load i32, i32* %654, align 4
  %656 = icmp sge i32 %401, %655
  br i1 %656, label %657, label %1298

; <label>:657:                                    ; preds = %649
  %658 = add nsw i32 %.1722, 1
  %659 = mul nsw i32 %658, %5
  %660 = add nsw i32 %659, %.1720
  %661 = add nsw i32 %660, 3
  %662 = getelementptr inbounds i32, i32* %1, i32 %661
  %663 = load i32, i32* %662, align 4
  %664 = icmp sge i32 %401, %663
  br i1 %664, label %665, label %1298

; <label>:665:                                    ; preds = %657
  %666 = add nsw i32 %.1722, 2
  %667 = mul nsw i32 %666, %5
  %668 = add nsw i32 %667, %.1720
  %669 = sub nsw i32 %668, 3
  %670 = getelementptr inbounds i32, i32* %1, i32 %669
  %671 = load i32, i32* %670, align 4
  %672 = icmp sge i32 %401, %671
  br i1 %672, label %673, label %1298

; <label>:673:                                    ; preds = %665
  %674 = add nsw i32 %.1722, 2
  %675 = mul nsw i32 %674, %5
  %676 = add nsw i32 %675, %.1720
  %677 = sub nsw i32 %676, 2
  %678 = getelementptr inbounds i32, i32* %1, i32 %677
  %679 = load i32, i32* %678, align 4
  %680 = icmp sge i32 %401, %679
  br i1 %680, label %681, label %1298

; <label>:681:                                    ; preds = %673
  %682 = add nsw i32 %.1722, 2
  %683 = mul nsw i32 %682, %5
  %684 = add nsw i32 %683, %.1720
  %685 = sub nsw i32 %684, 1
  %686 = getelementptr inbounds i32, i32* %1, i32 %685
  %687 = load i32, i32* %686, align 4
  %688 = icmp sge i32 %401, %687
  br i1 %688, label %689, label %1298

; <label>:689:                                    ; preds = %681
  %690 = add nsw i32 %.1722, 2
  %691 = mul nsw i32 %690, %5
  %692 = add nsw i32 %691, %.1720
  %693 = getelementptr inbounds i32, i32* %1, i32 %692
  %694 = load i32, i32* %693, align 4
  %695 = icmp sge i32 %401, %694
  br i1 %695, label %696, label %1298

; <label>:696:                                    ; preds = %689
  %697 = add nsw i32 %.1722, 2
  %698 = mul nsw i32 %697, %5
  %699 = add nsw i32 %698, %.1720
  %700 = add nsw i32 %699, 1
  %701 = getelementptr inbounds i32, i32* %1, i32 %700
  %702 = load i32, i32* %701, align 4
  %703 = icmp sge i32 %401, %702
  br i1 %703, label %704, label %1298

; <label>:704:                                    ; preds = %696
  %705 = add nsw i32 %.1722, 2
  %706 = mul nsw i32 %705, %5
  %707 = add nsw i32 %706, %.1720
  %708 = add nsw i32 %707, 2
  %709 = getelementptr inbounds i32, i32* %1, i32 %708
  %710 = load i32, i32* %709, align 4
  %711 = icmp sge i32 %401, %710
  br i1 %711, label %712, label %1298

; <label>:712:                                    ; preds = %704
  %713 = add nsw i32 %.1722, 2
  %714 = mul nsw i32 %713, %5
  %715 = add nsw i32 %714, %.1720
  %716 = add nsw i32 %715, 3
  %717 = getelementptr inbounds i32, i32* %1, i32 %716
  %718 = load i32, i32* %717, align 4
  %719 = icmp sge i32 %401, %718
  br i1 %719, label %720, label %1298

; <label>:720:                                    ; preds = %712
  %721 = add nsw i32 %.1722, 3
  %722 = mul nsw i32 %721, %5
  %723 = add nsw i32 %722, %.1720
  %724 = sub nsw i32 %723, 3
  %725 = getelementptr inbounds i32, i32* %1, i32 %724
  %726 = load i32, i32* %725, align 4
  %727 = icmp sge i32 %401, %726
  br i1 %727, label %728, label %1298

; <label>:728:                                    ; preds = %720
  %729 = add nsw i32 %.1722, 3
  %730 = mul nsw i32 %729, %5
  %731 = add nsw i32 %730, %.1720
  %732 = sub nsw i32 %731, 2
  %733 = getelementptr inbounds i32, i32* %1, i32 %732
  %734 = load i32, i32* %733, align 4
  %735 = icmp sge i32 %401, %734
  br i1 %735, label %736, label %1298

; <label>:736:                                    ; preds = %728
  %737 = add nsw i32 %.1722, 3
  %738 = mul nsw i32 %737, %5
  %739 = add nsw i32 %738, %.1720
  %740 = sub nsw i32 %739, 1
  %741 = getelementptr inbounds i32, i32* %1, i32 %740
  %742 = load i32, i32* %741, align 4
  %743 = icmp sge i32 %401, %742
  br i1 %743, label %744, label %1298

; <label>:744:                                    ; preds = %736
  %745 = add nsw i32 %.1722, 3
  %746 = mul nsw i32 %745, %5
  %747 = add nsw i32 %746, %.1720
  %748 = getelementptr inbounds i32, i32* %1, i32 %747
  %749 = load i32, i32* %748, align 4
  %750 = icmp sge i32 %401, %749
  br i1 %750, label %751, label %1298

; <label>:751:                                    ; preds = %744
  %752 = add nsw i32 %.1722, 3
  %753 = mul nsw i32 %752, %5
  %754 = add nsw i32 %753, %.1720
  %755 = add nsw i32 %754, 1
  %756 = getelementptr inbounds i32, i32* %1, i32 %755
  %757 = load i32, i32* %756, align 4
  %758 = icmp sge i32 %401, %757
  br i1 %758, label %759, label %1298

; <label>:759:                                    ; preds = %751
  %760 = add nsw i32 %.1722, 3
  %761 = mul nsw i32 %760, %5
  %762 = add nsw i32 %761, %.1720
  %763 = add nsw i32 %762, 2
  %764 = getelementptr inbounds i32, i32* %1, i32 %763
  %765 = load i32, i32* %764, align 4
  %766 = icmp sge i32 %401, %765
  br i1 %766, label %767, label %1298

; <label>:767:                                    ; preds = %759
  %768 = add nsw i32 %.1722, 3
  %769 = mul nsw i32 %768, %5
  %770 = add nsw i32 %769, %.1720
  %771 = add nsw i32 %770, 3
  %772 = getelementptr inbounds i32, i32* %1, i32 %771
  %773 = load i32, i32* %772, align 4
  %774 = icmp sge i32 %401, %773
  br i1 %774, label %775, label %1298

; <label>:775:                                    ; preds = %767
  %776 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %777 = getelementptr inbounds %struct.anon, %struct.anon* %776, i32 0, i32 2
  store i32 0, i32* %777, align 4
  %778 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %779 = getelementptr inbounds %struct.anon, %struct.anon* %778, i32 0, i32 0
  store i32 %.1720, i32* %779, align 4
  %780 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %781 = getelementptr inbounds %struct.anon, %struct.anon* %780, i32 0, i32 1
  store i32 %.1722, i32* %781, align 4
  %782 = sub nsw i32 %.1722, 2
  %783 = mul nsw i32 %782, %5
  %784 = add nsw i32 %783, %.1720
  %785 = sub nsw i32 %784, 2
  %786 = getelementptr inbounds i8, i8* %0, i32 %785
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = sub nsw i32 %.1722, 2
  %790 = mul nsw i32 %789, %5
  %791 = add nsw i32 %790, %.1720
  %792 = sub nsw i32 %791, 1
  %793 = getelementptr inbounds i8, i8* %0, i32 %792
  %794 = load i8, i8* %793, align 1
  %795 = zext i8 %794 to i32
  %796 = add nsw i32 %788, %795
  %797 = sub nsw i32 %.1722, 2
  %798 = mul nsw i32 %797, %5
  %799 = add nsw i32 %798, %.1720
  %800 = getelementptr inbounds i8, i8* %0, i32 %799
  %801 = load i8, i8* %800, align 1
  %802 = zext i8 %801 to i32
  %803 = add nsw i32 %796, %802
  %804 = sub nsw i32 %.1722, 2
  %805 = mul nsw i32 %804, %5
  %806 = add nsw i32 %805, %.1720
  %807 = add nsw i32 %806, 1
  %808 = getelementptr inbounds i8, i8* %0, i32 %807
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  %811 = add nsw i32 %803, %810
  %812 = sub nsw i32 %.1722, 2
  %813 = mul nsw i32 %812, %5
  %814 = add nsw i32 %813, %.1720
  %815 = add nsw i32 %814, 2
  %816 = getelementptr inbounds i8, i8* %0, i32 %815
  %817 = load i8, i8* %816, align 1
  %818 = zext i8 %817 to i32
  %819 = add nsw i32 %811, %818
  %820 = sub nsw i32 %.1722, 1
  %821 = mul nsw i32 %820, %5
  %822 = add nsw i32 %821, %.1720
  %823 = sub nsw i32 %822, 2
  %824 = getelementptr inbounds i8, i8* %0, i32 %823
  %825 = load i8, i8* %824, align 1
  %826 = zext i8 %825 to i32
  %827 = add nsw i32 %819, %826
  %828 = sub nsw i32 %.1722, 1
  %829 = mul nsw i32 %828, %5
  %830 = add nsw i32 %829, %.1720
  %831 = sub nsw i32 %830, 1
  %832 = getelementptr inbounds i8, i8* %0, i32 %831
  %833 = load i8, i8* %832, align 1
  %834 = zext i8 %833 to i32
  %835 = add nsw i32 %827, %834
  %836 = sub nsw i32 %.1722, 1
  %837 = mul nsw i32 %836, %5
  %838 = add nsw i32 %837, %.1720
  %839 = getelementptr inbounds i8, i8* %0, i32 %838
  %840 = load i8, i8* %839, align 1
  %841 = zext i8 %840 to i32
  %842 = add nsw i32 %835, %841
  %843 = sub nsw i32 %.1722, 1
  %844 = mul nsw i32 %843, %5
  %845 = add nsw i32 %844, %.1720
  %846 = add nsw i32 %845, 1
  %847 = getelementptr inbounds i8, i8* %0, i32 %846
  %848 = load i8, i8* %847, align 1
  %849 = zext i8 %848 to i32
  %850 = add nsw i32 %842, %849
  %851 = sub nsw i32 %.1722, 1
  %852 = mul nsw i32 %851, %5
  %853 = add nsw i32 %852, %.1720
  %854 = add nsw i32 %853, 2
  %855 = getelementptr inbounds i8, i8* %0, i32 %854
  %856 = load i8, i8* %855, align 1
  %857 = zext i8 %856 to i32
  %858 = add nsw i32 %850, %857
  %859 = mul nsw i32 %.1722, %5
  %860 = add nsw i32 %859, %.1720
  %861 = sub nsw i32 %860, 2
  %862 = getelementptr inbounds i8, i8* %0, i32 %861
  %863 = load i8, i8* %862, align 1
  %864 = zext i8 %863 to i32
  %865 = add nsw i32 %858, %864
  %866 = mul nsw i32 %.1722, %5
  %867 = add nsw i32 %866, %.1720
  %868 = sub nsw i32 %867, 1
  %869 = getelementptr inbounds i8, i8* %0, i32 %868
  %870 = load i8, i8* %869, align 1
  %871 = zext i8 %870 to i32
  %872 = add nsw i32 %865, %871
  %873 = mul nsw i32 %.1722, %5
  %874 = add nsw i32 %873, %.1720
  %875 = getelementptr inbounds i8, i8* %0, i32 %874
  %876 = load i8, i8* %875, align 1
  %877 = zext i8 %876 to i32
  %878 = add nsw i32 %872, %877
  %879 = mul nsw i32 %.1722, %5
  %880 = add nsw i32 %879, %.1720
  %881 = add nsw i32 %880, 1
  %882 = getelementptr inbounds i8, i8* %0, i32 %881
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = add nsw i32 %878, %884
  %886 = mul nsw i32 %.1722, %5
  %887 = add nsw i32 %886, %.1720
  %888 = add nsw i32 %887, 2
  %889 = getelementptr inbounds i8, i8* %0, i32 %888
  %890 = load i8, i8* %889, align 1
  %891 = zext i8 %890 to i32
  %892 = add nsw i32 %885, %891
  %893 = add nsw i32 %.1722, 1
  %894 = mul nsw i32 %893, %5
  %895 = add nsw i32 %894, %.1720
  %896 = sub nsw i32 %895, 2
  %897 = getelementptr inbounds i8, i8* %0, i32 %896
  %898 = load i8, i8* %897, align 1
  %899 = zext i8 %898 to i32
  %900 = add nsw i32 %892, %899
  %901 = add nsw i32 %.1722, 1
  %902 = mul nsw i32 %901, %5
  %903 = add nsw i32 %902, %.1720
  %904 = sub nsw i32 %903, 1
  %905 = getelementptr inbounds i8, i8* %0, i32 %904
  %906 = load i8, i8* %905, align 1
  %907 = zext i8 %906 to i32
  %908 = add nsw i32 %900, %907
  %909 = add nsw i32 %.1722, 1
  %910 = mul nsw i32 %909, %5
  %911 = add nsw i32 %910, %.1720
  %912 = getelementptr inbounds i8, i8* %0, i32 %911
  %913 = load i8, i8* %912, align 1
  %914 = zext i8 %913 to i32
  %915 = add nsw i32 %908, %914
  %916 = add nsw i32 %.1722, 1
  %917 = mul nsw i32 %916, %5
  %918 = add nsw i32 %917, %.1720
  %919 = add nsw i32 %918, 1
  %920 = getelementptr inbounds i8, i8* %0, i32 %919
  %921 = load i8, i8* %920, align 1
  %922 = zext i8 %921 to i32
  %923 = add nsw i32 %915, %922
  %924 = add nsw i32 %.1722, 1
  %925 = mul nsw i32 %924, %5
  %926 = add nsw i32 %925, %.1720
  %927 = add nsw i32 %926, 2
  %928 = getelementptr inbounds i8, i8* %0, i32 %927
  %929 = load i8, i8* %928, align 1
  %930 = zext i8 %929 to i32
  %931 = add nsw i32 %923, %930
  %932 = add nsw i32 %.1722, 2
  %933 = mul nsw i32 %932, %5
  %934 = add nsw i32 %933, %.1720
  %935 = sub nsw i32 %934, 2
  %936 = getelementptr inbounds i8, i8* %0, i32 %935
  %937 = load i8, i8* %936, align 1
  %938 = zext i8 %937 to i32
  %939 = add nsw i32 %931, %938
  %940 = add nsw i32 %.1722, 2
  %941 = mul nsw i32 %940, %5
  %942 = add nsw i32 %941, %.1720
  %943 = sub nsw i32 %942, 1
  %944 = getelementptr inbounds i8, i8* %0, i32 %943
  %945 = load i8, i8* %944, align 1
  %946 = zext i8 %945 to i32
  %947 = add nsw i32 %939, %946
  %948 = add nsw i32 %.1722, 2
  %949 = mul nsw i32 %948, %5
  %950 = add nsw i32 %949, %.1720
  %951 = getelementptr inbounds i8, i8* %0, i32 %950
  %952 = load i8, i8* %951, align 1
  %953 = zext i8 %952 to i32
  %954 = add nsw i32 %947, %953
  %955 = add nsw i32 %.1722, 2
  %956 = mul nsw i32 %955, %5
  %957 = add nsw i32 %956, %.1720
  %958 = add nsw i32 %957, 1
  %959 = getelementptr inbounds i8, i8* %0, i32 %958
  %960 = load i8, i8* %959, align 1
  %961 = zext i8 %960 to i32
  %962 = add nsw i32 %954, %961
  %963 = add nsw i32 %.1722, 2
  %964 = mul nsw i32 %963, %5
  %965 = add nsw i32 %964, %.1720
  %966 = add nsw i32 %965, 2
  %967 = getelementptr inbounds i8, i8* %0, i32 %966
  %968 = load i8, i8* %967, align 1
  %969 = zext i8 %968 to i32
  %970 = add nsw i32 %962, %969
  %971 = sdiv i32 %970, 25
  %972 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %973 = getelementptr inbounds %struct.anon, %struct.anon* %972, i32 0, i32 5
  store i32 %971, i32* %973, align 4
  %974 = sub nsw i32 %.1722, 2
  %975 = mul nsw i32 %974, %5
  %976 = add nsw i32 %975, %.1720
  %977 = add nsw i32 %976, 2
  %978 = getelementptr inbounds i8, i8* %0, i32 %977
  %979 = load i8, i8* %978, align 1
  %980 = zext i8 %979 to i32
  %981 = sub nsw i32 %.1722, 1
  %982 = mul nsw i32 %981, %5
  %983 = add nsw i32 %982, %.1720
  %984 = add nsw i32 %983, 2
  %985 = getelementptr inbounds i8, i8* %0, i32 %984
  %986 = load i8, i8* %985, align 1
  %987 = zext i8 %986 to i32
  %988 = add nsw i32 %980, %987
  %989 = mul nsw i32 %.1722, %5
  %990 = add nsw i32 %989, %.1720
  %991 = add nsw i32 %990, 2
  %992 = getelementptr inbounds i8, i8* %0, i32 %991
  %993 = load i8, i8* %992, align 1
  %994 = zext i8 %993 to i32
  %995 = add nsw i32 %988, %994
  %996 = add nsw i32 %.1722, 1
  %997 = mul nsw i32 %996, %5
  %998 = add nsw i32 %997, %.1720
  %999 = add nsw i32 %998, 2
  %1000 = getelementptr inbounds i8, i8* %0, i32 %999
  %1001 = load i8, i8* %1000, align 1
  %1002 = zext i8 %1001 to i32
  %1003 = add nsw i32 %995, %1002
  %1004 = add nsw i32 %.1722, 2
  %1005 = mul nsw i32 %1004, %5
  %1006 = add nsw i32 %1005, %.1720
  %1007 = add nsw i32 %1006, 2
  %1008 = getelementptr inbounds i8, i8* %0, i32 %1007
  %1009 = load i8, i8* %1008, align 1
  %1010 = zext i8 %1009 to i32
  %1011 = add nsw i32 %1003, %1010
  %1012 = sub nsw i32 %.1722, 2
  %1013 = mul nsw i32 %1012, %5
  %1014 = add nsw i32 %1013, %.1720
  %1015 = sub nsw i32 %1014, 2
  %1016 = getelementptr inbounds i8, i8* %0, i32 %1015
  %1017 = load i8, i8* %1016, align 1
  %1018 = zext i8 %1017 to i32
  %1019 = sub nsw i32 %.1722, 1
  %1020 = mul nsw i32 %1019, %5
  %1021 = add nsw i32 %1020, %.1720
  %1022 = sub nsw i32 %1021, 2
  %1023 = getelementptr inbounds i8, i8* %0, i32 %1022
  %1024 = load i8, i8* %1023, align 1
  %1025 = zext i8 %1024 to i32
  %1026 = add nsw i32 %1018, %1025
  %1027 = mul nsw i32 %.1722, %5
  %1028 = add nsw i32 %1027, %.1720
  %1029 = sub nsw i32 %1028, 2
  %1030 = getelementptr inbounds i8, i8* %0, i32 %1029
  %1031 = load i8, i8* %1030, align 1
  %1032 = zext i8 %1031 to i32
  %1033 = add nsw i32 %1026, %1032
  %1034 = add nsw i32 %.1722, 1
  %1035 = mul nsw i32 %1034, %5
  %1036 = add nsw i32 %1035, %.1720
  %1037 = sub nsw i32 %1036, 2
  %1038 = getelementptr inbounds i8, i8* %0, i32 %1037
  %1039 = load i8, i8* %1038, align 1
  %1040 = zext i8 %1039 to i32
  %1041 = add nsw i32 %1033, %1040
  %1042 = add nsw i32 %.1722, 2
  %1043 = mul nsw i32 %1042, %5
  %1044 = add nsw i32 %1043, %.1720
  %1045 = sub nsw i32 %1044, 2
  %1046 = getelementptr inbounds i8, i8* %0, i32 %1045
  %1047 = load i8, i8* %1046, align 1
  %1048 = zext i8 %1047 to i32
  %1049 = add nsw i32 %1041, %1048
  %1050 = sub nsw i32 %1011, %1049
  %1051 = sub nsw i32 %.1722, 2
  %1052 = mul nsw i32 %1051, %5
  %1053 = add nsw i32 %1052, %.1720
  %1054 = add nsw i32 %1053, 1
  %1055 = getelementptr inbounds i8, i8* %0, i32 %1054
  %1056 = load i8, i8* %1055, align 1
  %1057 = zext i8 %1056 to i32
  %1058 = add nsw i32 %1050, %1057
  %1059 = sub nsw i32 %.1722, 1
  %1060 = mul nsw i32 %1059, %5
  %1061 = add nsw i32 %1060, %.1720
  %1062 = add nsw i32 %1061, 1
  %1063 = getelementptr inbounds i8, i8* %0, i32 %1062
  %1064 = load i8, i8* %1063, align 1
  %1065 = zext i8 %1064 to i32
  %1066 = add nsw i32 %1058, %1065
  %1067 = mul nsw i32 %.1722, %5
  %1068 = add nsw i32 %1067, %.1720
  %1069 = add nsw i32 %1068, 1
  %1070 = getelementptr inbounds i8, i8* %0, i32 %1069
  %1071 = load i8, i8* %1070, align 1
  %1072 = zext i8 %1071 to i32
  %1073 = add nsw i32 %1066, %1072
  %1074 = add nsw i32 %.1722, 1
  %1075 = mul nsw i32 %1074, %5
  %1076 = add nsw i32 %1075, %.1720
  %1077 = add nsw i32 %1076, 1
  %1078 = getelementptr inbounds i8, i8* %0, i32 %1077
  %1079 = load i8, i8* %1078, align 1
  %1080 = zext i8 %1079 to i32
  %1081 = add nsw i32 %1073, %1080
  %1082 = add nsw i32 %.1722, 2
  %1083 = mul nsw i32 %1082, %5
  %1084 = add nsw i32 %1083, %.1720
  %1085 = add nsw i32 %1084, 1
  %1086 = getelementptr inbounds i8, i8* %0, i32 %1085
  %1087 = load i8, i8* %1086, align 1
  %1088 = zext i8 %1087 to i32
  %1089 = add nsw i32 %1081, %1088
  %1090 = sub nsw i32 %.1722, 2
  %1091 = mul nsw i32 %1090, %5
  %1092 = add nsw i32 %1091, %.1720
  %1093 = sub nsw i32 %1092, 1
  %1094 = getelementptr inbounds i8, i8* %0, i32 %1093
  %1095 = load i8, i8* %1094, align 1
  %1096 = zext i8 %1095 to i32
  %1097 = sub nsw i32 %.1722, 1
  %1098 = mul nsw i32 %1097, %5
  %1099 = add nsw i32 %1098, %.1720
  %1100 = sub nsw i32 %1099, 1
  %1101 = getelementptr inbounds i8, i8* %0, i32 %1100
  %1102 = load i8, i8* %1101, align 1
  %1103 = zext i8 %1102 to i32
  %1104 = add nsw i32 %1096, %1103
  %1105 = mul nsw i32 %.1722, %5
  %1106 = add nsw i32 %1105, %.1720
  %1107 = sub nsw i32 %1106, 1
  %1108 = getelementptr inbounds i8, i8* %0, i32 %1107
  %1109 = load i8, i8* %1108, align 1
  %1110 = zext i8 %1109 to i32
  %1111 = add nsw i32 %1104, %1110
  %1112 = add nsw i32 %.1722, 1
  %1113 = mul nsw i32 %1112, %5
  %1114 = add nsw i32 %1113, %.1720
  %1115 = sub nsw i32 %1114, 1
  %1116 = getelementptr inbounds i8, i8* %0, i32 %1115
  %1117 = load i8, i8* %1116, align 1
  %1118 = zext i8 %1117 to i32
  %1119 = add nsw i32 %1111, %1118
  %1120 = add nsw i32 %.1722, 2
  %1121 = mul nsw i32 %1120, %5
  %1122 = add nsw i32 %1121, %.1720
  %1123 = sub nsw i32 %1122, 1
  %1124 = getelementptr inbounds i8, i8* %0, i32 %1123
  %1125 = load i8, i8* %1124, align 1
  %1126 = zext i8 %1125 to i32
  %1127 = add nsw i32 %1119, %1126
  %1128 = sub nsw i32 %1089, %1127
  %1129 = add nsw i32 %1050, %1128
  %1130 = add nsw i32 %.1722, 2
  %1131 = mul nsw i32 %1130, %5
  %1132 = add nsw i32 %1131, %.1720
  %1133 = sub nsw i32 %1132, 2
  %1134 = getelementptr inbounds i8, i8* %0, i32 %1133
  %1135 = load i8, i8* %1134, align 1
  %1136 = zext i8 %1135 to i32
  %1137 = add nsw i32 %.1722, 2
  %1138 = mul nsw i32 %1137, %5
  %1139 = add nsw i32 %1138, %.1720
  %1140 = sub nsw i32 %1139, 1
  %1141 = getelementptr inbounds i8, i8* %0, i32 %1140
  %1142 = load i8, i8* %1141, align 1
  %1143 = zext i8 %1142 to i32
  %1144 = add nsw i32 %1136, %1143
  %1145 = add nsw i32 %.1722, 2
  %1146 = mul nsw i32 %1145, %5
  %1147 = add nsw i32 %1146, %.1720
  %1148 = getelementptr inbounds i8, i8* %0, i32 %1147
  %1149 = load i8, i8* %1148, align 1
  %1150 = zext i8 %1149 to i32
  %1151 = add nsw i32 %1144, %1150
  %1152 = add nsw i32 %.1722, 2
  %1153 = mul nsw i32 %1152, %5
  %1154 = add nsw i32 %1153, %.1720
  %1155 = add nsw i32 %1154, 1
  %1156 = getelementptr inbounds i8, i8* %0, i32 %1155
  %1157 = load i8, i8* %1156, align 1
  %1158 = zext i8 %1157 to i32
  %1159 = add nsw i32 %1151, %1158
  %1160 = add nsw i32 %.1722, 2
  %1161 = mul nsw i32 %1160, %5
  %1162 = add nsw i32 %1161, %.1720
  %1163 = add nsw i32 %1162, 2
  %1164 = getelementptr inbounds i8, i8* %0, i32 %1163
  %1165 = load i8, i8* %1164, align 1
  %1166 = zext i8 %1165 to i32
  %1167 = add nsw i32 %1159, %1166
  %1168 = sub nsw i32 %.1722, 2
  %1169 = mul nsw i32 %1168, %5
  %1170 = add nsw i32 %1169, %.1720
  %1171 = sub nsw i32 %1170, 2
  %1172 = getelementptr inbounds i8, i8* %0, i32 %1171
  %1173 = load i8, i8* %1172, align 1
  %1174 = zext i8 %1173 to i32
  %1175 = sub nsw i32 %.1722, 2
  %1176 = mul nsw i32 %1175, %5
  %1177 = add nsw i32 %1176, %.1720
  %1178 = sub nsw i32 %1177, 1
  %1179 = getelementptr inbounds i8, i8* %0, i32 %1178
  %1180 = load i8, i8* %1179, align 1
  %1181 = zext i8 %1180 to i32
  %1182 = add nsw i32 %1174, %1181
  %1183 = sub nsw i32 %.1722, 2
  %1184 = mul nsw i32 %1183, %5
  %1185 = add nsw i32 %1184, %.1720
  %1186 = getelementptr inbounds i8, i8* %0, i32 %1185
  %1187 = load i8, i8* %1186, align 1
  %1188 = zext i8 %1187 to i32
  %1189 = add nsw i32 %1182, %1188
  %1190 = sub nsw i32 %.1722, 2
  %1191 = mul nsw i32 %1190, %5
  %1192 = add nsw i32 %1191, %.1720
  %1193 = add nsw i32 %1192, 1
  %1194 = getelementptr inbounds i8, i8* %0, i32 %1193
  %1195 = load i8, i8* %1194, align 1
  %1196 = zext i8 %1195 to i32
  %1197 = add nsw i32 %1189, %1196
  %1198 = sub nsw i32 %.1722, 2
  %1199 = mul nsw i32 %1198, %5
  %1200 = add nsw i32 %1199, %.1720
  %1201 = add nsw i32 %1200, 2
  %1202 = getelementptr inbounds i8, i8* %0, i32 %1201
  %1203 = load i8, i8* %1202, align 1
  %1204 = zext i8 %1203 to i32
  %1205 = add nsw i32 %1197, %1204
  %1206 = sub nsw i32 %1167, %1205
  %1207 = add nsw i32 %.1722, 1
  %1208 = mul nsw i32 %1207, %5
  %1209 = add nsw i32 %1208, %.1720
  %1210 = sub nsw i32 %1209, 2
  %1211 = getelementptr inbounds i8, i8* %0, i32 %1210
  %1212 = load i8, i8* %1211, align 1
  %1213 = zext i8 %1212 to i32
  %1214 = add nsw i32 %1206, %1213
  %1215 = add nsw i32 %.1722, 1
  %1216 = mul nsw i32 %1215, %5
  %1217 = add nsw i32 %1216, %.1720
  %1218 = sub nsw i32 %1217, 1
  %1219 = getelementptr inbounds i8, i8* %0, i32 %1218
  %1220 = load i8, i8* %1219, align 1
  %1221 = zext i8 %1220 to i32
  %1222 = add nsw i32 %1214, %1221
  %1223 = add nsw i32 %.1722, 1
  %1224 = mul nsw i32 %1223, %5
  %1225 = add nsw i32 %1224, %.1720
  %1226 = getelementptr inbounds i8, i8* %0, i32 %1225
  %1227 = load i8, i8* %1226, align 1
  %1228 = zext i8 %1227 to i32
  %1229 = add nsw i32 %1222, %1228
  %1230 = add nsw i32 %.1722, 1
  %1231 = mul nsw i32 %1230, %5
  %1232 = add nsw i32 %1231, %.1720
  %1233 = add nsw i32 %1232, 1
  %1234 = getelementptr inbounds i8, i8* %0, i32 %1233
  %1235 = load i8, i8* %1234, align 1
  %1236 = zext i8 %1235 to i32
  %1237 = add nsw i32 %1229, %1236
  %1238 = add nsw i32 %.1722, 1
  %1239 = mul nsw i32 %1238, %5
  %1240 = add nsw i32 %1239, %.1720
  %1241 = add nsw i32 %1240, 2
  %1242 = getelementptr inbounds i8, i8* %0, i32 %1241
  %1243 = load i8, i8* %1242, align 1
  %1244 = zext i8 %1243 to i32
  %1245 = add nsw i32 %1237, %1244
  %1246 = sub nsw i32 %.1722, 1
  %1247 = mul nsw i32 %1246, %5
  %1248 = add nsw i32 %1247, %.1720
  %1249 = sub nsw i32 %1248, 2
  %1250 = getelementptr inbounds i8, i8* %0, i32 %1249
  %1251 = load i8, i8* %1250, align 1
  %1252 = zext i8 %1251 to i32
  %1253 = sub nsw i32 %.1722, 1
  %1254 = mul nsw i32 %1253, %5
  %1255 = add nsw i32 %1254, %.1720
  %1256 = sub nsw i32 %1255, 1
  %1257 = getelementptr inbounds i8, i8* %0, i32 %1256
  %1258 = load i8, i8* %1257, align 1
  %1259 = zext i8 %1258 to i32
  %1260 = add nsw i32 %1252, %1259
  %1261 = sub nsw i32 %.1722, 1
  %1262 = mul nsw i32 %1261, %5
  %1263 = add nsw i32 %1262, %.1720
  %1264 = getelementptr inbounds i8, i8* %0, i32 %1263
  %1265 = load i8, i8* %1264, align 1
  %1266 = zext i8 %1265 to i32
  %1267 = add nsw i32 %1260, %1266
  %1268 = sub nsw i32 %.1722, 1
  %1269 = mul nsw i32 %1268, %5
  %1270 = add nsw i32 %1269, %.1720
  %1271 = add nsw i32 %1270, 1
  %1272 = getelementptr inbounds i8, i8* %0, i32 %1271
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i32
  %1275 = add nsw i32 %1267, %1274
  %1276 = sub nsw i32 %.1722, 1
  %1277 = mul nsw i32 %1276, %5
  %1278 = add nsw i32 %1277, %.1720
  %1279 = add nsw i32 %1278, 2
  %1280 = getelementptr inbounds i8, i8* %0, i32 %1279
  %1281 = load i8, i8* %1280, align 1
  %1282 = zext i8 %1281 to i32
  %1283 = add nsw i32 %1275, %1282
  %1284 = sub nsw i32 %1245, %1283
  %1285 = add nsw i32 %1206, %1284
  %1286 = sdiv i32 %1129, 15
  %1287 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1288 = getelementptr inbounds %struct.anon, %struct.anon* %1287, i32 0, i32 3
  store i32 %1286, i32* %1288, align 4
  %1289 = sdiv i32 %1285, 15
  %1290 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.1
  %1291 = getelementptr inbounds %struct.anon, %struct.anon* %1290, i32 0, i32 4
  store i32 %1289, i32* %1291, align 4
  %1292 = add nsw i32 %.1, 1
  %1293 = icmp eq i32 %1292, 15000
  br i1 %1293, label %1294, label %1297

; <label>:1294:                                   ; preds = %775
  %1295 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %1296 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #6
  unreachable

; <label>:1297:                                   ; preds = %775
  br label %1298

; <label>:1298:                                   ; preds = %1297, %767, %759, %751, %744, %736, %728, %720, %712, %704, %696, %689, %681, %673, %665, %657, %649, %641, %634, %626, %618, %610, %603, %596, %589, %582, %575, %568, %560, %552, %544, %537, %529, %521, %513, %505, %497, %489, %482, %474, %466, %458, %450, %442, %434, %427, %419, %411, %403
  %.2 = phi i32 [ %1292, %1297 ], [ %.1, %767 ], [ %.1, %759 ], [ %.1, %751 ], [ %.1, %744 ], [ %.1, %736 ], [ %.1, %728 ], [ %.1, %720 ], [ %.1, %712 ], [ %.1, %704 ], [ %.1, %696 ], [ %.1, %689 ], [ %.1, %681 ], [ %.1, %673 ], [ %.1, %665 ], [ %.1, %657 ], [ %.1, %649 ], [ %.1, %641 ], [ %.1, %634 ], [ %.1, %626 ], [ %.1, %618 ], [ %.1, %610 ], [ %.1, %603 ], [ %.1, %596 ], [ %.1, %589 ], [ %.1, %582 ], [ %.1, %575 ], [ %.1, %568 ], [ %.1, %560 ], [ %.1, %552 ], [ %.1, %544 ], [ %.1, %537 ], [ %.1, %529 ], [ %.1, %521 ], [ %.1, %513 ], [ %.1, %505 ], [ %.1, %497 ], [ %.1, %489 ], [ %.1, %482 ], [ %.1, %474 ], [ %.1, %466 ], [ %.1, %458 ], [ %.1, %450 ], [ %.1, %442 ], [ %.1, %434 ], [ %.1, %427 ], [ %.1, %419 ], [ %.1, %411 ], [ %.1, %403 ]
  br label %1299

; <label>:1299:                                   ; preds = %1298, %397
  %.3 = phi i32 [ %.2, %1298 ], [ %.1, %397 ]
  br label %1300

; <label>:1300:                                   ; preds = %1299
  %1301 = add nsw i32 %.1720, 1
  br label %394

; <label>:1302:                                   ; preds = %394
  br label %1303

; <label>:1303:                                   ; preds = %1302
  %1304 = add nsw i32 %.1722, 1
  br label %390

; <label>:1305:                                   ; preds = %390
  %1306 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 %.0
  %1307 = getelementptr inbounds %struct.anon, %struct.anon* %1306, i32 0, i32 2
  store i32 7, i32* %1307, align 4
  ret i32 undef
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [15000 x %struct.anon], align 4
  %8 = icmp slt i32 %0, 3
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = call arm_aapcscc i32 @usage()
  br label %11

; <label>:11:                                     ; preds = %9, %2
  %12 = getelementptr inbounds i8*, i8** %1, i32 1
  %13 = load i8*, i8** %12, align 4
  call arm_aapcscc void @get_image(i8* %13, i8** %3, i32* %5, i32* %6)
  br label %14

; <label>:14:                                     ; preds = %59, %11
  %.079 = phi i32 [ 3, %11 ], [ %60, %59 ]
  %.076 = phi i32 [ 20, %11 ], [ %.278, %59 ]
  %.073 = phi i32 [ 0, %11 ], [ %.275, %59 ]
  %.070 = phi i32 [ 1, %11 ], [ %.272, %59 ]
  %.066 = phi i32 [ 0, %11 ], [ %.369, %59 ]
  %.063 = phi i32 [ 0, %11 ], [ %.265, %59 ]
  %.060 = phi i32 [ 0, %11 ], [ %.262, %59 ]
  %.057 = phi float [ 4.000000e+00, %11 ], [ %.259, %59 ]
  %.0 = phi i32 [ 0, %11 ], [ %.2, %59 ]
  %15 = icmp slt i32 %.079, %0
  br i1 %15, label %16, label %61

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds i8*, i8** %1, i32 %.079
  %18 = load i8*, i8** %17, align 4
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %57

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %18, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %56 [
    i32 115, label %26
    i32 101, label %27
    i32 99, label %28
    i32 112, label %29
    i32 110, label %30
    i32 98, label %31
    i32 51, label %32
    i32 113, label %33
    i32 100, label %34
    i32 116, label %47
  ]

; <label>:26:                                     ; preds = %22
  br label %56

; <label>:27:                                     ; preds = %22
  br label %56

; <label>:28:                                     ; preds = %22
  br label %56

; <label>:29:                                     ; preds = %22
  br label %56

; <label>:30:                                     ; preds = %22
  br label %56

; <label>:31:                                     ; preds = %22
  br label %56

; <label>:32:                                     ; preds = %22
  br label %56

; <label>:33:                                     ; preds = %22
  br label %56

; <label>:34:                                     ; preds = %22
  %35 = add nsw i32 %.079, 1
  %36 = icmp sge i32 %35, %0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i8*, i8** %1, i32 %35
  %41 = load i8*, i8** %40, align 4
  %42 = call arm_aapcscc double @atof(i8* %41)
  %43 = fptrunc double %42 to float
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %39
  br label %46

; <label>:46:                                     ; preds = %45, %39
  %.167 = phi i32 [ 1, %45 ], [ %.066, %39 ]
  br label %56

; <label>:47:                                     ; preds = %22
  %48 = add nsw i32 %.079, 1
  %49 = icmp sge i32 %48, %0
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %47
  %51 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 0) #6
  unreachable

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds i8*, i8** %1, i32 %48
  %54 = load i8*, i8** %53, align 4
  %55 = call arm_aapcscc i32 @atoi(i8* %54)
  br label %56

; <label>:56:                                     ; preds = %52, %46, %33, %32, %31, %30, %29, %28, %27, %26, %22
  %.180 = phi i32 [ %.079, %22 ], [ %48, %52 ], [ %35, %46 ], [ %.079, %33 ], [ %.079, %32 ], [ %.079, %31 ], [ %.079, %30 ], [ %.079, %29 ], [ %.079, %28 ], [ %.079, %27 ], [ %.079, %26 ]
  %.177 = phi i32 [ %.076, %22 ], [ %55, %52 ], [ %.076, %46 ], [ %.076, %33 ], [ %.076, %32 ], [ %.076, %31 ], [ %.076, %30 ], [ %.076, %29 ], [ %.076, %28 ], [ %.076, %27 ], [ %.076, %26 ]
  %.174 = phi i32 [ %.073, %22 ], [ %.073, %52 ], [ %.073, %46 ], [ %.073, %33 ], [ %.073, %32 ], [ %.073, %31 ], [ %.073, %30 ], [ 1, %29 ], [ %.073, %28 ], [ %.073, %27 ], [ %.073, %26 ]
  %.171 = phi i32 [ %.070, %22 ], [ %.070, %52 ], [ %.070, %46 ], [ %.070, %33 ], [ %.070, %32 ], [ %.070, %31 ], [ 0, %30 ], [ %.070, %29 ], [ %.070, %28 ], [ %.070, %27 ], [ %.070, %26 ]
  %.268 = phi i32 [ %.066, %22 ], [ %.066, %52 ], [ %.167, %46 ], [ %.066, %33 ], [ 1, %32 ], [ %.066, %31 ], [ %.066, %30 ], [ %.066, %29 ], [ %.066, %28 ], [ %.066, %27 ], [ %.066, %26 ]
  %.164 = phi i32 [ %.063, %22 ], [ %.063, %52 ], [ %.063, %46 ], [ %.063, %33 ], [ %.063, %32 ], [ 1, %31 ], [ %.063, %30 ], [ %.063, %29 ], [ %.063, %28 ], [ %.063, %27 ], [ %.063, %26 ]
  %.161 = phi i32 [ %.060, %22 ], [ %.060, %52 ], [ %.060, %46 ], [ 1, %33 ], [ %.060, %32 ], [ %.060, %31 ], [ %.060, %30 ], [ %.060, %29 ], [ %.060, %28 ], [ %.060, %27 ], [ %.060, %26 ]
  %.158 = phi float [ %.057, %22 ], [ %.057, %52 ], [ %43, %46 ], [ %.057, %33 ], [ %.057, %32 ], [ %.057, %31 ], [ %.057, %30 ], [ %.057, %29 ], [ %.057, %28 ], [ %.057, %27 ], [ %.057, %26 ]
  %.1 = phi i32 [ %.0, %22 ], [ %.0, %52 ], [ %.0, %46 ], [ %.0, %33 ], [ %.0, %32 ], [ %.0, %31 ], [ %.0, %30 ], [ %.0, %29 ], [ 2, %28 ], [ 1, %27 ], [ 0, %26 ]
  br label %59

; <label>:57:                                     ; preds = %16
  %58 = call arm_aapcscc i32 @usage()
  br label %59

; <label>:59:                                     ; preds = %57, %56
  %.281 = phi i32 [ %.180, %56 ], [ %.079, %57 ]
  %.278 = phi i32 [ %.177, %56 ], [ %.076, %57 ]
  %.275 = phi i32 [ %.174, %56 ], [ %.073, %57 ]
  %.272 = phi i32 [ %.171, %56 ], [ %.070, %57 ]
  %.369 = phi i32 [ %.268, %56 ], [ %.066, %57 ]
  %.265 = phi i32 [ %.164, %56 ], [ %.063, %57 ]
  %.262 = phi i32 [ %.161, %56 ], [ %.060, %57 ]
  %.259 = phi float [ %.158, %56 ], [ %.057, %57 ]
  %.2 = phi i32 [ %.1, %56 ], [ %.0, %57 ]
  %60 = add nsw i32 %.281, 1
  br label %14

; <label>:61:                                     ; preds = %14
  %62 = icmp eq i32 %.073, 1
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %61
  %64 = icmp eq i32 %.0, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %63
  br label %66

; <label>:66:                                     ; preds = %65, %63, %61
  %.3 = phi i32 [ 1, %65 ], [ %.0, %63 ], [ %.0, %61 ]
  switch i32 %.3, label %175 [
    i32 0, label %67
    i32 1, label %73
    i32 2, label %134
  ]

; <label>:67:                                     ; preds = %66
  call arm_aapcscc void @setup_brightness_lut(i8** %4, i32 %.076, i32 2)
  %68 = load i8*, i8** %3, align 4
  %69 = fpext float %.057 to double
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %4, align 4
  call arm_aapcscc void @susan_smoothing(i32 %.066, i8* %68, double %69, i32 %70, i32 %71, i8* %72)
  br label %175

; <label>:73:                                     ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = mul i32 %76, 4
  %78 = call arm_aapcscc i8* @malloc(i32 %77)
  %79 = bitcast i8* %78 to i32*
  call arm_aapcscc void @setup_brightness_lut(i8** %4, i32 %.076, i32 6)
  %80 = icmp ne i32 %.073, 0
  br i1 %80, label %81, label %101

; <label>:81:                                     ; preds = %73
  %82 = icmp ne i32 %.066, 0
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %3, align 4
  %85 = load i8*, i8** %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call arm_aapcscc i32 @susan_principle_small(i8* %84, i32* %79, i8* %85, i32 2650, i32 %86, i32 %87)
  br label %95

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %3, align 4
  %91 = load i8*, i8** %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call arm_aapcscc i32 @susan_principle(i8* %90, i32* %79, i8* %91, i32 2650, i32 %92, i32 %93)
  br label %95

; <label>:95:                                     ; preds = %89, %83
  %96 = load i8*, i8** %3, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call arm_aapcscc i32 @int_to_uchar(i32* %79, i8* %96, i32 %99)
  br label %133

; <label>:101:                                    ; preds = %73
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %102, %103
  %105 = call arm_aapcscc i8* @malloc(i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %106, %107
  call void @llvm.memset.p0i8.i32(i8* %105, i8 100, i32 %108, i32 1, i1 false)
  %109 = icmp ne i32 %.066, 0
  br i1 %109, label %110, label %116

; <label>:110:                                    ; preds = %101
  %111 = load i8*, i8** %3, align 4
  %112 = load i8*, i8** %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call arm_aapcscc i32 @susan_edges_small(i8* %111, i32* %79, i8* %105, i8* %112, i32 2650, i32 %113, i32 %114)
  br label %122

; <label>:116:                                    ; preds = %101
  %117 = load i8*, i8** %3, align 4
  %118 = load i8*, i8** %4, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call arm_aapcscc i32 @susan_edges(i8* %117, i32* %79, i8* %105, i8* %118, i32 2650, i32 %119, i32 %120)
  br label %122

; <label>:122:                                    ; preds = %116, %110
  %123 = icmp ne i32 %.070, 0
  br i1 %123, label %124, label %128

; <label>:124:                                    ; preds = %122
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call arm_aapcscc i32 @susan_thin(i32* %79, i8* %105, i32 %125, i32 %126)
  br label %128

; <label>:128:                                    ; preds = %124, %122
  %129 = load i8*, i8** %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call arm_aapcscc i32 @edge_draw(i8* %129, i8* %105, i32 %130, i32 %131, i32 %.063)
  br label %133

; <label>:133:                                    ; preds = %128, %95
  br label %175

; <label>:134:                                    ; preds = %66
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = mul nsw i32 %135, %136
  %138 = mul i32 %137, 4
  %139 = call arm_aapcscc i8* @malloc(i32 %138)
  %140 = bitcast i8* %139 to i32*
  call arm_aapcscc void @setup_brightness_lut(i8** %4, i32 %.076, i32 6)
  %141 = icmp ne i32 %.073, 0
  br i1 %141, label %142, label %153

; <label>:142:                                    ; preds = %134
  %143 = load i8*, i8** %3, align 4
  %144 = load i8*, i8** %4, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call arm_aapcscc i32 @susan_principle(i8* %143, i32* %140, i8* %144, i32 1850, i32 %145, i32 %146)
  %148 = load i8*, i8** %3, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call arm_aapcscc i32 @int_to_uchar(i32* %140, i8* %148, i32 %151)
  br label %174

; <label>:153:                                    ; preds = %134
  %154 = icmp ne i32 %.060, 0
  br i1 %154, label %155, label %162

; <label>:155:                                    ; preds = %153
  %156 = load i8*, i8** %3, align 4
  %157 = load i8*, i8** %4, align 4
  %158 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %7, i32 0, i32 0
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call arm_aapcscc i32 @susan_corners_quick(i8* %156, i32* %140, i8* %157, i32 1850, %struct.anon* %158, i32 %159, i32 %160)
  br label %169

; <label>:162:                                    ; preds = %153
  %163 = load i8*, i8** %3, align 4
  %164 = load i8*, i8** %4, align 4
  %165 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %7, i32 0, i32 0
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call arm_aapcscc i32 @susan_corners(i8* %163, i32* %140, i8* %164, i32 1850, %struct.anon* %165, i32 %166, i32 %167)
  br label %169

; <label>:169:                                    ; preds = %162, %155
  %170 = load i8*, i8** %3, align 4
  %171 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %7, i32 0, i32 0
  %172 = load i32, i32* %5, align 4
  %173 = call arm_aapcscc i32 @corner_draw(i8* %170, %struct.anon* %171, i32 %172, i32 %.063)
  br label %174

; <label>:174:                                    ; preds = %169, %142
  br label %175

; <label>:175:                                    ; preds = %174, %133, %67, %66
  %176 = getelementptr inbounds i8*, i8** %1, i32 2
  %177 = load i8*, i8** %176, align 4
  %178 = load i8*, i8** %3, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call arm_aapcscc i32 @put_image(i8* %177, i8* %178, i32 %179, i32 %180)
  ret i32 0
}

declare arm_aapcscc double @atof(i8*) #1

declare arm_aapcscc i32 @atoi(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
