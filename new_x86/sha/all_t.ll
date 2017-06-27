; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@stdin = external constant %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.SHA_INFO, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %12)
  call void @sha_print(%struct.SHA_INFO* %7)
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
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** %6, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %34)
  br label %40

; <label>:36:                                     ; preds = %25
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %37)
  call void @sha_print(%struct.SHA_INFO* %7)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* %38)
  br label %40

; <label>:40:                                     ; preds = %36, %32
  br label %14

; <label>:41:                                     ; preds = %23
  br label %42

; <label>:42:                                     ; preds = %41, %10
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @sha_init(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  store i64 1732584193, i64* %5, align 8
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 1
  store i64 4023233417, i64* %8, align 8
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 0
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  store i64 2562383102, i64* %11, align 8
  %12 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %13 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %12, i32 0, i32 0
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %13, i64 0, i64 3
  store i64 271733878, i64* %14, align 8
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i64 0, i64 4
  store i64 3285377520, i64* %17, align 8
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  ret void
}

; Function Attrs: nounwind
define void @sha_update(%struct.SHA_INFO*, i8*, i32) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec8 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec9 = alloca <4 x i64>, align 16
  %Recovery2 = alloca i64, align 8
  %allocaVec10 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec12 = alloca <4 x i64>, align 16
  %CastInst4 = alloca i64, align 4
  %CastInstVec5 = alloca <4 x i64>, align 16
  %allocaVec13 = alloca <4 x i64>, align 16
  %CastInst6 = alloca i64, align 4
  %CastInstVec7 = alloca <4 x i64>, align 16
  %4 = alloca %struct.SHA_INFO*, align 8
  %5 = alloca i8*, align 8
  %allocaVec14 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = shl i64 %11, 3
  %13 = add i64 %9, %12
  %14 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %3
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

; <label>:23:                                     ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %CastInst4
  %26 = load i64, i64* %CastInst4, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %26, i32 0
  %insertCast15 = insertelement <4 x i64> %insertCast, i64 %26, i32 1
  %insertCast16 = insertelement <4 x i64> %insertCast15, i64 %26, i32 2
  %insertCast17 = insertelement <4 x i64> %insertCast16, i64 %26, i32 3
  store <4 x i64> %insertCast17, <4 x i64>* %CastInstVec5, align 4
  %27 = load <4 x i64>, <4 x i64>* %CastInstVec5, align 4
  %Vop = shl <4 x i64> %27, <i64 3, i64 3, i64 3, i64 3>
  %28 = shl i64 %25, 3
  %29 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = lshr i64 %34, 29
  %36 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %37 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %40

; <label>:40:                                     ; preds = %60, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 64
  br i1 %42, label %43, label %61

; <label>:43:                                     ; preds = %40
  %44 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %44, i32 0, i32 3
  %46 = getelementptr inbounds [16 x i64], [16 x i64]* %45, i32 0, i32 0
  %47 = bitcast i64* %46 to i8*
  %48 = load i8*, i8** %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 64, i32 1, i1 false)
  %49 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  call void @sha_transform(%struct.SHA_INFO* %49)
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 64
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %52, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt, i32 %52, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %52, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %52, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec14, align 16
  %53 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop21 = sub <4 x i32> %53, <i32 64, i32 64, i32 64, i32 64>
  store <4 x i32> %Vop21, <4 x i32>* %allocaVec14
  %54 = load <4 x i32>, <4 x i32>* %allocaVec14, align 4
  %extractE = extractelement <4 x i32> %54, i64 0
  %extractE22 = extractelement <4 x i32> %54, i64 1
  %extractE23 = extractelement <4 x i32> %54, i64 2
  %sum = add i32 %extractE, %extractE22
  %sum24 = add i32 %sum, %extractE23
  %55 = sub nsw i32 %52, 64
  %Fmul = mul i32 %55, 3
  store i32 %55, i32* %Recovery3
  %Fcmp = icmp ne i32 %sum24, %Fmul
  br i1 %Fcmp, label %56, label %60

; <label>:56:                                     ; preds = %43
  %remThree = sdiv i32 %sum24, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i32 %55, i32* %Recovery3, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store i32 %extractE, i32* %Recovery3, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %43, %59
  %ReplaceInst = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst, i32* %6, align 4
  br label %40

