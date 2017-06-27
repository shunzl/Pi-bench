; ModuleID = 'all_small_t.bc'
source_filename = "dijkstra_small.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._IO_FILE = type opaque
%struct._NODE = type { i32, i32 }

@qHead = global %struct._QITEM* null, align 4
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = common global i32 0, align 4
@rgnNodes = common global [100 x %struct._NODE] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = common global i32 0, align 4
@iDist = common global i32 0, align 4
@iPrev = common global i32 0, align 4
@i = common global i32 0, align 4
@AdjMatrix = common global [100 x [100 x i32]] zeroinitializer, align 4
@iCost = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @print_path(%struct._NODE*, i32) #0 {
  %3 = alloca %struct._NODE*, align 4
  %allocaVec = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store %struct._NODE* %0, %struct._NODE** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._NODE*, %struct._NODE** %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct._NODE, %struct._NODE* %5, i32 %6
  %8 = getelementptr inbounds %struct._NODE, %struct._NODE* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 9999
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %2
  %12 = load %struct._NODE*, %struct._NODE** %3, align 4
  %13 = load %struct._NODE*, %struct._NODE** %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct._NODE, %struct._NODE* %13, i32 %14
  %16 = getelementptr inbounds %struct._NODE, %struct._NODE* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  call arm_aapcscc void @print_path(%struct._NODE* %12, i32 %17)
  br label %18

; <label>:18:                                     ; preds = %11, %2
  %19 = load i32, i32* %4, align 4
  %20 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %22 = call arm_aapcscc i32 @fflush(%struct._IO_FILE* %21)
  ret void
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @enqueue(i32, i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct._QITEM*, align 4
  %8 = alloca %struct._QITEM*, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call arm_aapcscc i8* @malloc(i32 16)
  %10 = bitcast i8* %9 to %struct._QITEM*
  store %struct._QITEM* %10, %struct._QITEM** %7, align 4
  %11 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  store %struct._QITEM* %11, %struct._QITEM** %8, align 4
  %12 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %13 = icmp ne %struct._QITEM* %12, null
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %16 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %20 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %23 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %26 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %28 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %27, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %28, align 4
  %29 = load %struct._QITEM*, %struct._QITEM** %8, align 4
  %30 = icmp ne %struct._QITEM* %29, null
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %17
  %32 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  store %struct._QITEM* %32, %struct._QITEM** @qHead, align 4
  br label %47

; <label>:33:                                     ; preds = %17
  br label %34

; <label>:34:                                     ; preds = %39, %33
  %35 = load %struct._QITEM*, %struct._QITEM** %8, align 4
  %36 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %35, i32 0, i32 3
  %37 = load %struct._QITEM*, %struct._QITEM** %36, align 4
  %38 = icmp ne %struct._QITEM* %37, null
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %34
  %40 = load %struct._QITEM*, %struct._QITEM** %8, align 4
  %41 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %40, i32 0, i32 3
  %42 = load %struct._QITEM*, %struct._QITEM** %41, align 4
  store %struct._QITEM* %42, %struct._QITEM** %8, align 4
  br label %34

; <label>:43:                                     ; preds = %34
  %44 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %45 = load %struct._QITEM*, %struct._QITEM** %8, align 4
  %46 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %45, i32 0, i32 3
  store %struct._QITEM* %44, %struct._QITEM** %46, align 4
  br label %47

; <label>:47:                                     ; preds = %43, %31
  %48 = load i32, i32* @g_qCount, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @g_qCount, align 4
  ret void
}

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc void @dequeue(i32*, i32*, i32*) #0 {
  %4 = alloca i32*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca %struct._QITEM*, align 4
  store i32* %0, i32** %4, align 4
  store i32* %1, i32** %5, align 4
  store i32* %2, i32** %6, align 4
  %8 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  store %struct._QITEM* %8, %struct._QITEM** %7, align 4
  %9 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  %10 = icmp ne %struct._QITEM* %9, null
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %3
  %12 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 4
  store i32 %14, i32* %15, align 4
  %16 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  %17 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  %21 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4
  %25 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %24, i32 0, i32 3
  %26 = load %struct._QITEM*, %struct._QITEM** %25, align 4
  store %struct._QITEM* %26, %struct._QITEM** @qHead, align 4
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 4
  %28 = call arm_aapcscc i32 bitcast (i32 (...)* @free to i32 (%struct._QITEM*)*)(%struct._QITEM* %27)
  %29 = load i32, i32* @g_qCount, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @g_qCount, align 4
  br label %31

