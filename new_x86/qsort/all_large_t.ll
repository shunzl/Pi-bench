; ModuleID = 'all_large_t.bc'
source_filename = "qsort_large.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external constant %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nounwind
define i32 @compare(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %allocaVec = alloca <2 x double>, align 16
  %5 = alloca double, align 8
  %allocaVec1 = alloca <2 x double>, align 16
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load double, double* %9, align 8
  store double %10, double* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.my3DVertexStruct*
  %13 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %12, i32 0, i32 3
  %14 = load double, double* %13, align 8
  store double %14, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = load double, double* %6, align 8
  %17 = fcmp ogt double %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  br label %24

; <label>:19:                                     ; preds = %2
  %20 = load double, double* %5, align 8
  %21 = load double, double* %6, align 8
  %22 = fcmp oeq double %20, %21
  %23 = select i1 %22, i32 0, i32 -1
  br label %24

; <label>:24:                                     ; preds = %19, %18
  %25 = phi i32 [ 1, %18 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec7 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec8 = alloca <2 x double>, align 16
  %CallInst2 = alloca double, align 4
  %CallInstVec3 = alloca <2 x double>, align 16
  %allocaVec9 = alloca <2 x double>, align 16
  %CallInst4 = alloca double, align 4
  %CallInstVec5 = alloca <2 x double>, align 16
  %allocaVec10 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %allocaVec12 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec10
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec13
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %7, align 8
  br label %23

; <label>:23:                                     ; preds = %86, %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %10)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

; <label>:27:                                     ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %11)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %12)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 60000
  br label %38

; <label>:38:                                     ; preds = %35, %31, %27, %23
  %39 = phi i1 [ false, %31 ], [ false, %27 ], [ false, %23 ], [ %37, %35 ]
  br i1 %39, label %40, label %87

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sitofp i32 %56 to double
  %58 = call double @pow(double %57, double 2.000000e+00) #5
  %59 = load i32, i32* %11, align 4
  %60 = sitofp i32 %59 to double
  %61 = call double @pow(double %60, double 2.000000e+00) #5
  store double %58, double* %CallInst
  %62 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %62, i32 0
  %insertCall17 = insertelement <2 x double> %insertCall, double %62, i32 1
  store <2 x double> %insertCall17, <2 x double>* %CallInstVec, align 4
  %63 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  store double %61, double* %CallInst2
  %64 = load double, double* %CallInst2, align 4
  %insertCall18 = insertelement <2 x double> undef, double %64, i32 0
  %insertCall19 = insertelement <2 x double> %insertCall18, double %64, i32 1
  store <2 x double> %insertCall19, <2 x double>* %CallInstVec3, align 4
  %65 = load <2 x double>, <2 x double>* %CallInstVec3, align 4
  %Vop = fadd <2 x double> %63, %65
  %66 = fadd double %58, %61
  %67 = load i32, i32* %12, align 4
  %68 = sitofp i32 %67 to double
  %69 = call double @pow(double %68, double 2.000000e+00) #5
  store double %69, double* %CallInst4
  %70 = load double, double* %CallInst4, align 4
  %insertCall20 = insertelement <2 x double> undef, double %70, i32 0
  %insertCall21 = insertelement <2 x double> %insertCall20, double %70, i32 1
  store <2 x double> %insertCall21, <2 x double>* %CallInstVec5, align 4
  %71 = load <2 x double>, <2 x double>* %CallInstVec5, align 4
  %Vop22 = fadd <2 x double> %Vop, %71
  %72 = fadd double %66, %69
  %73 = call double @sqrt(double %72) #5
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %76, i32 0, i32 3
  store double %73, double* %77, align 8
  %78 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %78, i32 0
  %insertElmt23 = insertelement <4 x i32> %insertElmt, i32 %78, i32 1
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %78, i32 2
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %78, i32 3
  store <4 x i32> %insertElmt25, <4 x i32>* %allocaVec13, align 16
  %79 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %Vop26 = add <4 x i32> %79, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop26, <4 x i32>* %allocaVec13
  %80 = load <4 x i32>, <4 x i32>* %allocaVec13, align 4
  %extractE = extractelement <4 x i32> %80, i64 0
  %extractE27 = extractelement <4 x i32> %80, i64 1
  %extractE28 = extractelement <4 x i32> %80, i64 2
  %sum = add i32 %extractE, %extractE27
  %sum29 = add i32 %sum, %extractE28
  %81 = add nsw i32 %78, 1
  %Fmul = mul i32 %81, 3
  store i32 %81, i32* %Recovery
  %Fcmp = icmp ne i32 %sum29, %Fmul
  br i1 %Fcmp, label %82, label %86

; <label>:82:                                     ; preds = %40
  %remThree = sdiv i32 %sum29, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %83, label %84

; <label>:83:                                     ; preds = %82
  store i32 %81, i32* %Recovery, align 4
  br label %85

; <label>:84:                                     ; preds = %82
  store i32 %extractE, i32* %Recovery, align 4
  br label %85

; <label>:85:                                     ; preds = %84, %83
  br label %86

; <label>:86:                                     ; preds = %40, %85
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %9, align 4
  br label %23

; <label>:87:                                     ; preds = %38
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %89)
  %91 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 0
  %92 = bitcast %struct.my3DVertexStruct* %91 to i8*
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  call void @qsort(i8* %92, i64 %94, i64 24, i32 (i8*, i8*)* @compare)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec12
  store i32 0, i32* %8, align 4
  br label %95

; <label>:95:                                     ; preds = %125, %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %126

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %104, i32 %109, i32 %114)
  br label %116

; <label>:116:                                    ; preds = %99
  %117 = load i32, i32* %8, align 4
  %insertElmt30 = insertelement <4 x i32> undef, i32 %117, i32 0
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %117, i32 1
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %117, i32 2
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %117, i32 3
  store <4 x i32> %insertElmt33, <4 x i32>* %allocaVec12, align 16
  %118 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop34 = add <4 x i32> %118, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec12
  %119 = load <4 x i32>, <4 x i32>* %allocaVec12, align 4
  %extractE36 = extractelement <4 x i32> %119, i64 0
  %extractE37 = extractelement <4 x i32> %119, i64 1
  %extractE38 = extractelement <4 x i32> %119, i64 2
  %sum39 = add i32 %extractE36, %extractE37
  %sum40 = add i32 %sum39, %extractE38
  %120 = add nsw i32 %117, 1
  %Fmul35 = mul i32 %120, 3
  store i32 %120, i32* %Recovery1
  %Fcmp41 = icmp ne i32 %sum40, %Fmul35
  br i1 %Fcmp41, label %121, label %125

; <label>:121:                                    ; preds = %116
  %remThree42 = sdiv i32 %sum40, %extractE36
  %FcmpThree43 = icmp ne i32 %remThree42, 3
  br i1 %FcmpThree43, label %122, label %123

; <label>:122:                                    ; preds = %121
  store i32 %120, i32* %Recovery1, align 4
  br label %124

; <label>:123:                                    ; preds = %121
  store i32 %extractE36, i32* %Recovery1, align 4
  br label %124

; <label>:124:                                    ; preds = %123, %122
  br label %125

; <label>:125:                                    ; preds = %116, %124
  %ReplaceInst44 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst44, i32* %8, align 4
  br label %95

; <label>:126:                                    ; preds = %95
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i32 @printf(i8*, ...) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
