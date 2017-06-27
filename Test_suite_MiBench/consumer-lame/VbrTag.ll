; ModuleID = 'VbrTag.c'
source_filename = "VbrTag.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i32, i32, i32 }

@SizeOfEmptyFrame = global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 4
@pVbrFrames = global i32* null, align 4
@nVbrNumFrames = global i32 0, align 4
@nVbrFrameBufferSize = global i32 0, align 4
@VBRTag = internal global [5 x i8] c"Xing\00", align 1
@GetVbrTag.sr_table = internal global [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 4
@g_Position = internal global [100 x i32] zeroinitializer, align 4
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 1
@nZeroStreamSize = internal global i32 0, align 4
@InitVbrTag.framesize = internal constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @AddVbrFrame(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @pVbrFrames, align 4
  %4 = icmp eq i32* %3, null
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @nVbrFrameBufferSize, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %5, %1
  store i32 100, i32* @nVbrFrameBufferSize, align 4
  %9 = load i32, i32* @nVbrFrameBufferSize, align 4
  %10 = mul i32 %9, 4
  %11 = call arm_aapcscc i8* @malloc(i32 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @pVbrFrames, align 4
  br label %13

; <label>:13:                                     ; preds = %8, %5
  %14 = load i32, i32* @nVbrNumFrames, align 4
  %15 = load i32, i32* @nVbrFrameBufferSize, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* @nVbrFrameBufferSize, align 4
  %19 = mul nsw i32 %18, 2
  store i32 %19, i32* @nVbrFrameBufferSize, align 4
  %20 = load i32*, i32** @pVbrFrames, align 4
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* @nVbrFrameBufferSize, align 4
  %23 = mul i32 %22, 4
  %24 = call arm_aapcscc i8* @realloc(i8* %21, i32 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @pVbrFrames, align 4
  br label %26

; <label>:26:                                     ; preds = %17, %13
  %27 = load i32, i32* %2, align 4
  %28 = load i32*, i32** @pVbrFrames, align 4
  %29 = load i32, i32* @nVbrNumFrames, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @nVbrNumFrames, align 4
  %31 = getelementptr inbounds i32, i32* %28, i32 %29
  store i32 %27, i32* %31, align 4
  ret void
}

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i8* @realloc(i8*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc void @CreateI4(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 24
  %7 = and i32 %6, 255
  %8 = trunc i32 %7 to i8
  %9 = load i8*, i8** %3, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 0
  store i8 %8, i8* %10, align 1
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 4
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 4
  %22 = getelementptr inbounds i8, i8* %21, i32 2
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 4
  %27 = getelementptr inbounds i8, i8* %26, i32 3
  store i8 %25, i8* %27, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @CheckVbrTag(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %7 = load i8*, i8** %3, align 4
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 3
  %12 = and i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 4
  %14 = getelementptr inbounds i8, i8* %13, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 3
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** %3, align 4
  %20 = getelementptr inbounds i8, i8* %19, i32 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 3
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %3, align 4
  %32 = getelementptr inbounds i8, i8* %31, i32 36
  store i8* %32, i8** %3, align 4
  br label %36

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %3, align 4
  %35 = getelementptr inbounds i8, i8* %34, i32 21
  store i8* %35, i8** %3, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %30
  br label %47

; <label>:37:                                     ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 3
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %3, align 4
  %42 = getelementptr inbounds i8, i8* %41, i32 21
  store i8* %42, i8** %3, align 4
  br label %46

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %3, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 13
  store i8* %45, i8** %3, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %40
  br label %47

; <label>:47:                                     ; preds = %46, %36
  %48 = load i8*, i8** %3, align 4
  %49 = getelementptr inbounds i8, i8* %48, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 0), align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %47
  store i32 0, i32* %2, align 4
  br label %84

; <label>:56:                                     ; preds = %47
  %57 = load i8*, i8** %3, align 4
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 1), align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %56
  store i32 0, i32* %2, align 4
  br label %84

; <label>:65:                                     ; preds = %56
  %66 = load i8*, i8** %3, align 4
  %67 = getelementptr inbounds i8, i8* %66, i32 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 2), align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %65
  store i32 0, i32* %2, align 4
  br label %84

; <label>:74:                                     ; preds = %65
  %75 = load i8*, i8** %3, align 4
  %76 = getelementptr inbounds i8, i8* %75, i32 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 3), align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %74
  store i32 0, i32* %2, align 4
  br label %84

; <label>:83:                                     ; preds = %74
  store i32 1, i32* %2, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %82, %73, %64, %55
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: nounwind
define arm_aapcscc i32 @GetVbrTag(%struct.VBRTAGDATA*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.VBRTAGDATA*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.VBRTAGDATA* %0, %struct.VBRTAGDATA** %4, align 4
  store i8* %1, i8** %5, align 4
  %11 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %12 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 4
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 3
  %18 = and i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i8*, i8** %5, align 4
  %20 = getelementptr inbounds i8, i8* %19, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 2
  %24 = and i32 %23, 3
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %5, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 3
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %5, align 4
  %38 = getelementptr inbounds i8, i8* %37, i32 36
  store i8* %38, i8** %5, align 4
  br label %42

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %5, align 4
  %41 = getelementptr inbounds i8, i8* %40, i32 21
  store i8* %41, i8** %5, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  br label %53

; <label>:43:                                     ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load i8*, i8** %5, align 4
  %48 = getelementptr inbounds i8, i8* %47, i32 21
  store i8* %48, i8** %5, align 4
  br label %52

; <label>:49:                                     ; preds = %43
  %50 = load i8*, i8** %5, align 4
  %51 = getelementptr inbounds i8, i8* %50, i32 13
  store i8* %51, i8** %5, align 4
  br label %52

; <label>:52:                                     ; preds = %49, %46
  br label %53

; <label>:53:                                     ; preds = %52, %42
  %54 = load i8*, i8** %5, align 4
  %55 = getelementptr inbounds i8, i8* %54, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 0), align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %53
  store i32 0, i32* %3, align 4
  br label %178

; <label>:62:                                     ; preds = %53
  %63 = load i8*, i8** %5, align 4
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 1), align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %62
  store i32 0, i32* %3, align 4
  br label %178

; <label>:71:                                     ; preds = %62
  %72 = load i8*, i8** %5, align 4
  %73 = getelementptr inbounds i8, i8* %72, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 2), align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %71
  store i32 0, i32* %3, align 4
  br label %178

