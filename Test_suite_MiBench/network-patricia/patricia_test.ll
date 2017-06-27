; ModuleID = 'patricia_test.c'
source_filename = "patricia_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.ptree = type { i32, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i32, i8* }
%struct.in_addr = type { i32 }
%struct.MyNode = type { i32, double }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %8 = alloca %struct.ptree*, align 4
  %9 = alloca %struct.ptree_mask*, align 4
  %10 = alloca %struct._IO_FILE*, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca [16 x i8], align 1
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store i32 -1, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 0
  %21 = load i8*, i8** %20, align 4
  %22 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* %21)
  call arm_aapcscc void @exit(i32 -1) #4
  unreachable

; <label>:23:                                     ; preds = %2
  %24 = load i8**, i8*** %5, align 4
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  %26 = load i8*, i8** %25, align 4
  %27 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %10, align 4
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %23
  %30 = load i8**, i8*** %5, align 4
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  %32 = load i8*, i8** %31, align 4
  %33 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* %32)
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:34:                                     ; preds = %23
  %35 = call arm_aapcscc i8* @malloc(i32 20)
  %36 = bitcast i8* %35 to %struct.ptree*
  store %struct.ptree* %36, %struct.ptree** %6, align 4
  %37 = load %struct.ptree*, %struct.ptree** %6, align 4
  %38 = icmp ne %struct.ptree* %37, null
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %34
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:40:                                     ; preds = %34
  %41 = load %struct.ptree*, %struct.ptree** %6, align 4
  %42 = bitcast %struct.ptree* %41 to i8*
  call void @llvm.memset.p0i8.i32(i8* %42, i8 0, i32 20, i32 4, i1 false)
  %43 = call arm_aapcscc i8* @malloc(i32 8)
  %44 = bitcast i8* %43 to %struct.ptree_mask*
  %45 = load %struct.ptree*, %struct.ptree** %6, align 4
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 1
  store %struct.ptree_mask* %44, %struct.ptree_mask** %46, align 4
  %47 = load %struct.ptree*, %struct.ptree** %6, align 4
  %48 = getelementptr inbounds %struct.ptree, %struct.ptree* %47, i32 0, i32 1
  %49 = load %struct.ptree_mask*, %struct.ptree_mask** %48, align 4
  %50 = icmp ne %struct.ptree_mask* %49, null
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %40
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:52:                                     ; preds = %40
  %53 = load %struct.ptree*, %struct.ptree** %6, align 4
  %54 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i32 0, i32 1
  %55 = load %struct.ptree_mask*, %struct.ptree_mask** %54, align 4
  %56 = bitcast %struct.ptree_mask* %55 to i8*
  call void @llvm.memset.p0i8.i32(i8* %56, i8 0, i32 8, i32 4, i1 false)
  %57 = load %struct.ptree*, %struct.ptree** %6, align 4
  %58 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 1
  %59 = load %struct.ptree_mask*, %struct.ptree_mask** %58, align 4
  store %struct.ptree_mask* %59, %struct.ptree_mask** %9, align 4
  %60 = call arm_aapcscc i8* @malloc(i32 16)
  %61 = bitcast i8* %60 to %struct.MyNode*
  %62 = bitcast %struct.MyNode* %61 to i8*
  %63 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %64 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 4
  %65 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %66 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 4
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %52
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:70:                                     ; preds = %52
  %71 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %72 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 4
  call void @llvm.memset.p0i8.i32(i8* %73, i8 0, i32 1, i32 1, i1 false)
  %74 = load %struct.ptree*, %struct.ptree** %6, align 4
  %75 = getelementptr inbounds %struct.ptree, %struct.ptree* %74, i32 0, i32 2
  store i8 1, i8* %75, align 4
  %76 = load %struct.ptree*, %struct.ptree** %6, align 4
  %77 = load %struct.ptree*, %struct.ptree** %6, align 4
  %78 = getelementptr inbounds %struct.ptree, %struct.ptree* %77, i32 0, i32 5
  store %struct.ptree* %76, %struct.ptree** %78, align 4
  %79 = load %struct.ptree*, %struct.ptree** %6, align 4
  %80 = getelementptr inbounds %struct.ptree, %struct.ptree* %79, i32 0, i32 4
  store %struct.ptree* %76, %struct.ptree** %80, align 4
  br label %81

; <label>:81:                                     ; preds = %166, %70
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 4
  %84 = call arm_aapcscc i8* @fgets(i8* %82, i32 128, %struct._IO_FILE* %83)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %167

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0
  %88 = bitcast %struct.in_addr* %13 to i32*
  %89 = call arm_aapcscc i32 (i8*, i8*, ...) @sscanf(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), float* %15, i32* %88)
  %90 = call arm_aapcscc i8* @malloc(i32 20)
  %91 = bitcast i8* %90 to %struct.ptree*
  store %struct.ptree* %91, %struct.ptree** %7, align 4
  %92 = load %struct.ptree*, %struct.ptree** %7, align 4
  %93 = icmp ne %struct.ptree* %92, null
  br i1 %93, label %95, label %94

