; ModuleID = 'aesxam.c'
source_filename = "aesxam.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.aes = type { i32, i32, [64 x i32], [64 x i32], i8 }

@fillrand.a = internal global [2 x i32] zeroinitializer, align 4
@fillrand.mt = internal global i32 1, align 4
@fillrand.count = internal global i32 4, align 4
@fillrand.r = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The key value is too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4

; Function Attrs: nounwind
define arm_aapcscc void @fillrand(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @fillrand.mt, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store i32 0, i32* @fillrand.mt, align 4
  store i32 60147, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 0), align 4
  store i32 13822, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 1), align 4
  br label %9

; <label>:9:                                      ; preds = %8, %2
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %40, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @fillrand.count, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %32

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 0), align 4
  %19 = and i32 %18, 65535
  %20 = mul i32 36969, %19
  %21 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 0), align 4
  %22 = lshr i32 %21, 16
  %23 = add i32 %20, %22
  store i32 %23, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 0), align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 1), align 4
  %26 = and i32 %25, 65535
  %27 = mul i32 18000, %26
  %28 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 1), align 4
  %29 = lshr i32 %28, 16
  %30 = add i32 %27, %29
  store i32 %30, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fillrand.a, i32 0, i32 1), align 4
  %31 = add i32 %24, %30
  store i32 %31, i32* bitcast ([4 x i8]* @fillrand.r to i32*), align 1
  store i32 0, i32* @fillrand.count, align 4
  br label %32

; <label>:32:                                     ; preds = %17, %14
  %33 = load i32, i32* @fillrand.count, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* @fillrand.count, align 4
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* @fillrand.r, i32 0, i32 %33
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds i8, i8* %37, i32 %38
  store i8 %36, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %10