; <label>:80:                                     ; preds = %71
  %81 = load i8*, i8** %5, align 4
  %82 = getelementptr inbounds i8, i8* %81, i32 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 3), align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %80
  store i32 0, i32* %3, align 4
  br label %178

; <label>:89:                                     ; preds = %80
  %90 = load i8*, i8** %5, align 4
  %91 = getelementptr inbounds i8, i8* %90, i32 4
  store i8* %91, i8** %5, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %94 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* @GetVbrTag.sr_table, i32 0, i32 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %99 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

; <label>:102:                                    ; preds = %89
  %103 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %104 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

; <label>:107:                                    ; preds = %102, %89
  %108 = load i8*, i8** %5, align 4
  %109 = call arm_aapcscc i32 @ExtractI4(i8* %108)
  %110 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %111 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  store i32 %109, i32* %7, align 4
  %112 = load i8*, i8** %5, align 4
  %113 = getelementptr inbounds i8, i8* %112, i32 4
  store i8* %113, i8** %5, align 4
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

; <label>:117:                                    ; preds = %107
  %118 = load i8*, i8** %5, align 4
  %119 = call arm_aapcscc i32 @ExtractI4(i8* %118)
  %120 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %121 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i8*, i8** %5, align 4
  %123 = getelementptr inbounds i8, i8* %122, i32 4
  store i8* %123, i8** %5, align 4
  br label %124

; <label>:124:                                    ; preds = %117, %107
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

; <label>:128:                                    ; preds = %124
  %129 = load i8*, i8** %5, align 4
  %130 = call arm_aapcscc i32 @ExtractI4(i8* %129)
  %131 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %132 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load i8*, i8** %5, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 4
  store i8* %134, i8** %5, align 4
  br label %135

; <label>:135:                                    ; preds = %128, %124
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %164

; <label>:139:                                    ; preds = %135
  %140 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %141 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %140, i32 0, i32 6
  %142 = getelementptr inbounds [100 x i8], [100 x i8]* %141, i32 0, i32 0
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %161

; <label>:144:                                    ; preds = %139
  store i32 0, i32* %6, align 4
  br label %145

; <label>:145:                                    ; preds = %157, %144
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 100
  br i1 %147, label %148, label %160

; <label>:148:                                    ; preds = %145
  %149 = load i8*, i8** %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = getelementptr inbounds i8, i8* %149, i32 %150
  %152 = load i8, i8* %151, align 1
  %153 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %154 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %153, i32 0, i32 6
  %155 = load i32, i32* %6, align 4
  %156 = getelementptr inbounds [100 x i8], [100 x i8]* %154, i32 0, i32 %155
  store i8 %152, i8* %156, align 1
  br label %157

; <label>:157:                                    ; preds = %148
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %145

; <label>:160:                                    ; preds = %145
  br label %161