; <label>:31:                                     ; preds = %11, %3
  ret void
}

declare arm_aapcscc i32 @free(...) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @qcount() #0 {
  %1 = load i32, i32* @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: nounwind
define arm_aapcscc i32 @dijkstra(i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @ch, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %2
  %7 = load i32, i32* @ch, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @ch, align 4
  %11 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %10
  %12 = getelementptr inbounds %struct._NODE, %struct._NODE* %11, i32 0, i32 0
  store i32 9999, i32* %12, align 4
  %13 = load i32, i32* @ch, align 4
  %14 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %13
  %15 = getelementptr inbounds %struct._NODE, %struct._NODE* %14, i32 0, i32 1
  store i32 9999, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* @ch, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @ch, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %19
  %24 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  br label %93

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %26
  %28 = getelementptr inbounds %struct._NODE, %struct._NODE* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %29
  %31 = getelementptr inbounds %struct._NODE, %struct._NODE* %30, i32 0, i32 1
  store i32 9999, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  call arm_aapcscc void @enqueue(i32 %32, i32 0, i32 9999)
  br label %33

; <label>:33:                                     ; preds = %83, %25
  %34 = call arm_aapcscc i32 @qcount()
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %84

; <label>:36:                                     ; preds = %33
  call arm_aapcscc void @dequeue(i32* @iNode, i32* @iDist, i32* @iPrev)
  store i32 0, i32* @i, align 4
  br label %37

; <label>:37:                                     ; preds = %80, %36
  %38 = load i32, i32* @i, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %83

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* @iNode, align 4
  %42 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i32 0, i32 %41
  %43 = load i32, i32* @i, align 4
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %42, i32 0, i32 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @iCost, align 4
  %46 = icmp ne i32 %45, 9999
  br i1 %46, label %47, label %79

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* @i, align 4
  %49 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %48
  %50 = getelementptr inbounds %struct._NODE, %struct._NODE* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 9999, %51
  br i1 %52, label %62, label %53

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* @i, align 4
  %55 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %54
  %56 = getelementptr inbounds %struct._NODE, %struct._NODE* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @iCost, align 4
  %59 = load i32, i32* @iDist, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %78

; <label>:62:                                     ; preds = %53, %47
  %63 = load i32, i32* @iDist, align 4
  %64 = load i32, i32* @iCost, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @i, align 4
  %67 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %66
  %68 = getelementptr inbounds %struct._NODE, %struct._NODE* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @iNode, align 4
  %70 = load i32, i32* @i, align 4
  %71 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %70
  %72 = getelementptr inbounds %struct._NODE, %struct._NODE* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @i, align 4
  %74 = load i32, i32* @iDist, align 4
  %75 = load i32, i32* @iCost, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @iNode, align 4
  call arm_aapcscc void @enqueue(i32 %73, i32 %76, i32 %77)
  br label %78

; <label>:78:                                     ; preds = %62, %53
  br label %79

; <label>:79:                                     ; preds = %78, %40
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* @i, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @i, align 4
  br label %37

; <label>:83:                                     ; preds = %37
  br label %33

; <label>:84:                                     ; preds = %33
  %85 = load i32, i32* %5, align 4
  %86 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 %85
  %87 = getelementptr inbounds %struct._NODE, %struct._NODE* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %88)
  %90 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %91 = load i32, i32* %5, align 4
  call arm_aapcscc void @print_path(%struct._NODE* getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 0), i32 %91)
  %92 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %93

; <label>:93:                                     ; preds = %84, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec3
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %14 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %16 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %12, %2
  %18 = load i8**, i8*** %5, align 4
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  %20 = load i8*, i8** %19, align 4
  %21 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** %9, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec5
  store i32 0, i32* %6, align 4
  br label %22