; <label>:43:                                     ; preds = %10
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @encfile(%struct._IO_FILE*, %struct._IO_FILE*, %struct.aes*, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  %7 = alloca %struct._IO_FILE*, align 4
  %8 = alloca %struct.aes*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca [16 x i8], align 1
  %11 = alloca [16 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 4
  store %struct.aes* %2, %struct.aes** %8, align 4
  store i8* %3, i8** %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  call arm_aapcscc void @fillrand(i8* %15, i32 16)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %17 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %16, i32 0, i32 2)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %19 = call arm_aapcscc i32 @ftell(%struct._IO_FILE* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %21 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %20, i32 0, i32 0)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %24 = call arm_aapcscc i32 @fwrite(i8* %22, i32 1, i32 16, %struct._IO_FILE* %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  call arm_aapcscc void @fillrand(i8* %25, i32 1)
  store i32 15, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = trunc i32 %26 to i8
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, -16
  %34 = or i32 %29, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  store i8 %35, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %85, %4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %39 = call arm_aapcscc i32 @feof(%struct._IO_FILE* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %86

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  %44 = getelementptr inbounds i8, i8* %43, i32 16
  %45 = load i32, i32* %14, align 4
  %46 = sub i32 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i32 %46
  %48 = load i32, i32* %14, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %50 = call arm_aapcscc i32 @fread(i8* %47, i32 1, i32 %48, %struct._IO_FILE* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %42
  br label %86

; <label>:55:                                     ; preds = %42
  store i32 0, i32* %13, align 4
  br label %56

; <label>:56:                                     ; preds = %70, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp ult i32 %57, 16
  br i1 %58, label %59, label %73

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, %63
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %70

; <label>:70:                                     ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %56

; <label>:73:                                     ; preds = %56
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  %76 = load %struct.aes*, %struct.aes** %8, align 4
  %77 = call arm_aapcscc signext i16 @encrypt(i8* %74, i8* %75, %struct.aes* %76)
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %80 = call arm_aapcscc i32 @fwrite(i8* %78, i32 1, i32 16, %struct._IO_FILE* %79)
  %81 = icmp ne i32 %80, 16
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %73
  %83 = load i8*, i8** %9, align 4
  %84 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %83)
  store i32 -7, i32* %5, align 4
  br label %135

; <label>:85:                                     ; preds = %73
  store i32 16, i32* %14, align 4
  br label %37

; <label>:86:                                     ; preds = %54, %37
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 15
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %92

; <label>:92:                                     ; preds = %89, %86
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

; <label>:95:                                     ; preds = %92
  br label %96

; <label>:96:                                     ; preds = %99, %95
  %97 = load i32, i32* %13, align 4
  %98 = icmp ult i32 %97, 16
  br i1 %98, label %99, label %103

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 %100
  store i8 0, i8* %102, align 1
  br label %96

; <label>:103:                                    ; preds = %96
  store i32 0, i32* %13, align 4
  br label %104

; <label>:104:                                    ; preds = %118, %103
  %105 = load i32, i32* %13, align 4
  %106 = icmp ult i32 %105, 16
  br i1 %106, label %107, label %121

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %13, align 4
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = xor i32 %115, %111
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %113, align 1
  br label %118

; <label>:118:                                    ; preds = %107
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %104

; <label>:121:                                    ; preds = %104
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  %124 = load %struct.aes*, %struct.aes** %8, align 4
  %125 = call arm_aapcscc signext i16 @encrypt(i8* %122, i8* %123, %struct.aes* %124)
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %128 = call arm_aapcscc i32 @fwrite(i8* %126, i32 1, i32 16, %struct._IO_FILE* %127)
  %129 = icmp ne i32 %128, 16
  br i1 %129, label %130, label %133

; <label>:130:                                    ; preds = %121
  %131 = load i8*, i8** %9, align 4
  %132 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %131)
  store i32 -8, i32* %5, align 4
  br label %135

; <label>:133:                                    ; preds = %121
  br label %134

; <label>:134:                                    ; preds = %133, %92
  store i32 0, i32* %5, align 4
  br label %135

; <label>:135:                                    ; preds = %134, %130, %82
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare arm_aapcscc i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare arm_aapcscc i32 @ftell(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @feof(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc signext i16 @encrypt(i8*, i8*, %struct.aes*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @decfile(%struct._IO_FILE*, %struct._IO_FILE*, %struct.aes*, i8*, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 4
  %8 = alloca %struct._IO_FILE*, align 4
  %9 = alloca %struct.aes*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca [16 x i8], align 1
  %13 = alloca [16 x i8], align 1
  %14 = alloca [16 x i8], align 1
  %15 = alloca i8*, align 4
  %16 = alloca i8*, align 4
  %17 = alloca i8*, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 4
  store %struct.aes* %2, %struct.aes** %9, align 4
  store i8* %3, i8** %10, align 4
  store i8* %4, i8** %11, align 4
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %23 = call arm_aapcscc i32 @fread(i8* %21, i32 1, i32 16, %struct._IO_FILE* %22)
  %24 = icmp ne i32 %23, 16
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %5
  %26 = load i8*, i8** %10, align 4
  %27 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %26)
  store i32 9, i32* %6, align 4
  br label %141

; <label>:28:                                     ; preds = %5
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %31 = call arm_aapcscc i32 @fread(i8* %29, i32 1, i32 16, %struct._IO_FILE* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 16
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 -10, i32* %6, align 4
  br label %141

; <label>:39:                                     ; preds = %34, %28
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 0
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  %42 = load %struct.aes*, %struct.aes** %9, align 4
  %43 = call arm_aapcscc signext i16 @decrypt(i8* %40, i8* %41, %struct.aes* %42)
  store i32 0, i32* %18, align 4
  br label %44

; <label>:44:                                     ; preds = %58, %39
  %45 = load i32, i32* %18, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %61

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %18, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %18, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, %51
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

; <label>:58:                                     ; preds = %47
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  br label %44

; <label>:61:                                     ; preds = %44
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  store i32 %65, i32* %20, align 4
  store i32 15, i32* %19, align 4
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0
  store i8* %66, i8** %15, align 4
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 0
  store i8* %67, i8** %16, align 4
  br label %68

; <label>:68:                                     ; preds = %61, %112
  %69 = load i8*, i8** %15, align 4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %71 = call arm_aapcscc i32 @fread(i8* %69, i32 1, i32 16, %struct._IO_FILE* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 16
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %68
  br label %117

; <label>:75:                                     ; preds = %68
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  %77 = getelementptr inbounds i8, i8* %76, i32 16
  %78 = load i32, i32* %19, align 4
  %79 = sub i32 0, %78
  %80 = getelementptr inbounds i8, i8* %77, i32 %79
  %81 = load i32, i32* %19, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 4
  %83 = call arm_aapcscc i32 @fwrite(i8* %80, i32 1, i32 %81, %struct._IO_FILE* %82)
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %75
  %87 = load i8*, i8** %11, align 4
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %87)
  store i32 -11, i32* %6, align 4
  br label %141

; <label>:89:                                     ; preds = %75
  %90 = load i8*, i8** %15, align 4
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  %92 = load %struct.aes*, %struct.aes** %9, align 4
  %93 = call arm_aapcscc signext i16 @decrypt(i8* %90, i8* %91, %struct.aes* %92)
  store i32 0, i32* %18, align 4
  br label %94

; <label>:94:                                     ; preds = %109, %89
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 16
  br i1 %96, label %97, label %112

; <label>:97:                                     ; preds = %94
  %98 = load i8*, i8** %16, align 4
  %99 = load i32, i32* %18, align 4
  %100 = getelementptr inbounds i8, i8* %98, i32 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = xor i32 %106, %102
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  br label %109

; <label>:109:                                    ; preds = %97
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %94

; <label>:112:                                    ; preds = %94
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %19, align 4
  %114 = load i8*, i8** %15, align 4
  store i8* %114, i8** %17, align 4
  %115 = load i8*, i8** %16, align 4
  store i8* %115, i8** %15, align 4
  %116 = load i8*, i8** %17, align 4
  store i8* %116, i8** %16, align 4
  br label %68

; <label>:117:                                    ; preds = %74
  %118 = load i32, i32* %19, align 4
  %119 = icmp eq i32 %118, 15
  %120 = select i1 %119, i32 1, i32 0
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = sub nsw i32 1, %121
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

; <label>:127:                                    ; preds = %117
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  %129 = load i32, i32* %19, align 4
  %130 = getelementptr inbounds i8, i8* %128, i32 %129
  %131 = load i32, i32* %20, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 4
  %133 = call arm_aapcscc i32 @fwrite(i8* %130, i32 1, i32 %131, %struct._IO_FILE* %132)
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

; <label>:136:                                    ; preds = %127
  %137 = load i8*, i8** %11, align 4
  %138 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %137)
  store i32 -12, i32* %6, align 4
  br label %141

; <label>:139:                                    ; preds = %127
  br label %140

; <label>:140:                                    ; preds = %139, %117
  store i32 0, i32* %6, align 4
  br label %141

; <label>:141:                                    ; preds = %140, %136, %86, %37, %25
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare arm_aapcscc signext i16 @decrypt(i8*, i8*, %struct.aes*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  %7 = alloca %struct._IO_FILE*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i8, align 1
  %10 = alloca [32 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x %struct.aes], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %34, label %18

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 3
  %21 = load i8*, i8** %20, align 4
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = call arm_aapcscc i32 @toupper(i32 %23) #3
  %25 = icmp ne i32 %24, 68
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %18
  %27 = load i8**, i8*** %5, align 4
  %28 = getelementptr inbounds i8*, i8** %27, i32 3
  %29 = load i8*, i8** %28, align 4
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call arm_aapcscc i32 @toupper(i32 %31) #3
  %33 = icmp ne i32 %32, 69
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %26, %2
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %14, align 4
  br label %180

; <label>:36:                                     ; preds = %26, %18
  %37 = load i8**, i8*** %5, align 4
  %38 = getelementptr inbounds i8*, i8** %37, i32 4
  %39 = load i8*, i8** %38, align 4
  store i8* %39, i8** %8, align 4
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %103, %36
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 64
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %8, align 4
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %104

; <label>:50:                                     ; preds = %48
  %51 = load i8*, i8** %8, align 4
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 4
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = call arm_aapcscc i32 @toupper(i32 %54) #3
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %50
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 4
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 %69, 48
  store i32 %70, i32* %12, align 4
  br label %90

; <label>:71:                                     ; preds = %60, %50
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sge i32 %73, 65
  br i1 %74, label %75, label %87

; <label>:75:                                     ; preds = %71
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp sle i32 %77, 70
  br i1 %78, label %79, label %87

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 4
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %81, %83
  %85 = sub nsw i32 %84, 65
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %12, align 4
  br label %89

; <label>:87:                                     ; preds = %75, %71
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0))
  store i32 -2, i32* %14, align 4
  br label %180

; <label>:89:                                     ; preds = %79
  br label %90

; <label>:90:                                     ; preds = %89, %64
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = and i32 %91, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %99, 2
  %101 = sub nsw i32 %100, 1
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 %101
  store i8 %98, i8* %102, align 1
  br label %103

; <label>:103:                                    ; preds = %95, %90
  br label %40

; <label>:104:                                    ; preds = %48
  %105 = load i8*, i8** %8, align 4
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %110

; <label>:108:                                    ; preds = %104
  %109 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  store i32 -3, i32* %14, align 4
  br label %180

; <label>:110:                                    ; preds = %104
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 32
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 15
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

; <label>:117:                                    ; preds = %113, %110
  %118 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0))
  store i32 -4, i32* %14, align 4
  br label %180

; <label>:119:                                    ; preds = %113
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %13, align 4
  %123 = load i8**, i8*** %5, align 4
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  %125 = load i8*, i8** %124, align 4
  %126 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %126, %struct._IO_FILE** %6, align 4
  %127 = icmp ne %struct._IO_FILE* %126, null
  br i1 %127, label %133, label %128

; <label>:128:                                    ; preds = %120
  %129 = load i8**, i8*** %5, align 4
  %130 = getelementptr inbounds i8*, i8** %129, i32 1
  %131 = load i8*, i8** %130, align 4
  %132 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* %131)
  store i32 -5, i32* %14, align 4
  br label %180

; <label>:133:                                    ; preds = %120
  %134 = load i8**, i8*** %5, align 4
  %135 = getelementptr inbounds i8*, i8** %134, i32 2
  %136 = load i8*, i8** %135, align 4
  %137 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %137, %struct._IO_FILE** %7, align 4
  %138 = icmp ne %struct._IO_FILE* %137, null
  br i1 %138, label %144, label %139

; <label>:139:                                    ; preds = %133
  %140 = load i8**, i8*** %5, align 4
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  %142 = load i8*, i8** %141, align 4
  %143 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %142)
  store i32 -6, i32* %14, align 4
  br label %180

