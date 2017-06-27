; ModuleID = 'portableio.c'
source_filename = "portableio.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

; Function Attrs: nounwind
define arm_aapcscc i32 @ReadByte(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %4)
  %6 = and i32 %5, 255
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 256
  store i32 %12, i32* %3, align 4
  br label %13

; <label>:13:                                     ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare arm_aapcscc i32 @getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @Read16BitsLowHigh(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %7 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %6)
  %8 = and i32 255, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %10 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %9)
  %11 = and i32 255, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 65536
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %1
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: nounwind
define arm_aapcscc i32 @Read16BitsHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %7 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %6)
  %8 = and i32 255, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %10 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %9)
  %11 = and i32 255, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 65536
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %1
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: nounwind
define arm_aapcscc void @Write8Bits(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %8 = call arm_aapcscc i32 @putc(i32 %6, %struct._IO_FILE* %7)
  ret void
}

declare arm_aapcscc i32 @putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @Write16BitsLowHigh(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %8 = call arm_aapcscc i32 @putc(i32 %6, %struct._IO_FILE* %7)
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %13 = call arm_aapcscc i32 @putc(i32 %11, %struct._IO_FILE* %12)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @Write16BitsHighLow(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 8
  %7 = and i32 %6, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = call arm_aapcscc i32 @putc(i32 %7, %struct._IO_FILE* %8)
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %13 = call arm_aapcscc i32 @putc(i32 %11, %struct._IO_FILE* %12)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @Read24BitsHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %8 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %7)
  %9 = and i32 255, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %11 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %10)
  %12 = and i32 255, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %14 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %13)
  %15 = and i32 255, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 8
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 8388608
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 16777216
  store i32 %28, i32* %6, align 4
  br label %29

; <label>:29:                                     ; preds = %26, %1
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

