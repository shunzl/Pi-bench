; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  %7 = alloca %struct.SHA_INFO, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
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
  br label %42

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %40, %13
  %15 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %15, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %15, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %15, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %15, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %16 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %16, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %17 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %17, i64 0
  %extractE6 = extractelement <4 x i32> %17, i64 1
  %extractE7 = extractelement <4 x i32> %17, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %18 = add nsw i32 %15, -1
  %Fmul = mul i32 %18, 3
  store i32 %18, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %19, label %23

; <label>:19:                                     ; preds = %14
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %20, label %21

; <label>:20:                                     ; preds = %19
  store i32 %18, i32* %Recovery, align 4
  br label %22

; <label>:21:                                     ; preds = %19
  store i32 %extractE, i32* %Recovery, align 4
  br label %22

; <label>:22:                                     ; preds = %21, %20
  br label %23

; <label>:23:                                     ; preds = %14, %22
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  %24 = icmp ne i32 %18, 0
  br i1 %24, label %25, label %41

; <label>:25:                                     ; preds = %23
  %26 = load i8**, i8*** %5, align 4
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 4
  %28 = load i8*, i8** %27, align 4
  %29 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** %6, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %25
  %33 = load i8**, i8*** %5, align 4
  %34 = load i8*, i8** %33, align 4
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %34)
  br label %40

; <label>:36:                                     ; preds = %25
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  call arm_aapcscc void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %37)
  call arm_aapcscc void @sha_print(%struct.SHA_INFO* %7)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %39 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %38)
  br label %40

; <label>:40:                                     ; preds = %36, %32
  br label %14

; <label>:41:                                     ; preds = %23
  br label %42

; <label>:42:                                     ; preds = %41, %10
  ret i32 0
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @sha_init(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  store i32 1732584193, i32* %5, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 1
  store i32 -271733879, i32* %8, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 0
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i32 0, i32 2
  store i32 -1732584194, i32* %11, align 4
  %12 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %13 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %12, i32 0, i32 0
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i32 0, i32 3
  store i32 271733878, i32* %14, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i32 0, i32 4
  store i32 -1009589776, i32* %17, align 4
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @sha_update(%struct.SHA_INFO*, i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %4 = alloca %struct.SHA_INFO*, align 4
  %5 = alloca i8*, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 3
  %12 = add i32 %9, %11
  %13 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %14 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

; <label>:22:                                     ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %23, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt, i32 %23, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %23, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %23, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec7, align 16
  %24 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop = shl <4 x i32> %24, <i32 3, i32 3, i32 3, i32 3>
  %25 = shl i32 %23, 3
  %26 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 29
  %32 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %33 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

; <label>:36:                                     ; preds = %56, %22
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 64
  br i1 %38, label %39, label %57

; <label>:39:                                     ; preds = %36
  %40 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %41 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %40, i32 0, i32 3
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8*
  %44 = load i8*, i8** %5, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 64, i32 1, i1 false)
  %45 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %45)
  %46 = load i8*, i8** %5, align 4
  %47 = getelementptr inbounds i8, i8* %46, i32 64
  store i8* %47, i8** %5, align 4
  %48 = load i32, i32* %6, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %48, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %48, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %48, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %48, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec7, align 16
  %49 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop15 = sub <4 x i32> %49, <i32 64, i32 64, i32 64, i32 64>
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec7
  %50 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %50, i64 0
  %extractE16 = extractelement <4 x i32> %50, i64 1
  %extractE17 = extractelement <4 x i32> %50, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %51 = sub nsw i32 %48, 64
  %Fmul = mul i32 %51, 3
  store i32 %51, i32* %Recovery3
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %52, label %56

; <label>:52:                                     ; preds = %39
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %53, label %54

; <label>:53:                                     ; preds = %52
  store i32 %51, i32* %Recovery3, align 4
  br label %55

; <label>:54:                                     ; preds = %52
  store i32 %extractE, i32* %Recovery3, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %53
  br label %56

; <label>:56:                                     ; preds = %39, %55
  %ReplaceInst = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst, i32* %6, align 4
  br label %36

