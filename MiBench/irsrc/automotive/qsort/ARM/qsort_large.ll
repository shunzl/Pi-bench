; ModuleID = 'qsort_large.c'
source_filename = "qsort_large.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.my3DVertexStruct = type { i32, i32, i32, float }

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
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %7 = load i8*, i8** %3, align 4
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load float, float* %9, align 4
  store float %10, float* %5, align 4
  %11 = load i8*, i8** %4, align 4
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
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca [60000 x %struct.my3DVertexStruct], align 4
  %7 = alloca %struct._IO_FILE*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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

; <label>:23:                                     ; preds = %40, %18
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
  br i1 %39, label %40, label %71

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %42
  %44 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %46
  %48 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %50
  %52 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sitofp i32 %53 to double
  %55 = call arm_aapcscc double @pow(double %54, double 2.000000e+00) #5
  %56 = load i32, i32* %11, align 4
  %57 = sitofp i32 %56 to double
  %58 = call arm_aapcscc double @pow(double %57, double 2.000000e+00) #5
  %59 = fadd double %55, %58
  %60 = load i32, i32* %12, align 4
  %61 = sitofp i32 %60 to double
  %62 = call arm_aapcscc double @pow(double %61, double 2.000000e+00) #5
  %63 = fadd double %59, %62
  %64 = call arm_aapcscc double @sqrt(double %63) #5
  %65 = fptrunc double %64 to float
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %66
  %68 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %67, i32 0, i32 3
  store float %65, float* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %23

; <label>:71:                                     ; preds = %38
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %73)
  %75 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 0
  %76 = bitcast %struct.my3DVertexStruct* %75 to i8*
  %77 = load i32, i32* %9, align 4
  call arm_aapcscc void @qsort(i8* %76, i32 %77, i32 16, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %8, align 4
  br label %78

; <label>:78:                                     ; preds = %96, %72
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %99

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %83
  %85 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %87
  %89 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 %91
  %93 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %86, i32 %90, i32 %94)
  br label %96

; <label>:96:                                     ; preds = %82
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %78

; <label>:99:                                     ; preds = %78
  ret i32 0
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #3

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
