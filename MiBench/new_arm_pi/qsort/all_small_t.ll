; ModuleID = 'all_small_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @compare(i8*, i8*) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %allocaVec = alloca <2 x double>, align 16
  %5 = alloca double, align 8
  %allocaVec1 = alloca <2 x double>, align 16
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %7 = load i8*, i8** %3, align 4
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load double, double* %9, align 8
  store double %10, double* %5, align 8
  %11 = load i8*, i8** %4, align 4
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
define arm_aapcscc i32 @main(i32, i8**) #0 {
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
  %5 = alloca i8**, align 4
  %6 = alloca [60000 x %struct.my3DVertexStruct], align 8
  %7 = alloca %struct._IO_FILE*, align 4
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %17 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #4
  unreachable

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  %21 = load i8*, i8** %20, align 4
  %22 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %7, align 4
  br label %23

; <label>:23:                                     ; preds = %82, %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %25 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %10)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

; <label>:27:                                     ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %29 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %11)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %33 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %12)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 60000
  br label %38

; <label>:38:                                     ; preds = %35, %31, %27, %23
  %39 = phi i1 [ false, %31 ], [ false, %27 ], [ false, %23 ], [ %37, %35 ]
  br i1 %39, label %40, label %84

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %42
  %44 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %46
  %48 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %50
  %52 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sitofp i32 %53 to double
  %55 = call arm_aapcscc double @pow(double %54, double 2.000000e+00) #5
  %56 = load i32, i32* %11, align 4
  %57 = sitofp i32 %56 to double
  %58 = call arm_aapcscc double @pow(double %57, double 2.000000e+00) #5
  store double %55, double* %CallInst
  %59 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %59, i32 0
  %insertCall17 = insertelement <2 x double> %insertCall, double %59, i32 1
  store <2 x double> %insertCall17, <2 x double>* %CallInstVec, align 4
  %60 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  store double %58, double* %CallInst2
  %61 = load double, double* %CallInst2, align 4
  %insertCall18 = insertelement <2 x double> undef, double %61, i32 0
  %insertCall19 = insertelement <2 x double> %insertCall18, double %61, i32 1
  store <2 x double> %insertCall19, <2 x double>* %CallInstVec3, align 4
  %62 = load <2 x double>, <2 x double>* %CallInstVec3, align 4
  %Vop = fadd <2 x double> %60, %62
  %63 = fadd double %55, %58
  %64 = load i32, i32* %12, align 4
  %65 = sitofp i32 %64 to double
  %66 = call arm_aapcscc double @pow(double %65, double 2.000000e+00) #5
  store double %66, double* %CallInst4
  %67 = load double, double* %CallInst4, align 4
  %insertCall20 = insertelement <2 x double> undef, double %67, i32 0
  %insertCall21 = insertelement <2 x double> %insertCall20, double %67, i32 1
  store <2 x double> %insertCall21, <2 x double>* %CallInstVec5, align 4
  %68 = load <2 x double>, <2 x double>* %CallInstVec5, align 4
  %Vop22 = fadd <2 x double> %Vop, %68
  %69 = fadd double %63, %66
  %70 = call arm_aapcscc double @sqrt(double %69) #5
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %71
  %73 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %72, i32 0, i32 3
  store double %70, double* %73, align 8
  %74 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %74, i32 0
  %insertElmt23 = insertelement <4 x i32> %insertElmt, i32 %74, i32 1
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %74, i32 2
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %74, i32 3
  store <4 x i32> %insertElmt25, <4 x i32>* %allocaVec13, align 16
  %75 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %Vop26 = add <4 x i32> %75, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop26, <4 x i32>* %allocaVec13
  %76 = load <4 x i32>, <4 x i32>* %allocaVec13, align 4
  %extractE = extractelement <4 x i32> %76, i64 0
  %extractE27 = extractelement <4 x i32> %76, i64 1
  %extractE28 = extractelement <4 x i32> %76, i64 2
  %sum = add i32 %extractE, %extractE27
  %sum29 = add i32 %sum, %extractE28
  %77 = add nsw i32 %74, 1
  %Fmul = mul i32 %77, 3
  store i32 %77, i32* %Recovery
  %Fcmp = icmp ne i32 %sum29, %Fmul
  br i1 %Fcmp, label %78, label %82

; <label>:78:                                     ; preds = %40
  %remThree = sdiv i32 %sum29, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %79, label %80

; <label>:79:                                     ; preds = %78
  store i32 %77, i32* %Recovery, align 4
  br label %81

; <label>:80:                                     ; preds = %78
  store i32 %extractE, i32* %Recovery, align 4
  br label %81

; <label>:81:                                     ; preds = %80, %79
  br label %82

; <label>:82:                                     ; preds = %40, %81
  %83 = load i32, i32* %Recovery, align 4
  store i32 %83, i32* %9, align 4
  br label %23

; <label>:84:                                     ; preds = %38
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %86)
  %88 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 0
  %89 = bitcast %struct.my3DVertexStruct* %88 to i8*
  %90 = load i32, i32* %9, align 4
  call arm_aapcscc void @qsort(i8* %89, i32 %90, i32 24, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %91

; <label>:91:                                     ; preds = %118, %85
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %120

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %96
  %98 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %100
  %102 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %104
  %106 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %99, i32 %103, i32 %107)
  br label %109

; <label>:109:                                    ; preds = %95
  %110 = load i32, i32* %8, align 4
  %insertElmt30 = insertelement <4 x i32> undef, i32 %110, i32 0
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %110, i32 1
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %110, i32 2
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %110, i32 3
  store <4 x i32> %insertElmt33, <4 x i32>* %allocaVec12, align 16
  %111 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop34 = add <4 x i32> %111, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec12
  %112 = load <4 x i32>, <4 x i32>* %allocaVec12, align 4
  %extractE36 = extractelement <4 x i32> %112, i64 0
  %extractE37 = extractelement <4 x i32> %112, i64 1
  %extractE38 = extractelement <4 x i32> %112, i64 2
  %sum39 = add i32 %extractE36, %extractE37
  %sum40 = add i32 %sum39, %extractE38
  %113 = add nsw i32 %110, 1
  %Fmul35 = mul i32 %113, 3
  store i32 %113, i32* %Recovery1
  %Fcmp41 = icmp ne i32 %sum40, %Fmul35
  br i1 %Fcmp41, label %114, label %118

; <label>:114:                                    ; preds = %109
  %remThree42 = sdiv i32 %sum40, %extractE36
  %FcmpThree43 = icmp ne i32 %remThree42, 3
  br i1 %FcmpThree43, label %115, label %116

; <label>:115:                                    ; preds = %114
  store i32 %113, i32* %Recovery1, align 4
  br label %117

; <label>:116:                                    ; preds = %114
  store i32 %extractE36, i32* %Recovery1, align 4
  br label %117

; <label>:117:                                    ; preds = %116, %115
  br label %118

; <label>:118:                                    ; preds = %109, %117
  %119 = load i32, i32* %Recovery1, align 4
  store i32 %119, i32* %8, align 4
  br label %91

; <label>:120:                                    ; preds = %91
  ret i32 0
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #3

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