; <label>:61:                                     ; preds = %40
  %62 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %63 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %62, i32 0, i32 3
  %64 = getelementptr inbounds [16 x i64], [16 x i64]* %63, i32 0, i32 0
  %65 = bitcast i64* %64 to i8*
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 %68, i32 1, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
define internal void @sha_transform(%struct.SHA_INFO*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec10 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec11 = alloca <4 x i64>, align 16
  %Recovery2 = alloca i64, align 8
  %allocaVec12 = alloca <4 x i64>, align 16
  %Recovery3 = alloca i64, align 8
  %allocaVec13 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i64>, align 16
  %Recovery5 = alloca i64, align 8
  %allocaVec15 = alloca <4 x i64>, align 16
  %Recovery6 = alloca i64, align 8
  %allocaVec16 = alloca <4 x i64>, align 16
  %Recovery7 = alloca i64, align 8
  %allocaVec17 = alloca <4 x i64>, align 16
  %Recovery8 = alloca i64, align 8
  %allocaVec18 = alloca <4 x i64>, align 16
  %Recovery9 = alloca i64, align 8
  %2 = alloca %struct.SHA_INFO*, align 8
  %allocaVec19 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec20 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  %allocaVec21 = alloca <4 x i64>, align 16
  %5 = alloca i64, align 8
  %allocaVec22 = alloca <4 x i64>, align 16
  %6 = alloca i64, align 8
  %allocaVec23 = alloca <4 x i64>, align 16
  %7 = alloca i64, align 8
  %allocaVec24 = alloca <4 x i64>, align 16
  %8 = alloca i64, align 8
  %allocaVec25 = alloca <4 x i64>, align 16
  %9 = alloca i64, align 8
  %10 = alloca [80 x i64], align 16
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec19
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %24, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %11
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %22
  store i64 %20, i64* %23, align 8
  br label %24

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %25, i32 0
  %insertElmt26 = insertelement <4 x i32> %insertElmt, i32 %25, i32 1
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %25, i32 2
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %25, i32 3
  store <4 x i32> %insertElmt28, <4 x i32>* %allocaVec19, align 16
  %26 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop = add <4 x i32> %26, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec19
  %27 = add nsw i32 %25, 1
  store i32 %27, i32* %3, align 4
  br label %11

; <label>:28:                                     ; preds = %11
  store <4 x i32> <i32 16, i32 16, i32 16, i32 16>, <4 x i32>* %allocaVec19
  store i32 16, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %60, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 80
  br i1 %31, label %32, label %64

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop29 = sub <4 x i32> %34, <i32 3, i32 3, i32 3, i32 3>
  %35 = sub nsw i32 %33, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = xor i64 %38, %43
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 14
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %44, %49
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %50, %55
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %58
  store i64 %56, i64* %59, align 8
  br label %60

; <label>:60:                                     ; preds = %32
  %61 = load i32, i32* %3, align 4
  %62 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop30 = add <4 x i32> %62, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop30, <4 x i32>* %allocaVec19
  %63 = add nsw i32 %61, 1
  store i32 %63, i32* %3, align 4
  br label %29

; <label>:64:                                     ; preds = %29
  %65 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %66 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %65, i32 0, i32 0
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %66, i64 0, i64 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %5, align 8
  %69 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %70 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %69, i32 0, i32 0
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %74 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %73, i32 0, i32 0
  %75 = getelementptr inbounds [5 x i64], [5 x i64]* %74, i64 0, i64 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  %77 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %78 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %77, i32 0, i32 0
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 3
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %82 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %81, i32 0, i32 0
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %82, i64 0, i64 4
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec19
  store i32 0, i32* %3, align 4
  br label %85

; <label>:85:                                     ; preds = %127, %64
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 20
  br i1 %87, label %88, label %131

; <label>:88:                                     ; preds = %85
  %89 = load i64, i64* %5, align 8
  %insertElmt31 = insertelement <4 x i64> undef, i64 %89, i32 0
  %insertElmt32 = insertelement <4 x i64> %insertElmt31, i64 %89, i32 1
  %insertElmt33 = insertelement <4 x i64> %insertElmt32, i64 %89, i32 2
  %insertElmt34 = insertelement <4 x i64> %insertElmt33, i64 %89, i32 3
  store <4 x i64> %insertElmt34, <4 x i64>* %allocaVec21, align 16
  %90 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop35 = shl <4 x i64> %90, <i64 5, i64 5, i64 5, i64 5>
  %91 = shl i64 %89, 5
  %92 = load i64, i64* %5, align 8
  %insertElmt36 = insertelement <4 x i64> undef, i64 %92, i32 0
  %insertElmt37 = insertelement <4 x i64> %insertElmt36, i64 %92, i32 1
  %insertElmt38 = insertelement <4 x i64> %insertElmt37, i64 %92, i32 2
  %insertElmt39 = insertelement <4 x i64> %insertElmt38, i64 %92, i32 3
  store <4 x i64> %insertElmt39, <4 x i64>* %allocaVec21, align 16
  %93 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop40 = lshr <4 x i64> %93, <i64 27, i64 27, i64 27, i64 27>
  %94 = lshr i64 %92, 27
  %Vop41 = or <4 x i64> %Vop35, %Vop40
  %95 = or i64 %91, %94
  %96 = load i64, i64* %6, align 8
  %insertElmt42 = insertelement <4 x i64> undef, i64 %96, i32 0
  %insertElmt43 = insertelement <4 x i64> %insertElmt42, i64 %96, i32 1
  %insertElmt44 = insertelement <4 x i64> %insertElmt43, i64 %96, i32 2
  %insertElmt45 = insertelement <4 x i64> %insertElmt44, i64 %96, i32 3
  store <4 x i64> %insertElmt45, <4 x i64>* %allocaVec22, align 16
  %97 = load i64, i64* %7, align 8
  %insertElmt46 = insertelement <4 x i64> undef, i64 %97, i32 0
  %insertElmt47 = insertelement <4 x i64> %insertElmt46, i64 %97, i32 1
  %insertElmt48 = insertelement <4 x i64> %insertElmt47, i64 %97, i32 2
  %insertElmt49 = insertelement <4 x i64> %insertElmt48, i64 %97, i32 3
  store <4 x i64> %insertElmt49, <4 x i64>* %allocaVec23, align 16
  %98 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %99 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %Vop50 = and <4 x i64> %98, %99
  %100 = and i64 %96, %97
  %101 = load i64, i64* %6, align 8
  %insertElmt51 = insertelement <4 x i64> undef, i64 %101, i32 0
  %insertElmt52 = insertelement <4 x i64> %insertElmt51, i64 %101, i32 1
  %insertElmt53 = insertelement <4 x i64> %insertElmt52, i64 %101, i32 2
  %insertElmt54 = insertelement <4 x i64> %insertElmt53, i64 %101, i32 3
  store <4 x i64> %insertElmt54, <4 x i64>* %allocaVec22, align 16
  %102 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop55 = xor <4 x i64> %102, <i64 -1, i64 -1, i64 -1, i64 -1>
  %103 = xor i64 %101, -1
  %104 = load i64, i64* %8, align 8
  %insertElmt56 = insertelement <4 x i64> undef, i64 %104, i32 0
  %insertElmt57 = insertelement <4 x i64> %insertElmt56, i64 %104, i32 1
  %insertElmt58 = insertelement <4 x i64> %insertElmt57, i64 %104, i32 2
  %insertElmt59 = insertelement <4 x i64> %insertElmt58, i64 %104, i32 3
  store <4 x i64> %insertElmt59, <4 x i64>* %allocaVec24, align 16
  %105 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  %Vop60 = and <4 x i64> %Vop55, %105
  %106 = and i64 %103, %104
  %Vop61 = or <4 x i64> %Vop50, %Vop60
  %107 = or i64 %100, %106
  %Vop62 = add <4 x i64> %Vop41, %Vop61
  %108 = add i64 %95, %107
  %109 = load i64, i64* %9, align 8
  %insertElmt63 = insertelement <4 x i64> undef, i64 %109, i32 0
  %insertElmt64 = insertelement <4 x i64> %insertElmt63, i64 %109, i32 1
  %insertElmt65 = insertelement <4 x i64> %insertElmt64, i64 %109, i32 2
  %insertElmt66 = insertelement <4 x i64> %insertElmt65, i64 %109, i32 3
  store <4 x i64> %insertElmt66, <4 x i64>* %allocaVec25, align 16
  %110 = load <4 x i64>, <4 x i64>* %allocaVec25, align 16
  %Vop67 = add <4 x i64> %Vop62, %110
  %111 = add i64 %108, %109
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %111, %115
  %117 = add i64 %116, 1518500249
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %7, align 8
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %6, align 8
  %121 = shl i64 %120, 30
  %122 = load i64, i64* %6, align 8
  %123 = lshr i64 %122, 2
  %124 = or i64 %121, %123
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %5, align 8
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %4, align 8
  store i64 %126, i64* %5, align 8
  br label %127

; <label>:127:                                    ; preds = %88
  %128 = load i32, i32* %3, align 4
  %129 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop68 = add <4 x i32> %129, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop68, <4 x i32>* %allocaVec19
  %130 = add nsw i32 %128, 1
  store i32 %130, i32* %3, align 4
  br label %85

; <label>:131:                                    ; preds = %85
  store <4 x i32> <i32 20, i32 20, i32 20, i32 20>, <4 x i32>* %allocaVec19
  store i32 20, i32* %3, align 4
  br label %132

; <label>:132:                                    ; preds = %170, %131
  %133 = load i32, i32* %3, align 4
  %134 = icmp slt i32 %133, 40
  br i1 %134, label %135, label %174

; <label>:135:                                    ; preds = %132
  %136 = load i64, i64* %5, align 8
  %insertElmt69 = insertelement <4 x i64> undef, i64 %136, i32 0
  %insertElmt70 = insertelement <4 x i64> %insertElmt69, i64 %136, i32 1
  %insertElmt71 = insertelement <4 x i64> %insertElmt70, i64 %136, i32 2
  %insertElmt72 = insertelement <4 x i64> %insertElmt71, i64 %136, i32 3
  store <4 x i64> %insertElmt72, <4 x i64>* %allocaVec21, align 16
  %137 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop73 = shl <4 x i64> %137, <i64 5, i64 5, i64 5, i64 5>
  %138 = shl i64 %136, 5
  %139 = load i64, i64* %5, align 8
  %insertElmt74 = insertelement <4 x i64> undef, i64 %139, i32 0
  %insertElmt75 = insertelement <4 x i64> %insertElmt74, i64 %139, i32 1
  %insertElmt76 = insertelement <4 x i64> %insertElmt75, i64 %139, i32 2
  %insertElmt77 = insertelement <4 x i64> %insertElmt76, i64 %139, i32 3
  store <4 x i64> %insertElmt77, <4 x i64>* %allocaVec21, align 16
  %140 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop78 = lshr <4 x i64> %140, <i64 27, i64 27, i64 27, i64 27>
  %141 = lshr i64 %139, 27
  %Vop79 = or <4 x i64> %Vop73, %Vop78
  %142 = or i64 %138, %141
  %143 = load i64, i64* %6, align 8
  %insertElmt80 = insertelement <4 x i64> undef, i64 %143, i32 0
  %insertElmt81 = insertelement <4 x i64> %insertElmt80, i64 %143, i32 1
  %insertElmt82 = insertelement <4 x i64> %insertElmt81, i64 %143, i32 2
  %insertElmt83 = insertelement <4 x i64> %insertElmt82, i64 %143, i32 3
  store <4 x i64> %insertElmt83, <4 x i64>* %allocaVec22, align 16
  %144 = load i64, i64* %7, align 8
  %insertElmt84 = insertelement <4 x i64> undef, i64 %144, i32 0
  %insertElmt85 = insertelement <4 x i64> %insertElmt84, i64 %144, i32 1
  %insertElmt86 = insertelement <4 x i64> %insertElmt85, i64 %144, i32 2
  %insertElmt87 = insertelement <4 x i64> %insertElmt86, i64 %144, i32 3
  store <4 x i64> %insertElmt87, <4 x i64>* %allocaVec23, align 16
  %145 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %146 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %Vop88 = xor <4 x i64> %145, %146
  %147 = xor i64 %143, %144
  %148 = load i64, i64* %8, align 8
  %insertElmt89 = insertelement <4 x i64> undef, i64 %148, i32 0
  %insertElmt90 = insertelement <4 x i64> %insertElmt89, i64 %148, i32 1
  %insertElmt91 = insertelement <4 x i64> %insertElmt90, i64 %148, i32 2
  %insertElmt92 = insertelement <4 x i64> %insertElmt91, i64 %148, i32 3
  store <4 x i64> %insertElmt92, <4 x i64>* %allocaVec24, align 16
  %149 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  %Vop93 = xor <4 x i64> %Vop88, %149
  %150 = xor i64 %147, %148
  %Vop94 = add <4 x i64> %Vop79, %Vop93
  %151 = add i64 %142, %150
  %152 = load i64, i64* %9, align 8
  %insertElmt95 = insertelement <4 x i64> undef, i64 %152, i32 0
  %insertElmt96 = insertelement <4 x i64> %insertElmt95, i64 %152, i32 1
  %insertElmt97 = insertelement <4 x i64> %insertElmt96, i64 %152, i32 2
  %insertElmt98 = insertelement <4 x i64> %insertElmt97, i64 %152, i32 3
  store <4 x i64> %insertElmt98, <4 x i64>* %allocaVec25, align 16
  %153 = load <4 x i64>, <4 x i64>* %allocaVec25, align 16
  %Vop99 = add <4 x i64> %Vop94, %153
  %154 = add i64 %151, %152
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %154, %158
  %160 = add i64 %159, 1859775393
  store i64 %160, i64* %4, align 8
  %161 = load i64, i64* %8, align 8
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %7, align 8
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* %6, align 8
  %164 = shl i64 %163, 30
  %165 = load i64, i64* %6, align 8
  %166 = lshr i64 %165, 2
  %167 = or i64 %164, %166
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %5, align 8
  store i64 %168, i64* %6, align 8
  %169 = load i64, i64* %4, align 8
  store i64 %169, i64* %5, align 8
  br label %170

; <label>:170:                                    ; preds = %135
  %171 = load i32, i32* %3, align 4
  %172 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop100 = add <4 x i32> %172, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop100, <4 x i32>* %allocaVec19
  %173 = add nsw i32 %171, 1
  store i32 %173, i32* %3, align 4
  br label %132

; <label>:174:                                    ; preds = %132
  store <4 x i32> <i32 40, i32 40, i32 40, i32 40>, <4 x i32>* %allocaVec19
  store i32 40, i32* %3, align 4
  br label %175

; <label>:175:                                    ; preds = %222, %174
  %176 = load i32, i32* %3, align 4
  %177 = icmp slt i32 %176, 60
  br i1 %177, label %178, label %226

; <label>:178:                                    ; preds = %175
  %179 = load i64, i64* %5, align 8
  %insertElmt101 = insertelement <4 x i64> undef, i64 %179, i32 0
  %insertElmt102 = insertelement <4 x i64> %insertElmt101, i64 %179, i32 1
  %insertElmt103 = insertelement <4 x i64> %insertElmt102, i64 %179, i32 2
  %insertElmt104 = insertelement <4 x i64> %insertElmt103, i64 %179, i32 3
  store <4 x i64> %insertElmt104, <4 x i64>* %allocaVec21, align 16
  %180 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop105 = shl <4 x i64> %180, <i64 5, i64 5, i64 5, i64 5>
  %181 = shl i64 %179, 5
  %182 = load i64, i64* %5, align 8
  %insertElmt106 = insertelement <4 x i64> undef, i64 %182, i32 0
  %insertElmt107 = insertelement <4 x i64> %insertElmt106, i64 %182, i32 1
  %insertElmt108 = insertelement <4 x i64> %insertElmt107, i64 %182, i32 2
  %insertElmt109 = insertelement <4 x i64> %insertElmt108, i64 %182, i32 3
  store <4 x i64> %insertElmt109, <4 x i64>* %allocaVec21, align 16
  %183 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop110 = lshr <4 x i64> %183, <i64 27, i64 27, i64 27, i64 27>
  %184 = lshr i64 %182, 27
  %Vop111 = or <4 x i64> %Vop105, %Vop110
  %185 = or i64 %181, %184
  %186 = load i64, i64* %6, align 8
  %insertElmt112 = insertelement <4 x i64> undef, i64 %186, i32 0
  %insertElmt113 = insertelement <4 x i64> %insertElmt112, i64 %186, i32 1
  %insertElmt114 = insertelement <4 x i64> %insertElmt113, i64 %186, i32 2
  %insertElmt115 = insertelement <4 x i64> %insertElmt114, i64 %186, i32 3
  store <4 x i64> %insertElmt115, <4 x i64>* %allocaVec22, align 16
  %187 = load i64, i64* %7, align 8
  %insertElmt116 = insertelement <4 x i64> undef, i64 %187, i32 0
  %insertElmt117 = insertelement <4 x i64> %insertElmt116, i64 %187, i32 1
  %insertElmt118 = insertelement <4 x i64> %insertElmt117, i64 %187, i32 2
  %insertElmt119 = insertelement <4 x i64> %insertElmt118, i64 %187, i32 3
  store <4 x i64> %insertElmt119, <4 x i64>* %allocaVec23, align 16
  %188 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %189 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %Vop120 = and <4 x i64> %188, %189
  %190 = and i64 %186, %187
  %191 = load i64, i64* %6, align 8
  %insertElmt121 = insertelement <4 x i64> undef, i64 %191, i32 0
  %insertElmt122 = insertelement <4 x i64> %insertElmt121, i64 %191, i32 1
  %insertElmt123 = insertelement <4 x i64> %insertElmt122, i64 %191, i32 2
  %insertElmt124 = insertelement <4 x i64> %insertElmt123, i64 %191, i32 3
  store <4 x i64> %insertElmt124, <4 x i64>* %allocaVec22, align 16
  %192 = load i64, i64* %8, align 8
  %insertElmt125 = insertelement <4 x i64> undef, i64 %192, i32 0
  %insertElmt126 = insertelement <4 x i64> %insertElmt125, i64 %192, i32 1
  %insertElmt127 = insertelement <4 x i64> %insertElmt126, i64 %192, i32 2
  %insertElmt128 = insertelement <4 x i64> %insertElmt127, i64 %192, i32 3
  store <4 x i64> %insertElmt128, <4 x i64>* %allocaVec24, align 16
  %193 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %194 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  %Vop129 = and <4 x i64> %193, %194
  %195 = and i64 %191, %192
  %Vop130 = or <4 x i64> %Vop120, %Vop129
  %196 = or i64 %190, %195
  %197 = load i64, i64* %7, align 8
  %insertElmt131 = insertelement <4 x i64> undef, i64 %197, i32 0
  %insertElmt132 = insertelement <4 x i64> %insertElmt131, i64 %197, i32 1
  %insertElmt133 = insertelement <4 x i64> %insertElmt132, i64 %197, i32 2
  %insertElmt134 = insertelement <4 x i64> %insertElmt133, i64 %197, i32 3
  store <4 x i64> %insertElmt134, <4 x i64>* %allocaVec23, align 16
  %198 = load i64, i64* %8, align 8
  %insertElmt135 = insertelement <4 x i64> undef, i64 %198, i32 0
  %insertElmt136 = insertelement <4 x i64> %insertElmt135, i64 %198, i32 1
  %insertElmt137 = insertelement <4 x i64> %insertElmt136, i64 %198, i32 2
  %insertElmt138 = insertelement <4 x i64> %insertElmt137, i64 %198, i32 3
  store <4 x i64> %insertElmt138, <4 x i64>* %allocaVec24, align 16
  %199 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %200 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  %Vop139 = and <4 x i64> %199, %200
  %201 = and i64 %197, %198
  %Vop140 = or <4 x i64> %Vop130, %Vop139
  %202 = or i64 %196, %201
  %Vop141 = add <4 x i64> %Vop111, %Vop140
  %203 = add i64 %185, %202
  %204 = load i64, i64* %9, align 8
  %insertElmt142 = insertelement <4 x i64> undef, i64 %204, i32 0
  %insertElmt143 = insertelement <4 x i64> %insertElmt142, i64 %204, i32 1
  %insertElmt144 = insertelement <4 x i64> %insertElmt143, i64 %204, i32 2
  %insertElmt145 = insertelement <4 x i64> %insertElmt144, i64 %204, i32 3
  store <4 x i64> %insertElmt145, <4 x i64>* %allocaVec25, align 16
  %205 = load <4 x i64>, <4 x i64>* %allocaVec25, align 16
  %Vop146 = add <4 x i64> %Vop141, %205
  %206 = add i64 %203, %204
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = add i64 %206, %210
  %212 = add i64 %211, 2400959708
  store i64 %212, i64* %4, align 8
  %213 = load i64, i64* %8, align 8
  store i64 %213, i64* %9, align 8
  %214 = load i64, i64* %7, align 8
  store i64 %214, i64* %8, align 8
  %215 = load i64, i64* %6, align 8
  %216 = shl i64 %215, 30
  %217 = load i64, i64* %6, align 8
  %218 = lshr i64 %217, 2
  %219 = or i64 %216, %218
  store i64 %219, i64* %7, align 8
  %220 = load i64, i64* %5, align 8
  store i64 %220, i64* %6, align 8
  %221 = load i64, i64* %4, align 8
  store i64 %221, i64* %5, align 8
  br label %222

; <label>:222:                                    ; preds = %178
  %223 = load i32, i32* %3, align 4
  %224 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop147 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop147, <4 x i32>* %allocaVec19
  %225 = add nsw i32 %223, 1
  store i32 %225, i32* %3, align 4
  br label %175

; <label>:226:                                    ; preds = %175
  store <4 x i32> <i32 60, i32 60, i32 60, i32 60>, <4 x i32>* %allocaVec19
  store i32 60, i32* %3, align 4
  br label %227

; <label>:227:                                    ; preds = %274, %226
  %228 = load i32, i32* %3, align 4
  %229 = icmp slt i32 %228, 80
  br i1 %229, label %230, label %275

; <label>:230:                                    ; preds = %227
  %231 = load i64, i64* %5, align 8
  %insertElmt148 = insertelement <4 x i64> undef, i64 %231, i32 0
  %insertElmt149 = insertelement <4 x i64> %insertElmt148, i64 %231, i32 1
  %insertElmt150 = insertelement <4 x i64> %insertElmt149, i64 %231, i32 2
  %insertElmt151 = insertelement <4 x i64> %insertElmt150, i64 %231, i32 3
  store <4 x i64> %insertElmt151, <4 x i64>* %allocaVec21, align 16
  %232 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop152 = shl <4 x i64> %232, <i64 5, i64 5, i64 5, i64 5>
  %233 = shl i64 %231, 5
  %234 = load i64, i64* %5, align 8
  %insertElmt153 = insertelement <4 x i64> undef, i64 %234, i32 0
  %insertElmt154 = insertelement <4 x i64> %insertElmt153, i64 %234, i32 1
  %insertElmt155 = insertelement <4 x i64> %insertElmt154, i64 %234, i32 2
  %insertElmt156 = insertelement <4 x i64> %insertElmt155, i64 %234, i32 3
  store <4 x i64> %insertElmt156, <4 x i64>* %allocaVec21, align 16
  %235 = load <4 x i64>, <4 x i64>* %allocaVec21, align 16
  %Vop157 = lshr <4 x i64> %235, <i64 27, i64 27, i64 27, i64 27>
  %236 = lshr i64 %234, 27
  %Vop158 = or <4 x i64> %Vop152, %Vop157
  %237 = or i64 %233, %236
  %238 = load i64, i64* %6, align 8
  %insertElmt159 = insertelement <4 x i64> undef, i64 %238, i32 0
  %insertElmt160 = insertelement <4 x i64> %insertElmt159, i64 %238, i32 1
  %insertElmt161 = insertelement <4 x i64> %insertElmt160, i64 %238, i32 2
  %insertElmt162 = insertelement <4 x i64> %insertElmt161, i64 %238, i32 3
  store <4 x i64> %insertElmt162, <4 x i64>* %allocaVec22, align 16
  %239 = load i64, i64* %7, align 8
  %insertElmt163 = insertelement <4 x i64> undef, i64 %239, i32 0
  %insertElmt164 = insertelement <4 x i64> %insertElmt163, i64 %239, i32 1
  %insertElmt165 = insertelement <4 x i64> %insertElmt164, i64 %239, i32 2
  %insertElmt166 = insertelement <4 x i64> %insertElmt165, i64 %239, i32 3
  store <4 x i64> %insertElmt166, <4 x i64>* %allocaVec23, align 16
  %240 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %241 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %Vop167 = xor <4 x i64> %240, %241
  %242 = xor i64 %238, %239
  %243 = load i64, i64* %8, align 8
  %insertElmt168 = insertelement <4 x i64> undef, i64 %243, i32 0
  %insertElmt169 = insertelement <4 x i64> %insertElmt168, i64 %243, i32 1
  %insertElmt170 = insertelement <4 x i64> %insertElmt169, i64 %243, i32 2
  %insertElmt171 = insertelement <4 x i64> %insertElmt170, i64 %243, i32 3
  store <4 x i64> %insertElmt171, <4 x i64>* %allocaVec24, align 16
  %244 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  %Vop172 = xor <4 x i64> %Vop167, %244
  %245 = xor i64 %242, %243
  %Vop173 = add <4 x i64> %Vop158, %Vop172
  %246 = add i64 %237, %245
  %247 = load i64, i64* %9, align 8
  %insertElmt174 = insertelement <4 x i64> undef, i64 %247, i32 0
  %insertElmt175 = insertelement <4 x i64> %insertElmt174, i64 %247, i32 1
  %insertElmt176 = insertelement <4 x i64> %insertElmt175, i64 %247, i32 2
  %insertElmt177 = insertelement <4 x i64> %insertElmt176, i64 %247, i32 3
  store <4 x i64> %insertElmt177, <4 x i64>* %allocaVec25, align 16
  %248 = load <4 x i64>, <4 x i64>* %allocaVec25, align 16
  %Vop178 = add <4 x i64> %Vop173, %248
  %249 = add i64 %246, %247
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [80 x i64], [80 x i64]* %10, i64 0, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %249, %253
  %255 = add i64 %254, 3395469782
  store i64 %255, i64* %4, align 8
  %256 = load i64, i64* %8, align 8
  store i64 %256, i64* %9, align 8
  %257 = load i64, i64* %7, align 8
  store i64 %257, i64* %8, align 8
  %258 = load i64, i64* %6, align 8
  %259 = shl i64 %258, 30
  %260 = load i64, i64* %6, align 8
  %261 = lshr i64 %260, 2
  %262 = or i64 %259, %261
  store i64 %262, i64* %7, align 8
  %263 = load i64, i64* %5, align 8
  store i64 %263, i64* %6, align 8
  %264 = load i64, i64* %4, align 8
  store i64 %264, i64* %5, align 8
  br label %265

; <label>:265:                                    ; preds = %230
  %266 = load i32, i32* %3, align 4
  %267 = load <4 x i32>, <4 x i32>* %allocaVec19, align 16
  %Vop179 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop179, <4 x i32>* %allocaVec19
  %268 = load <4 x i32>, <4 x i32>* %allocaVec19, align 4
  %extractE = extractelement <4 x i32> %268, i64 0
  %extractE180 = extractelement <4 x i32> %268, i64 1
  %extractE181 = extractelement <4 x i32> %268, i64 2
  %sum = add i32 %extractE, %extractE180
  %sum182 = add i32 %sum, %extractE181
  %269 = add nsw i32 %266, 1
  %Fmul = mul i32 %269, 3
  store i32 %269, i32* %Recovery4
  %Fcmp = icmp ne i32 %sum182, %Fmul
  br i1 %Fcmp, label %270, label %274

; <label>:270:                                    ; preds = %265
  %remThree = sdiv i32 %sum182, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %271, label %272

; <label>:271:                                    ; preds = %270
  store i32 %269, i32* %Recovery4, align 4
  br label %273

; <label>:272:                                    ; preds = %270
  store i32 %extractE, i32* %Recovery4, align 4
  br label %273

; <label>:273:                                    ; preds = %272, %271
  br label %274

; <label>:274:                                    ; preds = %265, %273
  %ReplaceInst = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %227

; <label>:275:                                    ; preds = %227
  %276 = load i64, i64* %5, align 8
  %insertElmt183 = insertelement <4 x i64> undef, i64 %276, i32 0
  %insertElmt184 = insertelement <4 x i64> %insertElmt183, i64 %276, i32 1
  %insertElmt185 = insertelement <4 x i64> %insertElmt184, i64 %276, i32 2
  %insertElmt186 = insertelement <4 x i64> %insertElmt185, i64 %276, i32 3
  store <4 x i64> %insertElmt186, <4 x i64>* %allocaVec21, align 16
  %277 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %278 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %277, i32 0, i32 0
  %279 = getelementptr inbounds [5 x i64], [5 x i64]* %278, i64 0, i64 0
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, %276
  store i64 %281, i64* %279, align 8
  %282 = load i64, i64* %6, align 8
  %283 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %284 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %283, i32 0, i32 0
  %285 = getelementptr inbounds [5 x i64], [5 x i64]* %284, i64 0, i64 1
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, %282
  store i64 %287, i64* %285, align 8
  %288 = load i64, i64* %7, align 8
  %289 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %290 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %289, i32 0, i32 0
  %291 = getelementptr inbounds [5 x i64], [5 x i64]* %290, i64 0, i64 2
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, %288
  store i64 %293, i64* %291, align 8
  %294 = load i64, i64* %8, align 8
  %295 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %296 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %295, i32 0, i32 0
  %297 = getelementptr inbounds [5 x i64], [5 x i64]* %296, i64 0, i64 3
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, %294
  store i64 %299, i64* %297, align 8
  %300 = load i64, i64* %9, align 8
  %301 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %302 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %301, i32 0, i32 0
  %303 = getelementptr inbounds [5 x i64], [5 x i64]* %302, i64 0, i64 4
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %304, %300
  store i64 %305, i64* %303, align 8
  ret void
}

