; ModuleID = 'all_large_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.myStringStruct = type { [128 x i8] }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @compare(i8*, i8*) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %allocaVec = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = bitcast i8* %6 to %struct.myStringStruct*
  %8 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %7, i32 0, i32 0
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %10 = load i8*, i8** %4, align 4
  %11 = bitcast i8* %10 to %struct.myStringStruct*
  %12 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %11, i32 0, i32 0
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0
  %14 = call arm_aapcscc i32 @strcmp(i8* %9, i8* %13)
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

declare arm_aapcscc i32 @strcmp(i8*, i8*) #1

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
  %6 = alloca [60000 x %struct.myStringStruct], align 1
  %7 = alloca %struct._IO_FILE*, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %14 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #3
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = load i8**, i8*** %5, align 4
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  %18 = load i8*, i8** %17, align 4
  %19 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 4
  br label %20

; <label>:20:                                     ; preds = %41, %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 %22
  %24 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %23, i32 0, i32 0
  %25 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [128 x i8]* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 60000
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i1 [ false, %20 ], [ %29, %27 ]
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %30
  %33 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %33, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt, i32 %33, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %33, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %33, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec6, align 16
  %34 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop = add <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %35 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %35, i64 0
  %extractE10 = extractelement <4 x i32> %35, i64 1
  %extractE11 = extractelement <4 x i32> %35, i64 2
  %sum = add i32 %extractE, %extractE10
  %sum12 = add i32 %sum, %extractE11
  %36 = add nsw i32 %33, 1
  %Fmul = mul i32 %36, 3
  store i32 %36, i32* %Recovery
  %Fcmp = icmp ne i32 %sum12, %Fmul
  br i1 %Fcmp, label %37, label %41

; <label>:37:                                     ; preds = %32
  %remThree = sdiv i32 %sum12, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %38, label %39

; <label>:38:                                     ; preds = %37
  store i32 %36, i32* %Recovery, align 4
  br label %40

; <label>:39:                                     ; preds = %37
  store i32 %extractE, i32* %Recovery, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %38
  br label %41

; <label>:41:                                     ; preds = %32, %40
  %42 = load i32, i32* %Recovery, align 4
  store i32 %42, i32* %9, align 4
  br label %20

; <label>:43:                                     ; preds = %30
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %45)
  %47 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 0
  %48 = bitcast %struct.myStringStruct* %47 to i8*
  %49 = load i32, i32* %9, align 4
  call arm_aapcscc void @qsort(i8* %48, i32 %49, i32 128, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %50

; <label>:50:                                     ; preds = %69, %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %6, i32 0, i32 %55
  %57 = getelementptr inbounds %struct.myStringStruct, %struct.myStringStruct* %56, i32 0, i32 0
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %57, i32 0, i32 0
  %59 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %58)
  br label %60

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %8, align 4
  %insertElmt13 = insertelement <4 x i32> undef, i32 %61, i32 0
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %61, i32 1
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %61, i32 2
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %61, i32 3
  store <4 x i32> %insertElmt16, <4 x i32>* %allocaVec5, align 16
  %62 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop17 = add <4 x i32> %62, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop17, <4 x i32>* %allocaVec5
  %63 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE19 = extractelement <4 x i32> %63, i64 0
  %extractE20 = extractelement <4 x i32> %63, i64 1
  %extractE21 = extractelement <4 x i32> %63, i64 2
  %sum22 = add i32 %extractE19, %extractE20
  %sum23 = add i32 %sum22, %extractE21
  %64 = add nsw i32 %61, 1
  %Fmul18 = mul i32 %64, 3
  store i32 %64, i32* %Recovery1
  %Fcmp24 = icmp ne i32 %sum23, %Fmul18
  br i1 %Fcmp24, label %65, label %69

; <label>:65:                                     ; preds = %60
  %remThree25 = sdiv i32 %sum23, %extractE19
  %FcmpThree26 = icmp ne i32 %remThree25, 3
  br i1 %FcmpThree26, label %66, label %67

; <label>:66:                                     ; preds = %65
  store i32 %64, i32* %Recovery1, align 4
  br label %68

; <label>:67:                                     ; preds = %65
  store i32 %extractE19, i32* %Recovery1, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %66
  br label %69

; <label>:69:                                     ; preds = %60, %68
  %70 = load i32, i32* %Recovery1, align 4
  store i32 %70, i32* %8, align 4
  br label %50

; <label>:71:                                     ; preds = %50
  ret i32 0
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
