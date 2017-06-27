; ModuleID = 'all.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  %7 = alloca %struct.SHA_INFO, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 4
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  call arm_aapcscc void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %12)
  call arm_aapcscc void @sha_print(%struct.SHA_INFO* %7)
  br label %35

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %33, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %14
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 4
  %21 = load i8*, i8** %20, align 4
  %22 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %6, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %18
  %26 = load i8**, i8*** %5, align 4
  %27 = load i8*, i8** %26, align 4
  %28 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %27)
  br label %33

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  call arm_aapcscc void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %30)
  call arm_aapcscc void @sha_print(%struct.SHA_INFO* %7)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %32 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %31)
  br label %33

; <label>:33:                                     ; preds = %29, %25
  br label %14

; <label>:34:                                     ; preds = %14
  br label %35

; <label>:35:                                     ; preds = %34, %10
  ret i32 0
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @sha_init(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  store i32 1732584193, i32* %5, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 1
  store i32 -271733879, i32* %8, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 0
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i32 0, i32 2
  store i32 -1732584194, i32* %11, align 4
  %12 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %13 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %12, i32 0, i32 0
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i32 0, i32 3
  store i32 271733878, i32* %14, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i32 0, i32 4
  store i32 -1009589776, i32* %17, align 4
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @sha_update(%struct.SHA_INFO*, i8*, i32) #0 {
  %4 = alloca %struct.SHA_INFO*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 3
  %12 = add i32 %9, %11
  %13 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %14 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

; <label>:22:                                     ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 3
  %25 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 29
  %31 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

; <label>:35:                                     ; preds = %38, %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 64
  br i1 %37, label %38, label %49

; <label>:38:                                     ; preds = %35
  %39 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %40 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %39, i32 0, i32 3
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = load i8*, i8** %5, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 64, i32 1, i1 false)
  %44 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %44)
  %45 = load i8*, i8** %5, align 4
  %46 = getelementptr inbounds i8, i8* %45, i32 64
  store i8* %46, i8** %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 64
  store i32 %48, i32* %6, align 4
  br label %35

; <label>:49:                                     ; preds = %35
  %50 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 4
  %51 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %50, i32 0, i32 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i32 0, i32 0
  %53 = bitcast i32* %52 to i8*
  %54 = load i8*, i8** %5, align 4
  %55 = load i32, i32* %6, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %53, i8* %54, i32 %55, i32 1, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define internal arm_aapcscc void @sha_transform(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i32], align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %22, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %11
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i32 0, i32 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %20
  store i32 %19, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

; <label>:25:                                     ; preds = %11
  store i32 16, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %51, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 80
  br i1 %28, label %29, label %54

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 3
  %32 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 8
  %36 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %33, %37
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 14
  %41 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %38, %42
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 16
  %46 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %43, %47
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %49
  store i32 %48, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %29
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %26

; <label>:54:                                     ; preds = %26
  %55 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %56 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %55, i32 0, i32 0
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  %59 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %60 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %59, i32 0, i32 0
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %64 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %63, i32 0, i32 0
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %68 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %67, i32 0, i32 0
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %72 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %71, i32 0, i32 0
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %75

; <label>:75:                                     ; preds = %109, %54
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 20
  br i1 %77, label %78, label %112

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 %79, 5
  %81 = load i32, i32* %5, align 4
  %82 = lshr i32 %81, 27
  %83 = or i32 %80, %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %88, %89
  %91 = or i32 %86, %90
  %92 = add i32 %83, %91
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %92, %93
  %95 = load i32, i32* %3, align 4
  %96 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %95
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %94, %97
  %99 = add i32 %98, 1518500249
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 30
  %104 = load i32, i32* %6, align 4
  %105 = lshr i32 %104, 2
  %106 = or i32 %103, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %5, align 4
  br label %109

; <label>:109:                                    ; preds = %78
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %75

; <label>:112:                                    ; preds = %75
  store i32 20, i32* %3, align 4
  br label %113

; <label>:113:                                    ; preds = %144, %112
  %114 = load i32, i32* %3, align 4
  %115 = icmp slt i32 %114, 40
  br i1 %115, label %116, label %147

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = shl i32 %117, 5
  %119 = load i32, i32* %5, align 4
  %120 = lshr i32 %119, 27
  %121 = or i32 %118, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = xor i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = xor i32 %124, %125
  %127 = add i32 %121, %126
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %127, %128
  %130 = load i32, i32* %3, align 4
  %131 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %130
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %129, %132
  %134 = add i32 %133, 1859775393
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 30
  %139 = load i32, i32* %6, align 4
  %140 = lshr i32 %139, 2
  %141 = or i32 %138, %140
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %5, align 4
  br label %144

; <label>:144:                                    ; preds = %116
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %113

; <label>:147:                                    ; preds = %113
  store i32 40, i32* %3, align 4
  br label %148