; <label>:22:                                     ; preds = %42, %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %46

; <label>:25:                                     ; preds = %22
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %7, align 4
  br label %26

; <label>:26:                                     ; preds = %37, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 100
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 4
  %31 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %8)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i32 0, i32 %33
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %34, i32 0, i32 %35
  store i32 %32, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %7, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %38, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt, i32 %38, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %38, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %38, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec6, align 16
  %39 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop = add <4 x i32> %39, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %40 = add nsw i32 %38, 1
  store i32 %40, i32* %7, align 4
  br label %26

; <label>:41:                                     ; preds = %26
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %6, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %43, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %43, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %43, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec5, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop15 = add <4 x i32> %44, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec5
  %45 = add nsw i32 %43, 1
  store i32 %45, i32* %6, align 4
  br label %22

; <label>:46:                                     ; preds = %22
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec5
  store i32 0, i32* %6, align 4
  store <4 x i32> <i32 50, i32 50, i32 50, i32 50>, <4 x i32>* %allocaVec6
  store i32 50, i32* %7, align 4
  br label %47

; <label>:47:                                     ; preds = %75, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 20
  br i1 %49, label %50, label %76

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop16 = srem <4 x i32> %52, <i32 100, i32 100, i32 100, i32 100>
  store <4 x i32> %Vop16, <4 x i32>* %allocaVec6
  %53 = srem i32 %51, 100
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call arm_aapcscc i32 @dijkstra(i32 %54, i32 %55)
  br label %57

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop17 = add <4 x i32> %59, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop17, <4 x i32>* %allocaVec5
  %60 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %60, i64 0
  %extractE18 = extractelement <4 x i32> %60, i64 1
  %extractE19 = extractelement <4 x i32> %60, i64 2
  %sum = add i32 %extractE, %extractE18
  %sum20 = add i32 %sum, %extractE19
  %61 = add nsw i32 %58, 1
  %Fmul = mul i32 %61, 3
  store i32 %61, i32* %Recovery
  %Fcmp = icmp ne i32 %sum20, %Fmul
  br i1 %Fcmp, label %62, label %66

; <label>:62:                                     ; preds = %57
  %remThree = sdiv i32 %sum20, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %63, label %64

; <label>:63:                                     ; preds = %62
  store i32 %61, i32* %Recovery, align 4
  br label %65

; <label>:64:                                     ; preds = %62
  store i32 %extractE, i32* %Recovery, align 4
  br label %65

; <label>:65:                                     ; preds = %64, %63
  br label %66

; <label>:66:                                     ; preds = %57, %65
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop21 = add <4 x i32> %68, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop21, <4 x i32>* %allocaVec6
  %69 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE23 = extractelement <4 x i32> %69, i64 0
  %extractE24 = extractelement <4 x i32> %69, i64 1
  %extractE25 = extractelement <4 x i32> %69, i64 2
  %sum26 = add i32 %extractE23, %extractE24
  %sum27 = add i32 %sum26, %extractE25
  %70 = add nsw i32 %67, 1
  %Fmul22 = mul i32 %70, 3
  store i32 %70, i32* %Recovery1
  %Fcmp28 = icmp ne i32 %sum27, %Fmul22
  br i1 %Fcmp28, label %71, label %75

; <label>:71:                                     ; preds = %66
  %remThree29 = sdiv i32 %sum27, %extractE23
  %FcmpThree30 = icmp ne i32 %remThree29, 3
  br i1 %FcmpThree30, label %72, label %73

; <label>:72:                                     ; preds = %71
  store i32 %70, i32* %Recovery1, align 4
  br label %74

; <label>:73:                                     ; preds = %71
  store i32 %extractE23, i32* %Recovery1, align 4
  br label %74

; <label>:74:                                     ; preds = %73, %72
  br label %75

; <label>:75:                                     ; preds = %66, %74
  %ReplaceInst31 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst31, i32* %7, align 4
  br label %47

; <label>:76:                                     ; preds = %47
  call arm_aapcscc void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
