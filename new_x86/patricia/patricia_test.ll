; ModuleID = 'patricia_test.c'
source_filename = "patricia_test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }
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
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %phead = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %pfind = alloca %struct.ptree*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca [128 x i8], align 16
  %addr_str = alloca [16 x i8], align 16
  %addr = alloca %struct.in_addr, align 4
  %mask = alloca i64, align 8
  %time = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 4294967295, i64* %mask, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* %2)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* %6)
  call void @exit(i32 0) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 40) #7
  %7 = bitcast i8* %call8 to %struct.ptree*
  store %struct.ptree* %7, %struct.ptree** %phead, align 8
  %8 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %tobool = icmp ne %struct.ptree* %8, null
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end10:                                         ; preds = %if.end7
  %9 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %10 = bitcast %struct.ptree* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 40, i32 8, i1 false)
  %call11 = call noalias i8* @malloc(i64 16) #7
  %11 = bitcast i8* %call11 to %struct.ptree_mask*
  %12 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %12, i32 0, i32 1
  store %struct.ptree_mask* %11, %struct.ptree_mask** %p_m, align 8
  %13 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_m12 = getelementptr inbounds %struct.ptree, %struct.ptree* %13, i32 0, i32 1
  %14 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m12, align 8
  %tobool13 = icmp ne %struct.ptree_mask* %14, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end15:                                         ; preds = %if.end10
  %15 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_m16 = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 1
  %16 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m16, align 8
  %17 = bitcast %struct.ptree_mask* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 16, i32 8, i1 false)
  %18 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_m17 = getelementptr inbounds %struct.ptree, %struct.ptree* %18, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m17, align 8
  store %struct.ptree_mask* %19, %struct.ptree_mask** %pm, align 8
  %call18 = call noalias i8* @malloc(i64 16) #7
  %20 = bitcast i8* %call18 to %struct.MyNode*
  %21 = bitcast %struct.MyNode* %20 to i8*
  %22 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %22, i32 0, i32 1
  store i8* %21, i8** %pm_data, align 8
  %23 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data19 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %23, i32 0, i32 1
  %24 = load i8*, i8** %pm_data19, align 8
  %tobool20 = icmp ne i8* %24, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end15
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end22:                                         ; preds = %if.end15
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data23 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 1
  %26 = load i8*, i8** %pm_data23, align 8
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 1, i32 1, i1 false)
  %27 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %27, i32 0, i32 2
  store i8 1, i8* %p_mlen, align 8
  %28 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %29 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 5
  store %struct.ptree* %28, %struct.ptree** %p_right, align 8
  %30 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %30, i32 0, i32 4
  store %struct.ptree* %28, %struct.ptree** %p_left, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %if.end22
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %line, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i8* @fgets(i8* %arraydecay, i32 128, %struct._IO_FILE* %31)
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay26 = getelementptr inbounds [128 x i8], [128 x i8]* %line, i32 0, i32 0
  %32 = bitcast %struct.in_addr* %addr to i32*
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), float* %time, i32* %32) #7
  %call28 = call noalias i8* @malloc(i64 40) #7
  %33 = bitcast i8* %call28 to %struct.ptree*
  store %struct.ptree* %33, %struct.ptree** %p, align 8
  %34 = load %struct.ptree*, %struct.ptree** %p, align 8
  %tobool29 = icmp ne %struct.ptree* %34, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %while.body
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end31:                                         ; preds = %while.body
  %35 = load %struct.ptree*, %struct.ptree** %p, align 8
  %36 = bitcast %struct.ptree* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 40, i32 8, i1 false)
  %call32 = call noalias i8* @malloc(i64 16) #7
  %37 = bitcast i8* %call32 to %struct.ptree_mask*
  %38 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m33 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 1
  store %struct.ptree_mask* %37, %struct.ptree_mask** %p_m33, align 8
  %39 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m34 = getelementptr inbounds %struct.ptree, %struct.ptree* %39, i32 0, i32 1
  %40 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m34, align 8
  %tobool35 = icmp ne %struct.ptree_mask* %40, null
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end37:                                         ; preds = %if.end31
  %41 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m38 = getelementptr inbounds %struct.ptree, %struct.ptree* %41, i32 0, i32 1
  %42 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m38, align 8
  %43 = bitcast %struct.ptree_mask* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 16, i32 8, i1 false)
  %44 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m39 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 1
  %45 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m39, align 8
  store %struct.ptree_mask* %45, %struct.ptree_mask** %pm, align 8
  %call40 = call noalias i8* @malloc(i64 16) #7
  %46 = bitcast i8* %call40 to %struct.MyNode*
  %47 = bitcast %struct.MyNode* %46 to i8*
  %48 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data41 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %48, i32 0, i32 1
  store i8* %47, i8** %pm_data41, align 8
  %49 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data42 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %49, i32 0, i32 1
  %50 = load i8*, i8** %pm_data42, align 8
  %tobool43 = icmp ne i8* %50, null
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end37
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end45:                                         ; preds = %if.end37
  %51 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %pm_data46 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %51, i32 0, i32 1
  %52 = load i8*, i8** %pm_data46, align 8
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 1, i32 1, i1 false)
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i32 0, i32 0
  %53 = load i32, i32* %s_addr, align 4
  %conv = zext i32 %53 to i64
  %54 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %54, i32 0, i32 0
  store i64 %conv, i64* %p_key, align 8
  %55 = load i64, i64* %mask, align 8
  %conv47 = trunc i64 %55 to i32
  %call48 = call i32 @htonl(i32 %conv47) #8
  %conv49 = zext i32 %call48 to i64
  %56 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m50 = getelementptr inbounds %struct.ptree, %struct.ptree* %56, i32 0, i32 1
  %57 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m50, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %57, i32 0, i32 0
  store i64 %conv49, i64* %pm_mask, align 8
  %s_addr51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i32 0, i32 0
  %58 = load i32, i32* %s_addr51, align 4
  %conv52 = zext i32 %58 to i64
  %59 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %call53 = call %struct.ptree* @pat_search(i64 %conv52, %struct.ptree* %59)
  store %struct.ptree* %call53, %struct.ptree** %pfind, align 8
  %60 = load %struct.ptree*, %struct.ptree** %pfind, align 8
  %p_key54 = getelementptr inbounds %struct.ptree, %struct.ptree* %60, i32 0, i32 0
  %61 = load i64, i64* %p_key54, align 8
  %s_addr55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i32 0, i32 0
  %62 = load i32, i32* %s_addr55, align 4
  %conv56 = zext i32 %62 to i64
  %cmp57 = icmp eq i64 %61, %conv56
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end45
  %63 = load float, float* %time, align 4
  %conv60 = fpext float %63 to double
  %s_addr61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i32 0, i32 0
  %64 = load i32, i32* %s_addr61, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), double %conv60, i32 %64)
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end65

if.else:                                          ; preds = %if.end45
  %65 = load %struct.ptree*, %struct.ptree** %p, align 8
  %66 = load %struct.ptree*, %struct.ptree** %phead, align 8
  %call64 = call %struct.ptree* @pat_insert(%struct.ptree* %65, %struct.ptree* %66)
  store %struct.ptree* %call64, %struct.ptree** %p, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then59
  %67 = load %struct.ptree*, %struct.ptree** %p, align 8
  %tobool66 = icmp ne %struct.ptree* %67, null
  br i1 %tobool66, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end65
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end69:                                         ; preds = %if.end65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @perror(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

declare %struct.ptree* @pat_search(i64, %struct.ptree*) #1

declare %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final 297803)"}