; <label>:144:                                    ; preds = %133
  %145 = load i8**, i8*** %5, align 4
  %146 = getelementptr inbounds i8*, i8** %145, i32 3
  %147 = load i8*, i8** %146, align 4
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = call arm_aapcscc i32 @toupper(i32 %149) #3
  %151 = icmp eq i32 %150, 69
  br i1 %151, label %152, label %164

; <label>:152:                                    ; preds = %144
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %154 = load i32, i32* %13, align 4
  %155 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i32 0, i32 0
  %156 = call arm_aapcscc signext i16 @set_key(i8* %153, i32 %154, i32 1, %struct.aes* %155)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %159 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i32 0, i32 0
  %160 = load i8**, i8*** %5, align 4
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  %162 = load i8*, i8** %161, align 4
  %163 = call arm_aapcscc i32 @encfile(%struct._IO_FILE* %157, %struct._IO_FILE* %158, %struct.aes* %159, i8* %162)
  store i32 %163, i32* %14, align 4
  br label %179

; <label>:164:                                    ; preds = %144
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %166 = load i32, i32* %13, align 4
  %167 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i32 0, i32 0
  %168 = call arm_aapcscc signext i16 @set_key(i8* %165, i32 %166, i32 2, %struct.aes* %167)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %171 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i32 0, i32 0
  %172 = load i8**, i8*** %5, align 4
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  %174 = load i8*, i8** %173, align 4
  %175 = load i8**, i8*** %5, align 4
  %176 = getelementptr inbounds i8*, i8** %175, i32 2
  %177 = load i8*, i8** %176, align 4
  %178 = call arm_aapcscc i32 @decfile(%struct._IO_FILE* %169, %struct._IO_FILE* %170, %struct.aes* %171, i8* %174, i8* %177)
  store i32 %178, i32* %14, align 4
  br label %179

; <label>:179:                                    ; preds = %164, %152
  br label %180

; <label>:180:                                    ; preds = %179, %139, %128, %117, %108, %87, %34
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %182 = icmp ne %struct._IO_FILE* %181, null
  br i1 %182, label %183, label %186

; <label>:183:                                    ; preds = %180
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %185 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %184)
  br label %186

; <label>:186:                                    ; preds = %183, %180
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %188 = icmp ne %struct._IO_FILE* %187, null
  br i1 %188, label %189, label %192

; <label>:189:                                    ; preds = %186
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %191 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %190)
  br label %192

; <label>:192:                                    ; preds = %189, %186
  %193 = load i32, i32* %14, align 4
  ret i32 %193
}

; Function Attrs: nounwind readonly
declare arm_aapcscc i32 @toupper(i32) #2

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc signext i16 @set_key(i8*, i32, i32, %struct.aes*) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
