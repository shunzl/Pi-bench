; ModuleID = 'all_small_t.bc'
source_filename = "qsort_small.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.myStringStruct = type { [128 x i8] }

@stderr = external constant %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind
define i32 @compare(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %allocaVec = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.myStringStruct*
  %8 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %7, i32 0, i32 0
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.myStringStruct*
  %12 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %11, i32 0, i32 0
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0
  %14 = call i32 @strcmp(i8* %9, i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  br label %22

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -1
  br label %22

; <label>:22:                                     ; preds = %18, %17
  %23 = phi i32 [ 1, %17 ], [ %21, %18 ]
  ret i32 %23
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [60000 x %struct.myStringStruct], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec3
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #3
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8
  br label %20

; <label>:20:                                     ; preds = %42, %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %24, i32 0, i32 0
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [128 x i8]* %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 60000
  br label %31

; <label>:31:                                     ; preds = %28, %20
  %32 = phi i1 [ false, %20 ], [ %30, %28 ]
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %34, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt, i32 %34, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %34, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %34, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec6, align 16
  %35 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop = add <4 x i32> %35, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %36 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %36, i64 0
  %extractE10 = extractelement <4 x i32> %36, i64 1
  %extractE11 = extractelement <4 x i32> %36, i64 2
  %sum = add i32 %extractE, %extractE10
  %sum12 = add i32 %sum, %extractE11
  %37 = add nsw i32 %34, 1
  %Fmul = mul i32 %37, 3
  store i32 %37, i32* %Recovery
  %Fcmp = icmp ne i32 %sum12, %Fmul
  br i1 %Fcmp, label %38, label %42

; <label>:38:                                     ; preds = %33
  %remThree = sdiv i32 %sum12, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %39, label %40

; <label>:39:                                     ; preds = %38
  store i32 %37, i32* %Recovery, align 4
  br label %41

; <label>:40:                                     ; preds = %38
  store i32 %extractE, i32* %Recovery, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %39
  br label %42

; <label>:42:                                     ; preds = %33, %41
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %9, align 4
  br label %20

; <label>:43:                                     ; preds = %31
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %45)
  %47 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 0
  %48 = bitcast %struct.myStringStruct* %47 to i8*
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  call void @qsort(i8* %48, i64 %50, i64 128, i32 (i8*, i8*)* @compare)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec5
  store i32 0, i32* %8, align 4
  br label %51

; <label>:51:                                     ; preds = %71, %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %58, i32 0, i32 0
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %59, i32 0, i32 0
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %60)
  br label %62

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* %8, align 4
  %insertElmt13 = insertelement <4 x i32> undef, i32 %63, i32 0
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %63, i32 1
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %63, i32 2
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %63, i32 3
  store <4 x i32> %insertElmt16, <4 x i32>* %allocaVec5, align 16
  %64 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop17 = add <4 x i32> %64, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop17, <4 x i32>* %allocaVec5
  %65 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE19 = extractelement <4 x i32> %65, i64 0
  %extractE20 = extractelement <4 x i32> %65, i64 1
  %extractE21 = extractelement <4 x i32> %65, i64 2
  %sum22 = add i32 %extractE19, %extractE20
  %sum23 = add i32 %sum22, %extractE21
  %66 = add nsw i32 %63, 1
  %Fmul18 = mul i32 %66, 3
  store i32 %66, i32* %Recovery1
  %Fcmp24 = icmp ne i32 %sum23, %Fmul18
  br i1 %Fcmp24, label %67, label %71

; <label>:67:                                     ; preds = %62
  %remThree25 = sdiv i32 %sum23, %extractE19
  %FcmpThree26 = icmp ne i32 %remThree25, 3
  br i1 %FcmpThree26, label %68, label %69

; <label>:68:                                     ; preds = %67
  store i32 %66, i32* %Recovery1, align 4
  br label %70

; <label>:69:                                     ; preds = %67
  store i32 %extractE19, i32* %Recovery1, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %68
  br label %71

; <label>:71:                                     ; preds = %62, %70
  %ReplaceInst27 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst27, i32* %8, align 4
  br label %51

; <label>:72:                                     ; preds = %51
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
