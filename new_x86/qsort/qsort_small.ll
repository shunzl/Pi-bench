; ModuleID = 'qsort_small.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [60000 x %struct.myStringStruct], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
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

; <label>:20:                                     ; preds = %33, %15
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
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %20

; <label>:36:                                     ; preds = %31
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %38)
  %40 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 0
  %41 = bitcast %struct.myStringStruct* %40 to i8*
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  call void @qsort(i8* %41, i64 %43, i64 128, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %44

; <label>:44:                                     ; preds = %55, %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %51, i32 0, i32 0
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %52, i32 0, i32 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %53)
  br label %55

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %44

; <label>:58:                                     ; preds = %44
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