; <label>:161:                                    ; preds = %160, %139
  %162 = load i8*, i8** %5, align 4
  %163 = getelementptr inbounds i8, i8* %162, i32 100
  store i8* %163, i8** %5, align 4
  br label %164

; <label>:164:                                    ; preds = %161, %135
  %165 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %166 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %165, i32 0, i32 5
  store i32 -1, i32* %166, align 4
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** %5, align 4
  %172 = call arm_aapcscc i32 @ExtractI4(i8* %171)
  %173 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 4
  %174 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load i8*, i8** %5, align 4
  %176 = getelementptr inbounds i8, i8* %175, i32 4
  store i8* %176, i8** %5, align 4
  br label %177

; <label>:177:                                    ; preds = %170, %164
  store i32 1, i32* %3, align 4
  br label %178

; <label>:178:                                    ; preds = %177, %88, %79, %70, %61
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @ExtractI4(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %4 = load i8*, i8** %2, align 4
  %5 = getelementptr inbounds i8, i8* %4, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 %8, 8
  store i32 %9, i32* %3, align 4
  %10 = load i8*, i8** %2, align 4
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** %2, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %3, align 4
  %26 = load i8*, i8** %2, align 4
  %27 = getelementptr inbounds i8, i8* %26, i32 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind
define arm_aapcscc i32 @InitVbrTag(%struct.bit_stream_struc*, i32, i32, i32) #0 {
  %5 = alloca %struct.bit_stream_struc*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** @pVbrFrames, align 4
  store i32 0, i32* @nVbrNumFrames, align 4
  store i32 0, i32* @nVbrFrameBufferSize, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast ([100 x i32]* @g_Position to i8*), i8 0, i32 400, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i8 0, i32 216, i32 1, i1 false)
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %17, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* @g_Position, i32 0, i32 %15
  store i32 -1, i32* %16, align 4
  br label %17

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %11

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i32 0, i32 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* @nZeroStreamSize, align 4
  br label %35

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i32 0, i32 %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* @nZeroStreamSize, align 4
  br label %35

; <label>:35:                                     ; preds = %29, %23
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %40 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #5
  unreachable

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* @InitVbrTag.framesize, i32 0, i32 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @TotalFrameSize, align 4
  %45 = load i32, i32* @nZeroStreamSize, align 4
  %46 = add nsw i32 %45, 120
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 20
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @TotalFrameSize, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %41
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %54 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #5
  unreachable

; <label>:55:                                     ; preds = %41
  store i32 0, i32* %9, align 4
  br label %56

; <label>:56:                                     ; preds = %62, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TotalFrameSize, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %56
  %61 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %5, align 4
  call arm_aapcscc void @putbits(%struct.bit_stream_struc* %61, i32 0, i32 8)
  br label %62

; <label>:62:                                     ; preds = %60
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %56

; <label>:65:                                     ; preds = %56
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

declare arm_aapcscc void @putbits(%struct.bit_stream_struc*, i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @PutVbrTag(i8*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [100 x i8], align 1
  %13 = alloca %struct._IO_FILE*, align 4
  %14 = alloca [80 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @nVbrNumFrames, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %3
  %20 = load i32*, i32** @pVbrFrames, align 4
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19, %3
  store i32 -1, i32* %4, align 4
  br label %160

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %5, align 4
  %25 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %25, %struct._IO_FILE** %13, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %160

; <label>:29:                                     ; preds = %23
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i8 0, i32 216, i32 1, i1 false)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %31 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %30, i32 0, i32 2)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %33 = call arm_aapcscc i32 @ftell(%struct._IO_FILE* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %160

; <label>:37:                                     ; preds = %29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %39 = load i32, i32* @TotalFrameSize, align 4
  %40 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %38, i32 %39, i32 0)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %42 = call arm_aapcscc i32 @fread(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %41)
  store i8 -1, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), align 1
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %37
  store i8 -5, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 1), align 1
  %46 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 2), align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 12
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %11, align 1
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 80, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 2), align 1
  br label %63

; <label>:54:                                     ; preds = %37
  store i8 -13, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 1), align 1
  %55 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 2), align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 12
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %11, align 1
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 128, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 2), align 1
  br label %63

; <label>:63:                                     ; preds = %54, %45
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %65 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %64, i32 0, i32 0)
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %66, i8 0, i32 100, i32 1, i1 false)
  store i32 1, i32* %8, align 4
  br label %67

