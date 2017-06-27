; ModuleID = 'large.bc'
source_filename = "qsort_large.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.my3DVertexStruct = type { i32, i32, i32, float }

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
  %allocaVec = alloca <4 x float>, align 16
  %5 = alloca float, align 4
  %allocaVec1 = alloca <4 x float>, align 16
  %6 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load float, float* %9, align 4
  store float %10, float* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.my3DVertexStruct*
  %13 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %12, i32 0, i32 3
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load float, float* %5, align 4
  %16 = load float, float* %6, align 4
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  br label %24

; <label>:19:                                     ; preds = %2
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp oeq float %20, %21
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
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
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

; <label>:23:                                     ; preds = %84, %18
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
  br i1 %39, label %40, label %86

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 16
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
  %62 = fadd double %58, %61
  %63 = load i32, i32* %12, align 4
  %64 = sitofp i32 %63 to double
  %65 = call double @pow(double %64, double 2.000000e+00) #5
  %66 = fadd double %62, %65
  %67 = call double @sqrt(double %66) #5
  %68 = fptrunc double %67 to float
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %71, i32 0, i32 3
  store float %68, float* %72, align 4
  %73 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %73, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt, i32 %73, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %73, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %73, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec6, align 16
  %74 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %75 = alloca i32, align 4
  %allocaCons = alloca <4 x i32>, align 16
  store i32 1, i32* %75
  %76 = load i32, i32* %75, align 4
  %insertCons = insertelement <4 x i32> undef, i32 %76, i32 0
  %insertCons13 = insertelement <4 x i32> %insertCons, i32 %76, i32 1
  %insertCons14 = insertelement <4 x i32> %insertCons13, i32 %76, i32 2
  %insertCons15 = insertelement <4 x i32> %insertCons14, i32 %76, i32 3
  store <4 x i32> %insertCons15, <4 x i32>* %allocaCons, align 4
  %77 = load <4 x i32>, <4 x i32>* %allocaCons, align 4
  %Vop = add <4 x i32> %74, %77
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %78 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %78, i64 0
  %extractE16 = extractelement <4 x i32> %78, i64 1
  %extractE17 = extractelement <4 x i32> %78, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %79 = add nsw i32 %73, 1
  %Fmul = mul i32 %79, 3
  store i32 %79, i32* %Recovery
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %80, label %84

; <label>:80:                                     ; preds = %40
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %81, label %82

; <label>:81:                                     ; preds = %80
  store i32 %extractE, i32* %Recovery, align 4
  br label %83

; <label>:82:                                     ; preds = %80
  store i32 %79, i32* %Recovery, align 4
  br label %83

; <label>:83:                                     ; preds = %82, %81
  br label %84

; <label>:84:                                     ; preds = %40, %83
  %85 = load i32, i32* %Recovery, align 4
  store i32 %85, i32* %9, align 4
  br label %23

; <label>:86:                                     ; preds = %38
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %88)
  %90 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 0
  %91 = bitcast %struct.my3DVertexStruct* %90 to i8*
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  call void @qsort(i8* %91, i64 %93, i64 16, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %94

; <label>:94:                                     ; preds = %127, %87
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %129

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 16
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %103, i32 %108, i32 %113)
  br label %115

; <label>:115:                                    ; preds = %98
  %116 = load i32, i32* %8, align 4
  %insertElmt19 = insertelement <4 x i32> undef, i32 %116, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %116, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %116, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %116, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec5, align 16
  %117 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %118 = alloca i32, align 4
  %allocaCons23 = alloca <4 x i32>, align 16
  store i32 1, i32* %118
  %119 = load i32, i32* %118, align 4
  %insertCons24 = insertelement <4 x i32> undef, i32 %119, i32 0
  %insertCons25 = insertelement <4 x i32> %insertCons24, i32 %119, i32 1
  %insertCons26 = insertelement <4 x i32> %insertCons25, i32 %119, i32 2
  %insertCons27 = insertelement <4 x i32> %insertCons26, i32 %119, i32 3
  store <4 x i32> %insertCons27, <4 x i32>* %allocaCons23, align 4
  %120 = load <4 x i32>, <4 x i32>* %allocaCons23, align 4
  %Vop28 = add <4 x i32> %117, %120
  store <4 x i32> %Vop28, <4 x i32>* %allocaVec5
  %121 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE30 = extractelement <4 x i32> %121, i64 0
  %extractE31 = extractelement <4 x i32> %121, i64 1
  %extractE32 = extractelement <4 x i32> %121, i64 2
  %sum33 = add i32 %extractE30, %extractE31
  %sum34 = add i32 %sum33, %extractE32
  %122 = add nsw i32 %116, 1
  %Fmul29 = mul i32 %122, 3
  store i32 %122, i32* %Recovery1
  %Fcmp35 = icmp ne i32 %sum34, %Fmul29
  br i1 %Fcmp35, label %123, label %127

; <label>:123:                                    ; preds = %115
  %remThree36 = sdiv i32 %sum34, %extractE30
  %FcmpThree37 = icmp ne i32 %remThree36, 3
  br i1 %FcmpThree37, label %124, label %125

; <label>:124:                                    ; preds = %123
  store i32 %extractE30, i32* %Recovery1, align 4
  br label %126

; <label>:125:                                    ; preds = %123
  store i32 %122, i32* %Recovery1, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %124
  br label %127

; <label>:127:                                    ; preds = %115, %126
  %128 = load i32, i32* %Recovery1, align 4
  store i32 %128, i32* %8, align 4
  br label %94

; <label>:129:                                    ; preds = %94
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