; <label>:94:                                     ; preds = %86
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:95:                                     ; preds = %86
  %96 = load %struct.ptree*, %struct.ptree** %7, align 4
  %97 = bitcast %struct.ptree* %96 to i8*
  call void @llvm.memset.p0i8.i32(i8* %97, i8 0, i32 20, i32 4, i1 false)
  %98 = call arm_aapcscc i8* @malloc(i32 8)
  %99 = bitcast i8* %98 to %struct.ptree_mask*
  %100 = load %struct.ptree*, %struct.ptree** %7, align 4
  %101 = getelementptr inbounds %struct.ptree, %struct.ptree* %100, i32 0, i32 1
  store %struct.ptree_mask* %99, %struct.ptree_mask** %101, align 4
  %102 = load %struct.ptree*, %struct.ptree** %7, align 4
  %103 = getelementptr inbounds %struct.ptree, %struct.ptree* %102, i32 0, i32 1
  %104 = load %struct.ptree_mask*, %struct.ptree_mask** %103, align 4
  %105 = icmp ne %struct.ptree_mask* %104, null
  br i1 %105, label %107, label %106

; <label>:106:                                    ; preds = %95
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:107:                                    ; preds = %95
  %108 = load %struct.ptree*, %struct.ptree** %7, align 4
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 1
  %110 = load %struct.ptree_mask*, %struct.ptree_mask** %109, align 4
  %111 = bitcast %struct.ptree_mask* %110 to i8*
  call void @llvm.memset.p0i8.i32(i8* %111, i8 0, i32 8, i32 4, i1 false)
  %112 = load %struct.ptree*, %struct.ptree** %7, align 4
  %113 = getelementptr inbounds %struct.ptree, %struct.ptree* %112, i32 0, i32 1
  %114 = load %struct.ptree_mask*, %struct.ptree_mask** %113, align 4
  store %struct.ptree_mask* %114, %struct.ptree_mask** %9, align 4
  %115 = call arm_aapcscc i8* @malloc(i32 16)
  %116 = bitcast i8* %115 to %struct.MyNode*
  %117 = bitcast %struct.MyNode* %116 to i8*
  %118 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %119 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 4
  %120 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %121 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 4
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

; <label>:124:                                    ; preds = %107
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:125:                                    ; preds = %107
  %126 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 4
  %127 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 4
  call void @llvm.memset.p0i8.i32(i8* %128, i8 0, i32 1, i32 1, i1 false)
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ptree*, %struct.ptree** %7, align 4
  %132 = getelementptr inbounds %struct.ptree, %struct.ptree* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call arm_aapcscc i32 @htonl(i32 %133)
  %135 = load %struct.ptree*, %struct.ptree** %7, align 4
  %136 = getelementptr inbounds %struct.ptree, %struct.ptree* %135, i32 0, i32 1
  %137 = load %struct.ptree_mask*, %struct.ptree_mask** %136, align 4
  %138 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ptree*, %struct.ptree** %6, align 4
  %142 = call arm_aapcscc %struct.ptree* @pat_search(i32 %140, %struct.ptree* %141)
  store %struct.ptree* %142, %struct.ptree** %8, align 4
  %143 = load %struct.ptree*, %struct.ptree** %8, align 4
  %144 = getelementptr inbounds %struct.ptree, %struct.ptree* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %125
  %150 = load float, float* %15, align 4
  %151 = fpext float %150 to double
  %152 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), double %151, i32 %153)
  %155 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  br label %160

; <label>:156:                                    ; preds = %125
  %157 = load %struct.ptree*, %struct.ptree** %7, align 4
  %158 = load %struct.ptree*, %struct.ptree** %6, align 4
  %159 = call arm_aapcscc %struct.ptree* @pat_insert(%struct.ptree* %157, %struct.ptree* %158)
  store %struct.ptree* %159, %struct.ptree** %7, align 4
  br label %160

; <label>:160:                                    ; preds = %156, %149
  %161 = load %struct.ptree*, %struct.ptree** %7, align 4
  %162 = icmp ne %struct.ptree* %161, null
  br i1 %162, label %166, label %163

; <label>:163:                                    ; preds = %160
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %165 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:166:                                    ; preds = %160
  br label %81

; <label>:167:                                    ; preds = %81
  call arm_aapcscc void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc void @perror(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

declare arm_aapcscc i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @sscanf(i8*, i8*, ...) #1

declare arm_aapcscc i32 @htonl(i32) #1

declare arm_aapcscc %struct.ptree* @pat_search(i32, %struct.ptree*) #1

declare arm_aapcscc %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