; <label>:67:                                     ; preds = %96, %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 100
  br i1 %69, label %70, label %99

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = sitofp i32 %71 to double
  %73 = fmul double 1.000000e-02, %72
  %74 = load i32, i32* @nVbrNumFrames, align 4
  %75 = sitofp i32 %74 to double
  %76 = fmul double %73, %75
  %77 = call arm_aapcscc double @floor(double %76) #6
  %78 = fptosi double %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load i32*, i32** @pVbrFrames, align 4
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds i32, i32* %79, i32 %80
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to float
  %84 = fmul float 2.560000e+02, %83
  %85 = load i32, i32* %9, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %84, %86
  store float %87, float* %16, align 4
  %88 = load float, float* %16, align 4
  %89 = fcmp ogt float %88, 2.550000e+02
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %70
  store float 2.550000e+02, float* %16, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %70
  %92 = load float, float* %16, align 4
  %93 = fptoui float %92 to i8
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i32 0, i32 %94
  store i8 %93, i8* %95, align 1
  br label %96

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %67

; <label>:99:                                     ; preds = %67
  %100 = load i32, i32* @nZeroStreamSize, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 0), align 1
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %102
  store i8 %101, i8* %104, align 1
  %105 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 1), align 1
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %106
  store i8 %105, i8* %108, align 1
  %109 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 2), align 1
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %110
  store i8 %109, i8* %112, align 1
  %113 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i32 3), align 1
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %114
  store i8 %113, i8* %116, align 1
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %117
  call arm_aapcscc void @CreateI4(i8* %118, i32 15)
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %121
  %123 = load i32, i32* @nVbrNumFrames, align 4
  call arm_aapcscc void @CreateI4(i8* %122, i32 %123)
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %126
  %128 = load i32, i32* %9, align 4
  call arm_aapcscc void @CreateI4(i8* %127, i32 %128)
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %131
  %133 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %132, i8* %133, i32 100, i32 1, i1 false)
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 100
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %136
  %138 = load i32, i32* %6, align 4
  call arm_aapcscc void @CreateI4(i8* %137, i32 %138)
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %10, align 4
  %141 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i32 0, i32 0
  %142 = call arm_aapcscc i8* @get_lame_version()
  %143 = call arm_aapcscc i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %142)
  %144 = load i32, i32* %10, align 4
  %145 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 %144
  %146 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i32 0, i32 0
  %147 = call arm_aapcscc i8* @strncpy(i8* %145, i8* %146, i32 20)
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 20
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* @TotalFrameSize, align 4
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %152 = call arm_aapcscc i32 @fwrite(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i32 %150, i32 1, %struct._IO_FILE* %151)
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %160

; <label>:155:                                    ; preds = %99
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 4
  %157 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %156)
  %158 = load i32*, i32** @pVbrFrames, align 4
  %159 = bitcast i32* %158 to i8*
  call arm_aapcscc void @free(i8* %159)
  store i32* null, i32** @pVbrFrames, align 4
  store i32 0, i32* %4, align 4
  br label %160

; <label>:160:                                    ; preds = %155, %154, %36, %28, %22
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare arm_aapcscc i32 @ftell(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare arm_aapcscc double @floor(double) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare arm_aapcscc i32 @sprintf(i8*, i8*, ...) #1

declare arm_aapcscc i8* @get_lame_version() #1

declare arm_aapcscc i8* @strncpy(i8*, i8*, i32) #1

declare arm_aapcscc i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

declare arm_aapcscc void @free(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @SeekPoint(i8*, i32, float) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %12 = load float, float* %6, align 4
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  store float 0.000000e+00, float* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %3
  %16 = load float, float* %6, align 4
  %17 = fcmp ogt float %16, 1.000000e+02
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store float 1.000000e+02, float* %6, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %15
  %20 = load float, float* %6, align 4
  %21 = fptosi float %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 99
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  store i32 99, i32* %7, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %19
  %26 = load i8*, i8** %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds i8, i8* %26, i32 %27
  %29 = load i8, i8* %28, align 1
  %30 = uitofp i8 %29 to float
  store float %30, float* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 99
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i32 %36
  %38 = load i8, i8* %37, align 1
  %39 = uitofp i8 %38 to float
  store float %39, float* %10, align 4
  br label %41

; <label>:40:                                     ; preds = %25
  store float 2.560000e+02, float* %10, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %33
  %42 = load float, float* %9, align 4
  %43 = load float, float* %10, align 4
  %44 = load float, float* %9, align 4
  %45 = fsub float %43, %44
  %46 = load float, float* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sitofp i32 %47 to float
  %49 = fsub float %46, %48
  %50 = fmul float %45, %49
  %51 = fadd float %42, %50
  store float %51, float* %11, align 4
  %52 = load float, float* %11, align 4
  %53 = fmul float 3.906250e-03, %52
  %54 = load i32, i32* %5, align 4
  %55 = sitofp i32 %54 to float
  %56 = fmul float %53, %55
  %57 = fptosi float %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