; <label>:148:                                    ; preds = %185, %147
  %149 = load i32, i32* %3, align 4
  %150 = icmp slt i32 %149, 60
  br i1 %150, label %151, label %188

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = shl i32 %152, 5
  %154 = load i32, i32* %5, align 4
  %155 = lshr i32 %154, 27
  %156 = or i32 %153, %155
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %160, %161
  %163 = or i32 %159, %162
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %164, %165
  %167 = or i32 %163, %166
  %168 = add i32 %156, %167
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %168, %169
  %171 = load i32, i32* %3, align 4
  %172 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %171
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %170, %173
  %175 = add i32 %174, -1894007588
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %6, align 4
  %179 = shl i32 %178, 30
  %180 = load i32, i32* %6, align 4
  %181 = lshr i32 %180, 2
  %182 = or i32 %179, %181
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %5, align 4
  br label %185

; <label>:185:                                    ; preds = %151
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %148

; <label>:188:                                    ; preds = %148
  store i32 60, i32* %3, align 4
  br label %189

; <label>:189:                                    ; preds = %220, %188
  %190 = load i32, i32* %3, align 4
  %191 = icmp slt i32 %190, 80
  br i1 %191, label %192, label %223

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %5, align 4
  %194 = shl i32 %193, 5
  %195 = load i32, i32* %5, align 4
  %196 = lshr i32 %195, 27
  %197 = or i32 %194, %196
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = xor i32 %198, %199
  %201 = load i32, i32* %8, align 4
  %202 = xor i32 %200, %201
  %203 = add i32 %197, %202
  %204 = load i32, i32* %9, align 4
  %205 = add i32 %203, %204
  %206 = load i32, i32* %3, align 4
  %207 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i32 0, i32 %206
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %205, %208
  %210 = add i32 %209, -899497514
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %6, align 4
  %214 = shl i32 %213, 30
  %215 = load i32, i32* %6, align 4
  %216 = lshr i32 %215, 2
  %217 = or i32 %214, %216
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %5, align 4
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %4, align 4
  store i32 %219, i32* %5, align 4
  br label %220

; <label>:220:                                    ; preds = %192
  %221 = load i32, i32* %3, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %3, align 4
  br label %189

; <label>:223:                                    ; preds = %189
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %226 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %225, i32 0, i32 0
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, %224
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %232 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %231, i32 0, i32 0
  %233 = getelementptr inbounds [5 x i32], [5 x i32]* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, %230
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %238 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %237, i32 0, i32 0
  %239 = getelementptr inbounds [5 x i32], [5 x i32]* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, %236
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %244 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %243, i32 0, i32 0
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, %242
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %250 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %249, i32 0, i32 0
  %251 = getelementptr inbounds [5 x i32], [5 x i32]* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, %248
  store i32 %253, i32* %251, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @sha_final(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 3
  %14 = and i32 %13, 63
  store i32 %14, i32* %3, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = getelementptr inbounds i8, i8* %18, i32 %19
  store i8 -128, i8* %21, align 1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 56
  br i1 %23, label %24, label %36

; <label>:24:                                     ; preds = %1
  %25 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %25, i32 0, i32 3
  %27 = bitcast [16 x i32]* %26 to i8*
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 64, %30
  call void @llvm.memset.p0i8.i32(i8* %29, i8 0, i32 %31, i32 1, i1 false)
  %32 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %32)
  %33 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %34 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %33, i32 0, i32 3
  %35 = bitcast [16 x i32]* %34 to i8*
  call void @llvm.memset.p0i8.i32(i8* %35, i8 0, i32 56, i32 4, i1 false)
  br label %44

; <label>:36:                                     ; preds = %1
  %37 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %38 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %37, i32 0, i32 3
  %39 = bitcast [16 x i32]* %38 to i8*
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds i8, i8* %39, i32 %40
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 56, %42
  call void @llvm.memset.p0i8.i32(i8* %41, i8 0, i32 %43, i32 1, i1 false)
  br label %44

; <label>:44:                                     ; preds = %36, %24
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %47 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %46, i32 0, i32 3
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %47, i32 0, i32 14
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %51 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %50, i32 0, i32 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i32 0, i32 15
  store i32 %49, i32* %52, align 4
  %53 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  call arm_aapcscc void @sha_transform(%struct.SHA_INFO* %53)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind
define arm_aapcscc void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct.SHA_INFO*, align 4
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 1
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %3, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  call arm_aapcscc void @sha_init(%struct.SHA_INFO* %7)
  br label %8

; <label>:8:                                      ; preds = %13, %2
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %11 = call arm_aapcscc i32 @fread(i8* %9, i32 1, i32 8192, %struct._IO_FILE* %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %8
  %14 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  call arm_aapcscc void @sha_update(%struct.SHA_INFO* %14, i8* %15, i32 %16)
  br label %8

; <label>:17:                                     ; preds = %8
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 4
  call arm_aapcscc void @sha_final(%struct.SHA_INFO* %18)
  ret void
}

declare arm_aapcscc i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @sha_print(%struct.SHA_INFO*) #0 {
  %2 = alloca %struct.SHA_INFO*, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 4
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 0
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %11, i32 0, i32 0
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 4
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 0
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22)
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