; Function Attrs: nounwind
define void @sha_final(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  %allocaVec = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  %allocaVec2 = alloca <4 x i64>, align 16
  %5 = alloca i64, align 8
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %12, i32 0
  %insertElmt3 = insertelement <4 x i64> %insertElmt, i64 %12, i32 1
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %12, i32 2
  %insertElmt5 = insertelement <4 x i64> %insertElmt4, i64 %12, i32 3
  store <4 x i64> %insertElmt5, <4 x i64>* %allocaVec1, align 16
  %13 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop = lshr <4 x i64> %13, <i64 3, i64 3, i64 3, i64 3>
  %14 = lshr i64 %12, 3
  %Vop6 = and <4 x i64> %Vop, <i64 63, i64 63, i64 63, i64 63>
  %15 = and i64 %14, 63
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %18 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %17, i32 0, i32 3
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %18, i32 0, i32 0
  %20 = bitcast i64* %19 to i8*
  %21 = load i32, i32* %3, align 4
  %insertElmt7 = insertelement <4 x i32> undef, i32 %21, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %21, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %21, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %21, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec, align 16
  %22 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop11 = add <4 x i32> %22, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop11, <4 x i32>* %allocaVec
  %23 = add nsw i32 %21, 1
  store i32 %23, i32* %3, align 4
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8 -128, i8* %25, align 1
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 56
  br i1 %27, label %28, label %43

; <label>:28:                                     ; preds = %1
  %29 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %29, i32 0, i32 3
  %31 = bitcast [16 x i64]* %30 to i8*
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %3, align 4
  %36 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop12 = sub <4 x i32> <i32 64, i32 64, i32 64, i32 64>, %36
  %37 = sub nsw i32 64, %35
  %38 = sext i32 %37 to i64
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 %38, i32 1, i1 false)
  %39 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  call void @sha_transform(%struct.SHA_INFO* %39)
  %40 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %41 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %40, i32 0, i32 3
  %42 = bitcast [16 x i64]* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 56, i32 8, i1 false)
  br label %54

