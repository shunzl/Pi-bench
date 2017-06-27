; ModuleID = 'small.bc'
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
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

; <label>:20:                                     ; preds = %45, %15
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
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %34, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt, i32 %34, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %34, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %34, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec6, align 16
  %35 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %36 = alloca i32, align 4
  %allocaCons = alloca <4 x i32>, align 16
  store i32 1, i32* %36
  %37 = load i32, i32* %36, align 4
  %insertCons = insertelement <4 x i32> undef, i32 %37, i32 0
  %insertCons10 = insertelement <4 x i32> %insertCons, i32 %37, i32 1
  %insertCons11 = insertelement <4 x i32> %insertCons10, i32 %37, i32 2
  %insertCons12 = insertelement <4 x i32> %insertCons11, i32 %37, i32 3
  store <4 x i32> %insertCons12, <4 x i32>* %allocaCons, align 4
  %38 = load <4 x i32>, <4 x i32>* %allocaCons, align 4
  %Vop = add <4 x i32> %35, %38
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %39 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %39, i64 0
  %extractE13 = extractelement <4 x i32> %39, i64 1
  %extractE14 = extractelement <4 x i32> %39, i64 2
  %sum = add i32 %extractE, %extractE13
  %sum15 = add i32 %sum, %extractE14
  %40 = add nsw i32 %34, 1
  %Fmul = mul i32 %40, 3
  store i32 %40, i32* %Recovery
  %Fcmp = icmp ne i32 %sum15, %Fmul
  br i1 %Fcmp, label %41, label %45

; <label>:41:                                     ; preds = %33
  %remThree = sdiv i32 %sum15, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %42, label %43

; <label>:42:                                     ; preds = %41
  store i32 %extractE, i32* %Recovery, align 4
  br label %44

; <label>:43:                                     ; preds = %41
  store i32 %40, i32* %Recovery, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %42
  br label %45

; <label>:45:                                     ; preds = %33, %44
  %46 = load i32, i32* %Recovery, align 4
  store i32 %46, i32* %9, align 4
  br label %20

; <label>:47:                                     ; preds = %31
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %49)
  %51 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 0
  %52 = bitcast %struct.myStringStruct* %51 to i8*
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  call void @qsort(i8* %52, i64 %54, i64 128, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %55

; <label>:55:                                     ; preds = %78, %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %62, i32 0, i32 0
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %63, i32 0, i32 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %64)
  br label %66

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %8, align 4
  %insertElmt16 = insertelement <4 x i32> undef, i32 %67, i32 0
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %67, i32 1
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %67, i32 2
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %67, i32 3
  store <4 x i32> %insertElmt19, <4 x i32>* %allocaVec5, align 16
  %68 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %69 = alloca i32, align 4
  %allocaCons20 = alloca <4 x i32>, align 16
  store i32 1, i32* %69
  %70 = load i32, i32* %69, align 4
  %insertCons21 = insertelement <4 x i32> undef, i32 %70, i32 0
  %insertCons22 = insertelement <4 x i32> %insertCons21, i32 %70, i32 1
  %insertCons23 = insertelement <4 x i32> %insertCons22, i32 %70, i32 2
  %insertCons24 = insertelement <4 x i32> %insertCons23, i32 %70, i32 3
  store <4 x i32> %insertCons24, <4 x i32>* %allocaCons20, align 4
  %71 = load <4 x i32>, <4 x i32>* %allocaCons20, align 4
  %Vop25 = add <4 x i32> %68, %71
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec5
  %72 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE27 = extractelement <4 x i32> %72, i64 0
  %extractE28 = extractelement <4 x i32> %72, i64 1
  %extractE29 = extractelement <4 x i32> %72, i64 2
  %sum30 = add i32 %extractE27, %extractE28
  %sum31 = add i32 %sum30, %extractE29
  %73 = add nsw i32 %67, 1
  %Fmul26 = mul i32 %73, 3
  store i32 %73, i32* %Recovery1
  %Fcmp32 = icmp ne i32 %sum31, %Fmul26
  br i1 %Fcmp32, label %74, label %78

; <label>:74:                                     ; preds = %66
  %remThree33 = sdiv i32 %sum31, %extractE27
  %FcmpThree34 = icmp ne i32 %remThree33, 3
  br i1 %FcmpThree34, label %75, label %76

; <label>:75:                                     ; preds = %74
  store i32 %extractE27, i32* %Recovery1, align 4
  br label %77

; <label>:76:                                     ; preds = %74
  store i32 %73, i32* %Recovery1, align 4
  br label %77

; <label>:77:                                     ; preds = %76, %75
  br label %78

; <label>:78:                                     ; preds = %66, %77
  %79 = load i32, i32* %Recovery1, align 4
  store i32 %79, i32* %8, align 4
  br label %55

; <label>:80:                                     ; preds = %55
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