; Function Attrs: nounwind
define arm_aapcscc i32 @Read32Bits(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %7 = call arm_aapcscc i32 @Read16BitsLowHigh(%struct._IO_FILE* %6)
  %8 = and i32 65535, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %10 = call arm_aapcscc i32 @Read16BitsLowHigh(%struct._IO_FILE* %9)
  %11 = and i32 65535, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: nounwind
define arm_aapcscc i32 @Read32BitsHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %7 = call arm_aapcscc i32 @Read16BitsHighLow(%struct._IO_FILE* %6)
  %8 = and i32 65535, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %10 = call arm_aapcscc i32 @Read16BitsHighLow(%struct._IO_FILE* %9)
  %11 = and i32 65535, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: nounwind
define arm_aapcscc void @Write32Bits(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 65535
  call arm_aapcscc void @Write16BitsLowHigh(%struct._IO_FILE* %5, i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 65535
  call arm_aapcscc void @Write16BitsLowHigh(%struct._IO_FILE* %8, i32 %11)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @Write32BitsLowHigh(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 65535
  call arm_aapcscc void @Write16BitsLowHigh(%struct._IO_FILE* %5, i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 65535
  call arm_aapcscc void @Write16BitsLowHigh(%struct._IO_FILE* %8, i32 %11)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @Write32BitsHighLow(%struct._IO_FILE*, i32) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 16
  %8 = and i32 %7, 65535
  call arm_aapcscc void @Write16BitsHighLow(%struct._IO_FILE* %5, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 65535
  call arm_aapcscc void @Write16BitsHighLow(%struct._IO_FILE* %9, i32 %11)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @ReadBytes(%struct._IO_FILE*, i8*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %9 = call arm_aapcscc i32 @feof(%struct._IO_FILE* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %13, 0
  %16 = zext i1 %15 to i32
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %21 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %20)
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 4
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 4
  store i8 %22, i8* %23, align 1
  br label %7

; <label>:25:                                     ; preds = %7
  ret void
}

declare arm_aapcscc i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @ReadBytesSwapped(%struct._IO_FILE*, i8*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 4
  store i8* %8, i8** %7, align 4
  br label %9

; <label>:9:                                      ; preds = %21, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %11 = call arm_aapcscc i32 @feof(%struct._IO_FILE* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %15, 0
  %18 = zext i1 %17 to i32
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %23 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %22)
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 4
  store i8 %24, i8* %25, align 1
  br label %9

; <label>:27:                                     ; preds = %9
  %28 = load i8*, i8** %7, align 4
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %7, align 4
  br label %30

; <label>:30:                                     ; preds = %44, %27
  %31 = load i8*, i8** %5, align 4
  %32 = load i8*, i8** %7, align 4
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %5, align 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %7, align 4
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 4
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 4
  store i8 %42, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %5, align 4
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 4
  %47 = load i8*, i8** %7, align 4
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %7, align 4
  br label %30

; <label>:49:                                     ; preds = %30
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @WriteBytes(%struct._IO_FILE*, i8*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %5, align 4
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 4
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %17 = call arm_aapcscc i32 @putc(i32 %15, %struct._IO_FILE* %16)
  br label %7

; <label>:18:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @WriteBytesSwapped(%struct._IO_FILE*, i8*, i32) #0 {
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i8*, i8** %5, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 %8
  store i8* %10, i8** %5, align 4
  br label %11

; <label>:11:                                     ; preds = %15, %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %5, align 4
  %17 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %17, i8** %5, align 4
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %21 = call arm_aapcscc i32 @putc(i32 %19, %struct._IO_FILE* %20)
  br label %11

; <label>:22:                                     ; preds = %11
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeFloatHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytes(%struct._IO_FILE* %4, i8* %5, i32 4)
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeSingle(i8* %6)
  ret double %7
}

declare arm_aapcscc double @ConvertFromIeeeSingle(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeFloatLowHigh(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytesSwapped(%struct._IO_FILE* %4, i8* %5, i32 4)
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeSingle(i8* %6)
  ret double %7
}

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeDoubleHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytes(%struct._IO_FILE* %4, i8* %5, i32 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeDouble(i8* %6)
  ret double %7
}

declare arm_aapcscc double @ConvertFromIeeeDouble(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeDoubleLowHigh(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytesSwapped(%struct._IO_FILE* %4, i8* %5, i32 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeDouble(i8* %6)
  ret double %7
}

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeExtendedHighLow(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytes(%struct._IO_FILE* %4, i8* %5, i32 10)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeExtended(i8* %6)
  ret double %7
}

declare arm_aapcscc double @ConvertFromIeeeExtended(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc double @ReadIeeeExtendedLowHigh(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @ReadBytesSwapped(%struct._IO_FILE* %4, i8* %5, i32 10)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0
  %7 = call arm_aapcscc double @ConvertFromIeeeExtended(i8* %6)
  ret double %7
}

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeFloatLowHigh(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeSingle(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytesSwapped(%struct._IO_FILE* %8, i8* %9, i32 4)
  ret void
}

declare arm_aapcscc void @ConvertToIeeeSingle(double, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeFloatHighLow(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [4 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeSingle(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytes(%struct._IO_FILE* %8, i8* %9, i32 4)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeDoubleLowHigh(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeDouble(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytesSwapped(%struct._IO_FILE* %8, i8* %9, i32 8)
  ret void
}

declare arm_aapcscc void @ConvertToIeeeDouble(double, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeDoubleHighLow(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeDouble(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytes(%struct._IO_FILE* %8, i8* %9, i32 8)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeExtendedLowHigh(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeExtended(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytesSwapped(%struct._IO_FILE* %8, i8* %9, i32 10)
  ret void
}

declare arm_aapcscc void @ConvertToIeeeExtended(double, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc void @WriteIeeeExtendedHighLow(%struct._IO_FILE*, double) #0 {
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca double, align 8
  %5 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @ConvertToIeeeExtended(double %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 4
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  call arm_aapcscc void @WriteBytes(%struct._IO_FILE* %8, i8* %9, i32 10)
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