; <label>:43:                                     ; preds = %1
  %44 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %44, i32 0, i32 3
  %46 = bitcast [16 x i64]* %45 to i8*
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %3, align 4
  %51 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop13 = sub <4 x i32> <i32 56, i32 56, i32 56, i32 56>, %51
  %52 = sub nsw i32 56, %50
  %53 = sext i32 %52 to i64
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 %53, i32 1, i1 false)
  br label %54

; <label>:54:                                     ; preds = %43, %28
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %57 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %56, i32 0, i32 3
  %58 = getelementptr inbounds [16 x i64], [16 x i64]* %57, i64 0, i64 14
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %61 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %60, i32 0, i32 3
  %62 = getelementptr inbounds [16 x i64], [16 x i64]* %61, i64 0, i64 15
  store i64 %59, i64* %62, align 8
  %63 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  call void @sha_transform(%struct.SHA_INFO* %63)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
define void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct.SHA_INFO*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %allocaVec = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  call void @sha_init(%struct.SHA_INFO* %7)
  br label %8

; <label>:8:                                      ; preds = %14, %2
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %11 = call i64 @fread(i8* %9, i64 1, i64 8192, %struct._IO_FILE* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %8
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  %16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  call void @sha_update(%struct.SHA_INFO* %15, i8* %16, i32 %17)
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  call void @sha_final(%struct.SHA_INFO* %19)
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @sha_print(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 0
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %11, i32 0, i32 0
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i64 0, i64 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 0
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 %6, i64 %10, i64 %14, i64 %18, i64 %22)
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