; <label>:57:                                     ; preds = %36
  %58 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %59 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %58, i32 0, i32 3
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %59, i32 0, i32 0
  %61 = bitcast i32* %60 to i8*
  %62 = load i8*, i8** %5, align 4
  %63 = load i32, i32* %6, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %61, i8* %62, i32 %63, i32 1, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define internal arm_aapcscc void @sha_transform(%struct.SHA_INFO*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %Recovery5 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %Recovery6 = alloca i32, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %Recovery7 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i32>, align 16
  %Recovery8 = alloca i32, align 4
  %allocaVec18 = alloca <4 x i32>, align 16
  %Recovery9 = alloca i32, align 4
  %2 = alloca %struct.SHA_INFO*, align 4
  %allocaVec19 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec20 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec21 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec22 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec24 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec25 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca [80 x i32], align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec19
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %22, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %11
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i32 0, i32 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %20
  store i32 %19, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %23, i32 0
  %insertElmt26 = insertelement <4 x i32> %insertElmt, i32 %23, i32 1
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %23, i32 2
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %23, i32 3
  store <4 x i32> %insertElmt28, <4 x i32>* %allocaVec19, align 16
  %24 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop = add <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec19
  %25 = add nsw i32 %23, 1
  store i32 %25, i32* %3, align 4
  br label %11

; <label>:26:                                     ; preds = %11
  store <4 x i32> <i32 16, i32 16, i32 16, i32 16>, <4 x i32>* %allocaVec19
  store i32 16, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %53, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 80
  br i1 %29, label %30, label %57

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop29 = sub <4 x i32> %32, <i32 3, i32 3, i32 3, i32 3>
  %33 = sub nsw i32 %31, 3
  %34 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, 8
  %38 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %35, %39
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 14
  %43 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %40, %44
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 16
  %48 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %45, %49
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %51
  store i32 %50, i32* %52, align 4
  br label %53

; <label>:53:                                     ; preds = %30
  %54 = load i32, i32* %3, align 4
  %55 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop30 = add <4 x i32> %55, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop30, <4 x i32>* %allocaVec19
  %56 = add nsw i32 %54, 1
  store i32 %56, i32* %3, align 4
  br label %27

; <label>:57:                                     ; preds = %27
  %58 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %59 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %58, i32 0, i32 0
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  %62 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %63 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %62, i32 0, i32 0
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %67 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %66, i32 0, i32 0
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %71 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %70, i32 0, i32 0
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %75 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %74, i32 0, i32 0
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec19
  store i32 0, i32* %3, align 4
  br label %78

; <label>:78:                                     ; preds = %119, %57
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 20
  br i1 %80, label %81, label %123

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %5, align 4
  %insertElmt31 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %82, i32 1
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %82, i32 2
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %82, i32 3
  store <4 x i32> %insertElmt34, <4 x i32>* %allocaVec21, align 16
  %83 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop35 = shl <4 x i32> %83, <i32 5, i32 5, i32 5, i32 5>
  %84 = shl i32 %82, 5
  %85 = load i32, i32* %5, align 4
  %insertElmt36 = insertelement <4 x i32> undef, i32 %85, i32 0
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %85, i32 1
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %85, i32 2
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %85, i32 3
  store <4 x i32> %insertElmt39, <4 x i32>* %allocaVec21, align 16
  %86 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop40 = lshr <4 x i32> %86, <i32 27, i32 27, i32 27, i32 27>
  %87 = lshr i32 %85, 27
  %Vop41 = or <4 x i32> %Vop35, %Vop40
  %88 = or i32 %84, %87
  %89 = load i32, i32* %6, align 4
  %insertElmt42 = insertelement <4 x i32> undef, i32 %89, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %89, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %89, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %89, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec22, align 16
  %90 = load i32, i32* %7, align 4
  %insertElmt46 = insertelement <4 x i32> undef, i32 %90, i32 0
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %90, i32 1
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %90, i32 2
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %90, i32 3
  store <4 x i32> %insertElmt49, <4 x i32>* %allocaVec23, align 16
  %91 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %92 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop50 = and <4 x i32> %91, %92
  %93 = and i32 %89, %90
  %94 = load i32, i32* %6, align 4
  %insertElmt51 = insertelement <4 x i32> undef, i32 %94, i32 0
  %insertElmt52 = insertelement <4 x i32> %insertElmt51, i32 %94, i32 1
  %insertElmt53 = insertelement <4 x i32> %insertElmt52, i32 %94, i32 2
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %94, i32 3
  store <4 x i32> %insertElmt54, <4 x i32>* %allocaVec22, align 16
  %95 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop55 = xor <4 x i32> %95, <i32 -1, i32 -1, i32 -1, i32 -1>
  %96 = xor i32 %94, -1
  %97 = load i32, i32* %8, align 4
  %insertElmt56 = insertelement <4 x i32> undef, i32 %97, i32 0
  %insertElmt57 = insertelement <4 x i32> %insertElmt56, i32 %97, i32 1
  %insertElmt58 = insertelement <4 x i32> %insertElmt57, i32 %97, i32 2
  %insertElmt59 = insertelement <4 x i32> %insertElmt58, i32 %97, i32 3
  store <4 x i32> %insertElmt59, <4 x i32>* %allocaVec24, align 16
  %98 = load <4 x i32>, <4 x i32>* %allocaVec24, align 16
  %Vop60 = and <4 x i32> %Vop55, %98
  %99 = and i32 %96, %97
  %Vop61 = or <4 x i32> %Vop50, %Vop60
  %100 = or i32 %93, %99
  %Vop62 = add <4 x i32> %Vop41, %Vop61
  %101 = add i32 %88, %100
  %102 = load i32, i32* %9, align 4
  %insertElmt63 = insertelement <4 x i32> undef, i32 %102, i32 0
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %102, i32 1
  %insertElmt65 = insertelement <4 x i32> %insertElmt64, i32 %102, i32 2
  %insertElmt66 = insertelement <4 x i32> %insertElmt65, i32 %102, i32 3
  store <4 x i32> %insertElmt66, <4 x i32>* %allocaVec25, align 16
  %103 = load <4 x i32>, <4 x i32>* %allocaVec25, align 16
  %Vop67 = add <4 x i32> %Vop62, %103
  %104 = add i32 %101, %102
  %105 = load i32, i32* %3, align 4
  %106 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %105
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %104, %107
  %109 = add i32 %108, 1518500249
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 30
  %114 = load i32, i32* %6, align 4
  %115 = lshr i32 %114, 2
  %116 = or i32 %113, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %5, align 4
  br label %119

; <label>:119:                                    ; preds = %81
  %120 = load i32, i32* %3, align 4
  %121 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop68 = add <4 x i32> %121, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop68, <4 x i32>* %allocaVec19
  %122 = add nsw i32 %120, 1
  store i32 %122, i32* %3, align 4
  br label %78

; <label>:123:                                    ; preds = %78
  store <4 x i32> <i32 20, i32 20, i32 20, i32 20>, <4 x i32>* %allocaVec19
  store i32 20, i32* %3, align 4
  br label %124

; <label>:124:                                    ; preds = %161, %123
  %125 = load i32, i32* %3, align 4
  %126 = icmp slt i32 %125, 40
  br i1 %126, label %127, label %165

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %5, align 4
  %insertElmt69 = insertelement <4 x i32> undef, i32 %128, i32 0
  %insertElmt70 = insertelement <4 x i32> %insertElmt69, i32 %128, i32 1
  %insertElmt71 = insertelement <4 x i32> %insertElmt70, i32 %128, i32 2
  %insertElmt72 = insertelement <4 x i32> %insertElmt71, i32 %128, i32 3
  store <4 x i32> %insertElmt72, <4 x i32>* %allocaVec21, align 16
  %129 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop73 = shl <4 x i32> %129, <i32 5, i32 5, i32 5, i32 5>
  %130 = shl i32 %128, 5
  %131 = load i32, i32* %5, align 4
  %insertElmt74 = insertelement <4 x i32> undef, i32 %131, i32 0
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %131, i32 1
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %131, i32 2
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %131, i32 3
  store <4 x i32> %insertElmt77, <4 x i32>* %allocaVec21, align 16
  %132 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop78 = lshr <4 x i32> %132, <i32 27, i32 27, i32 27, i32 27>
  %133 = lshr i32 %131, 27
  %Vop79 = or <4 x i32> %Vop73, %Vop78
  %134 = or i32 %130, %133
  %135 = load i32, i32* %6, align 4
  %insertElmt80 = insertelement <4 x i32> undef, i32 %135, i32 0
  %insertElmt81 = insertelement <4 x i32> %insertElmt80, i32 %135, i32 1
  %insertElmt82 = insertelement <4 x i32> %insertElmt81, i32 %135, i32 2
  %insertElmt83 = insertelement <4 x i32> %insertElmt82, i32 %135, i32 3
  store <4 x i32> %insertElmt83, <4 x i32>* %allocaVec22, align 16
  %136 = load i32, i32* %7, align 4
  %insertElmt84 = insertelement <4 x i32> undef, i32 %136, i32 0
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %136, i32 1
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %136, i32 2
  %insertElmt87 = insertelement <4 x i32> %insertElmt86, i32 %136, i32 3
  store <4 x i32> %insertElmt87, <4 x i32>* %allocaVec23, align 16
  %137 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %138 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop88 = xor <4 x i32> %137, %138
  %139 = xor i32 %135, %136
  %140 = load i32, i32* %8, align 4
  %insertElmt89 = insertelement <4 x i32> undef, i32 %140, i32 0
  %insertElmt90 = insertelement <4 x i32> %insertElmt89, i32 %140, i32 1
  %insertElmt91 = insertelement <4 x i32> %insertElmt90, i32 %140, i32 2
  %insertElmt92 = insertelement <4 x i32> %insertElmt91, i32 %140, i32 3
  store <4 x i32> %insertElmt92, <4 x i32>* %allocaVec24, align 16
  %141 = load <4 x i32>, <4 x i32>* %allocaVec24, align 16
  %Vop93 = xor <4 x i32> %Vop88, %141
  %142 = xor i32 %139, %140
  %Vop94 = add <4 x i32> %Vop79, %Vop93
  %143 = add i32 %134, %142
  %144 = load i32, i32* %9, align 4
  %insertElmt95 = insertelement <4 x i32> undef, i32 %144, i32 0
  %insertElmt96 = insertelement <4 x i32> %insertElmt95, i32 %144, i32 1
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %144, i32 2
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %144, i32 3
  store <4 x i32> %insertElmt98, <4 x i32>* %allocaVec25, align 16
  %145 = load <4 x i32>, <4 x i32>* %allocaVec25, align 16
  %Vop99 = add <4 x i32> %Vop94, %145
  %146 = add i32 %143, %144
  %147 = load i32, i32* %3, align 4
  %148 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %147
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %146, %149
  %151 = add i32 %150, 1859775393
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %6, align 4
  %155 = shl i32 %154, 30
  %156 = load i32, i32* %6, align 4
  %157 = lshr i32 %156, 2
  %158 = or i32 %155, %157
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %5, align 4
  br label %161

; <label>:161:                                    ; preds = %127
  %162 = load i32, i32* %3, align 4
  %163 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop100 = add <4 x i32> %163, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop100, <4 x i32>* %allocaVec19
  %164 = add nsw i32 %162, 1
  store i32 %164, i32* %3, align 4
  br label %124

; <label>:165:                                    ; preds = %124
  store <4 x i32> <i32 40, i32 40, i32 40, i32 40>, <4 x i32>* %allocaVec19
  store i32 40, i32* %3, align 4
  br label %166

; <label>:166:                                    ; preds = %212, %165
  %167 = load i32, i32* %3, align 4
  %168 = icmp slt i32 %167, 60
  br i1 %168, label %169, label %216

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %5, align 4
  %insertElmt101 = insertelement <4 x i32> undef, i32 %170, i32 0
  %insertElmt102 = insertelement <4 x i32> %insertElmt101, i32 %170, i32 1
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %170, i32 2
  %insertElmt104 = insertelement <4 x i32> %insertElmt103, i32 %170, i32 3
  store <4 x i32> %insertElmt104, <4 x i32>* %allocaVec21, align 16
  %171 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop105 = shl <4 x i32> %171, <i32 5, i32 5, i32 5, i32 5>
  %172 = shl i32 %170, 5
  %173 = load i32, i32* %5, align 4
  %insertElmt106 = insertelement <4 x i32> undef, i32 %173, i32 0
  %insertElmt107 = insertelement <4 x i32> %insertElmt106, i32 %173, i32 1
  %insertElmt108 = insertelement <4 x i32> %insertElmt107, i32 %173, i32 2
  %insertElmt109 = insertelement <4 x i32> %insertElmt108, i32 %173, i32 3
  store <4 x i32> %insertElmt109, <4 x i32>* %allocaVec21, align 16
  %174 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop110 = lshr <4 x i32> %174, <i32 27, i32 27, i32 27, i32 27>
  %175 = lshr i32 %173, 27
  %Vop111 = or <4 x i32> %Vop105, %Vop110
  %176 = or i32 %172, %175
  %177 = load i32, i32* %6, align 4
  %insertElmt112 = insertelement <4 x i32> undef, i32 %177, i32 0
  %insertElmt113 = insertelement <4 x i32> %insertElmt112, i32 %177, i32 1
  %insertElmt114 = insertelement <4 x i32> %insertElmt113, i32 %177, i32 2
  %insertElmt115 = insertelement <4 x i32> %insertElmt114, i32 %177, i32 3
  store <4 x i32> %insertElmt115, <4 x i32>* %allocaVec22, align 16
  %178 = load i32, i32* %7, align 4
  %insertElmt116 = insertelement <4 x i32> undef, i32 %178, i32 0
  %insertElmt117 = insertelement <4 x i32> %insertElmt116, i32 %178, i32 1
  %insertElmt118 = insertelement <4 x i32> %insertElmt117, i32 %178, i32 2
  %insertElmt119 = insertelement <4 x i32> %insertElmt118, i32 %178, i32 3
  store <4 x i32> %insertElmt119, <4 x i32>* %allocaVec23, align 16
  %179 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %180 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop120 = and <4 x i32> %179, %180
  %181 = and i32 %177, %178
  %182 = load i32, i32* %6, align 4
  %insertElmt121 = insertelement <4 x i32> undef, i32 %182, i32 0
  %insertElmt122 = insertelement <4 x i32> %insertElmt121, i32 %182, i32 1
  %insertElmt123 = insertelement <4 x i32> %insertElmt122, i32 %182, i32 2
  %insertElmt124 = insertelement <4 x i32> %insertElmt123, i32 %182, i32 3
  store <4 x i32> %insertElmt124, <4 x i32>* %allocaVec22, align 16
  %183 = load i32, i32* %8, align 4
  %insertElmt125 = insertelement <4 x i32> undef, i32 %183, i32 0
  %insertElmt126 = insertelement <4 x i32> %insertElmt125, i32 %183, i32 1
  %insertElmt127 = insertelement <4 x i32> %insertElmt126, i32 %183, i32 2
  %insertElmt128 = insertelement <4 x i32> %insertElmt127, i32 %183, i32 3
  store <4 x i32> %insertElmt128, <4 x i32>* %allocaVec24, align 16
  %184 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %185 = load <4 x i32>, <4 x i32>* %allocaVec24, align 16
  %Vop129 = and <4 x i32> %184, %185
  %186 = and i32 %182, %183
  %Vop130 = or <4 x i32> %Vop120, %Vop129
  %187 = or i32 %181, %186
  %188 = load i32, i32* %7, align 4
  %insertElmt131 = insertelement <4 x i32> undef, i32 %188, i32 0
  %insertElmt132 = insertelement <4 x i32> %insertElmt131, i32 %188, i32 1
  %insertElmt133 = insertelement <4 x i32> %insertElmt132, i32 %188, i32 2
  %insertElmt134 = insertelement <4 x i32> %insertElmt133, i32 %188, i32 3
  store <4 x i32> %insertElmt134, <4 x i32>* %allocaVec23, align 16
  %189 = load i32, i32* %8, align 4
  %insertElmt135 = insertelement <4 x i32> undef, i32 %189, i32 0
  %insertElmt136 = insertelement <4 x i32> %insertElmt135, i32 %189, i32 1
  %insertElmt137 = insertelement <4 x i32> %insertElmt136, i32 %189, i32 2
  %insertElmt138 = insertelement <4 x i32> %insertElmt137, i32 %189, i32 3
  store <4 x i32> %insertElmt138, <4 x i32>* %allocaVec24, align 16
  %190 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %191 = load <4 x i32>, <4 x i32>* %allocaVec24, align 16
  %Vop139 = and <4 x i32> %190, %191
  %192 = and i32 %188, %189
  %Vop140 = or <4 x i32> %Vop130, %Vop139
  %193 = or i32 %187, %192
  %Vop141 = add <4 x i32> %Vop111, %Vop140
  %194 = add i32 %176, %193
  %195 = load i32, i32* %9, align 4
  %insertElmt142 = insertelement <4 x i32> undef, i32 %195, i32 0
  %insertElmt143 = insertelement <4 x i32> %insertElmt142, i32 %195, i32 1
  %insertElmt144 = insertelement <4 x i32> %insertElmt143, i32 %195, i32 2
  %insertElmt145 = insertelement <4 x i32> %insertElmt144, i32 %195, i32 3
  store <4 x i32> %insertElmt145, <4 x i32>* %allocaVec25, align 16
  %196 = load <4 x i32>, <4 x i32>* %allocaVec25, align 16
  %Vop146 = add <4 x i32> %Vop141, %196
  %197 = add i32 %194, %195
  %198 = load i32, i32* %3, align 4
  %199 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %198
  %200 = load i32, i32* %199, align 4
  %201 = add i32 %197, %200
  %202 = add i32 %201, -1894007588
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %6, align 4
  %206 = shl i32 %205, 30
  %207 = load i32, i32* %6, align 4
  %208 = lshr i32 %207, 2
  %209 = or i32 %206, %208
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %5, align 4
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %4, align 4
  store i32 %211, i32* %5, align 4
  br label %212

; <label>:212:                                    ; preds = %169
  %213 = load i32, i32* %3, align 4
  %214 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop147 = add <4 x i32> %214, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop147, <4 x i32>* %allocaVec19
  %215 = add nsw i32 %213, 1
  store i32 %215, i32* %3, align 4
  br label %166

; <label>:216:                                    ; preds = %166
  store <4 x i32> <i32 60, i32 60, i32 60, i32 60>, <4 x i32>* %allocaVec19
  store i32 60, i32* %3, align 4
  br label %217

; <label>:217:                                    ; preds = %263, %216
  %218 = load i32, i32* %3, align 4
  %219 = icmp slt i32 %218, 80
  br i1 %219, label %220, label %264

; <label>:220:                                    ; preds = %217
  %221 = load i32, i32* %5, align 4
  %insertElmt148 = insertelement <4 x i32> undef, i32 %221, i32 0
  %insertElmt149 = insertelement <4 x i32> %insertElmt148, i32 %221, i32 1
  %insertElmt150 = insertelement <4 x i32> %insertElmt149, i32 %221, i32 2
  %insertElmt151 = insertelement <4 x i32> %insertElmt150, i32 %221, i32 3
  store <4 x i32> %insertElmt151, <4 x i32>* %allocaVec21, align 16
  %222 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop152 = shl <4 x i32> %222, <i32 5, i32 5, i32 5, i32 5>
  %223 = shl i32 %221, 5
  %224 = load i32, i32* %5, align 4
  %insertElmt153 = insertelement <4 x i32> undef, i32 %224, i32 0
  %insertElmt154 = insertelement <4 x i32> %insertElmt153, i32 %224, i32 1
  %insertElmt155 = insertelement <4 x i32> %insertElmt154, i32 %224, i32 2
  %insertElmt156 = insertelement <4 x i32> %insertElmt155, i32 %224, i32 3
  store <4 x i32> %insertElmt156, <4 x i32>* %allocaVec21, align 16
  %225 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop157 = lshr <4 x i32> %225, <i32 27, i32 27, i32 27, i32 27>
  %226 = lshr i32 %224, 27
  %Vop158 = or <4 x i32> %Vop152, %Vop157
  %227 = or i32 %223, %226
  %228 = load i32, i32* %6, align 4
  %insertElmt159 = insertelement <4 x i32> undef, i32 %228, i32 0
  %insertElmt160 = insertelement <4 x i32> %insertElmt159, i32 %228, i32 1
  %insertElmt161 = insertelement <4 x i32> %insertElmt160, i32 %228, i32 2
  %insertElmt162 = insertelement <4 x i32> %insertElmt161, i32 %228, i32 3
  store <4 x i32> %insertElmt162, <4 x i32>* %allocaVec22, align 16
  %229 = load i32, i32* %7, align 4
  %insertElmt163 = insertelement <4 x i32> undef, i32 %229, i32 0
  %insertElmt164 = insertelement <4 x i32> %insertElmt163, i32 %229, i32 1
  %insertElmt165 = insertelement <4 x i32> %insertElmt164, i32 %229, i32 2
  %insertElmt166 = insertelement <4 x i32> %insertElmt165, i32 %229, i32 3
  store <4 x i32> %insertElmt166, <4 x i32>* %allocaVec23, align 16
  %230 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %231 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop167 = xor <4 x i32> %230, %231
  %232 = xor i32 %228, %229
  %233 = load i32, i32* %8, align 4
  %insertElmt168 = insertelement <4 x i32> undef, i32 %233, i32 0
  %insertElmt169 = insertelement <4 x i32> %insertElmt168, i32 %233, i32 1
  %insertElmt170 = insertelement <4 x i32> %insertElmt169, i32 %233, i32 2
  %insertElmt171 = insertelement <4 x i32> %insertElmt170, i32 %233, i32 3
  store <4 x i32> %insertElmt171, <4 x i32>* %allocaVec24, align 16
  %234 = load <4 x i32>, <4 x i32>* %allocaVec24, align 16
  %Vop172 = xor <4 x i32> %Vop167, %234
  %235 = xor i32 %232, %233
  %Vop173 = add <4 x i32> %Vop158, %Vop172
  %236 = add i32 %227, %235
  %237 = load i32, i32* %9, align 4
  %insertElmt174 = insertelement <4 x i32> undef, i32 %237, i32 0
  %insertElmt175 = insertelement <4 x i32> %insertElmt174, i32 %237, i32 1
  %insertElmt176 = insertelement <4 x i32> %insertElmt175, i32 %237, i32 2
  %insertElmt177 = insertelement <4 x i32> %insertElmt176, i32 %237, i32 3
  store <4 x i32> %insertElmt177, <4 x i32>* %allocaVec25, align 16
  %238 = load <4 x i32>, <4 x i32>* %allocaVec25, align 16
  %Vop178 = add <4 x i32> %Vop173, %238
  %239 = add i32 %236, %237
  %240 = load i32, i32* %3, align 4
  %241 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %240
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %239, %242
  %244 = add i32 %243, -899497514
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %6, align 4
  %248 = shl i32 %247, 30
  %249 = load i32, i32* %6, align 4
  %250 = lshr i32 %249, 2
  %251 = or i32 %248, %250
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %5, align 4
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %4, align 4
  store i32 %253, i32* %5, align 4
  br label %254

; <label>:254:                                    ; preds = %220
  %255 = load i32, i32* %3, align 4
  %256 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop179 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop179, <4 x i32>* %allocaVec19
  %257 = load <4 x i32>, <4 x i32>* %allocaVec19, align 4
  %extractE = extractelement <4 x i32> %257, i64 0
  %extractE180 = extractelement <4 x i32> %257, i64 1
  %extractE181 = extractelement <4 x i32> %257, i64 2
  %sum = add i32 %extractE, %extractE180
  %sum182 = add i32 %sum, %extractE181
  %258 = add nsw i32 %255, 1
  %Fmul = mul i32 %258, 3
  store i32 %258, i32* %Recovery4
  %Fcmp = icmp ne i32 %sum182, %Fmul
  br i1 %Fcmp, label %259, label %263

; <label>:259:                                    ; preds = %254
  %remThree = sdiv i32 %sum182, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %260, label %261

; <label>:260:                                    ; preds = %259
  store i32 %258, i32* %Recovery4, align 4
  br label %262

; <label>:261:                                    ; preds = %259
  store i32 %extractE, i32* %Recovery4, align 4
  br label %262

; <label>:262:                                    ; preds = %261, %260
  br label %263

; <label>:263:                                    ; preds = %254, %262
  %ReplaceInst = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %217

; <label>:264:                                    ; preds = %217
  %265 = load i32, i32* %5, align 4
  %insertElmt183 = insertelement <4 x i32> undef, i32 %265, i32 0
  %insertElmt184 = insertelement <4 x i32> %insertElmt183, i32 %265, i32 1
  %insertElmt185 = insertelement <4 x i32> %insertElmt184, i32 %265, i32 2
  %insertElmt186 = insertelement <4 x i32> %insertElmt185, i32 %265, i32 3
  store <4 x i32> %insertElmt186, <4 x i32>* %allocaVec21, align 16
  %266 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %267 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %266, i32 0, i32 0
  %268 = getelementptr inbounds [5 x i32], [5 x i32]* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, %265
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %273 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %272, i32 0, i32 0
  %274 = getelementptr inbounds [5 x i32], [5 x i32]* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add i32 %275, %271
  store i32 %276, i32* %274, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %279 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %278, i32 0, i32 0
  %280 = getelementptr inbounds [5 x i32], [5 x i32]* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, %277
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %285 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %284, i32 0, i32 0
  %286 = getelementptr inbounds [5 x i32], [5 x i32]* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, %283
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* %9, align 4
  %290 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %291 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %290, i32 0, i32 0
  %292 = getelementptr inbounds [5 x i32], [5 x i32]* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, %289
  store i32 %294, i32* %292, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @sha_final(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  %allocaVec = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %12, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %12, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %12, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %13 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = lshr <4 x i32> %13, <i32 3, i32 3, i32 3, i32 3>
  %14 = lshr i32 %12, 3
  %Vop6 = and <4 x i32> %Vop, <i32 63, i32 63, i32 63, i32 63>
  store <4 x i32> %Vop6, <4 x i32>* %allocaVec
  %15 = and i32 %14, 63
  store i32 %15, i32* %3, align 4
  %16 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %17 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %16, i32 0, i32 3
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %3, align 4
  %21 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop7 = add <4 x i32> %21, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop7, <4 x i32>* %allocaVec
  %22 = add nsw i32 %20, 1
  store i32 %22, i32* %3, align 4
  %23 = getelementptr inbounds i8, i8* %19, i32 %20
  store i8 -128, i8* %23, align 1
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 56
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %1
  %27 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %28 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %27, i32 0, i32 3
  %29 = bitcast [16 x i32]* %28 to i8*
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  %32 = load i32, i32* %3, align 4
  %33 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop8 = sub <4 x i32> <i32 64, i32 64, i32 64, i32 64>, %33
  %34 = sub nsw i32 64, %32
  call void @llvm.memset.p0i8.i32(i8* %31, i8 0, i32 %34, i32 1, i1 false)
  %35 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %35)
  %36 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %37 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %36, i32 0, i32 3
  %38 = bitcast [16 x i32]* %37 to i8*
  call void @llvm.memset.p0i8.i32(i8* %38, i8 0, i32 56, i32 4, i1 false)
  br label %48

; <label>:39:                                     ; preds = %1
  %40 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %41 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %40, i32 0, i32 3
  %42 = bitcast [16 x i32]* %41 to i8*
  %43 = load i32, i32* %3, align 4
  %44 = getelementptr inbounds i8, i8* %42, i32 %43
  %45 = load i32, i32* %3, align 4
  %46 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop9 = sub <4 x i32> <i32 56, i32 56, i32 56, i32 56>, %46
  %47 = sub nsw i32 56, %45
  call void @llvm.memset.p0i8.i32(i8* %44, i8 0, i32 %47, i32 1, i1 false)
  br label %48

; <label>:48:                                     ; preds = %39, %26
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %51 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %50, i32 0, i32 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i32 0, i32 14
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %55 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %54, i32 0, i32 3
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i32 0, i32 15
  store i32 %53, i32* %56, align 4
  %57 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %57)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind
define arm_aapcscc void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct.SHA_INFO*, align 4
  %4 = alloca %struct._IO_FILE*, align 4
  %allocaVec = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 1
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %3, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  call arm_aapcscc void @sha_init(%struct.SHA_INFO* %7)
  br label %8

; <label>:8:                                      ; preds = %13, %2
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %11 = call arm_aapcscc i32 @fread(i8* %9, i32 1, i32 8192, %struct._IO_FILE* %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %8
  %14 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  call arm_aapcscc void @sha_update(%struct.SHA_INFO* %14, i8* %15, i32 %16)
  br label %8

; <label>:17:                                     ; preds = %8
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  call arm_aapcscc void @sha_final(%struct.SHA_INFO* %18)
  ret void
}

declare arm_aapcscc i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @sha_print(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 0
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %11, i32 0, i32 0
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 0
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22)
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
