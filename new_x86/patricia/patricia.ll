; ModuleID = 'patricia.c'
source_filename = "patricia.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_insert(%struct.ptree* %n, %struct.ptree* %head) #0 {
entry:
  %retval = alloca %struct.ptree*, align 8
  %n.addr = alloca %struct.ptree*, align 8
  %head.addr = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %buf = alloca %struct.ptree_mask*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %i = alloca i32, align 4
  %copied = alloca i32, align 4
  store %struct.ptree* %n, %struct.ptree** %n.addr, align 8
  store %struct.ptree* %head, %struct.ptree** %head.addr, align 8
  %0 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %tobool = icmp ne %struct.ptree* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %tobool1 = icmp ne %struct.ptree* %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %2, i32 0, i32 1
  %3 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8
  %tobool3 = icmp ne %struct.ptree_mask* %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store %struct.ptree* null, %struct.ptree** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m4 = getelementptr inbounds %struct.ptree, %struct.ptree* %4, i32 0, i32 1
  %5 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m4, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %5, i32 0, i32 0
  %6 = load i64, i64* %pm_mask, align 8
  %7 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %7, i32 0, i32 0
  %8 = load i64, i64* %p_key, align 8
  %and = and i64 %8, %6
  store i64 %and, i64* %p_key, align 8
  %9 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  store %struct.ptree* %9, %struct.ptree** %t, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %10 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 3
  %11 = load i8, i8* %p_b, align 1
  %conv = sext i8 %11 to i32
  store i32 %conv, i32* %i, align 4
  %12 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b5 = getelementptr inbounds %struct.ptree, %struct.ptree* %12, i32 0, i32 3
  %13 = load i8, i8* %p_b5, align 1
  %conv6 = sext i8 %13 to i32
  %14 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key7 = getelementptr inbounds %struct.ptree, %struct.ptree* %14, i32 0, i32 0
  %15 = load i64, i64* %p_key7, align 8
  %call = call i64 @bit(i32 %conv6, i64 %15)
  %tobool8 = icmp ne i64 %call, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %16 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %16, i32 0, i32 5
  %17 = load %struct.ptree*, %struct.ptree** %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %18 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %18, i32 0, i32 4
  %19 = load %struct.ptree*, %struct.ptree** %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ptree* [ %17, %cond.true ], [ %19, %cond.false ]
  store %struct.ptree* %cond, %struct.ptree** %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 3
  %22 = load i8, i8* %p_b9, align 1
  %conv10 = sext i8 %22 to i32
  %cmp = icmp slt i32 %20, %conv10
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key12 = getelementptr inbounds %struct.ptree, %struct.ptree* %23, i32 0, i32 0
  %24 = load i64, i64* %p_key12, align 8
  %25 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key13 = getelementptr inbounds %struct.ptree, %struct.ptree* %25, i32 0, i32 0
  %26 = load i64, i64* %p_key13, align 8
  %cmp14 = icmp eq i64 %24, %26
  br i1 %cmp14, label %if.then16, label %if.end70

if.then16:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 2
  %29 = load i8, i8* %p_mlen, align 8
  %conv17 = zext i8 %29 to i32
  %cmp18 = icmp slt i32 %27, %conv17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m20 = getelementptr inbounds %struct.ptree, %struct.ptree* %30, i32 0, i32 1
  %31 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m20, align 8
  %pm_mask21 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %31, i32 0, i32 0
  %32 = load i64, i64* %pm_mask21, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 1
  %35 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m22, align 8
  %arrayidx = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %35, i64 %idxprom
  %pm_mask23 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx, i32 0, i32 0
  %36 = load i64, i64* %pm_mask23, align 8
  %cmp24 = icmp eq i64 %32, %36
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %for.body
  %37 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, %struct.ptree* %37, i32 0, i32 1
  %38 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m27, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %38, i32 0, i32 1
  %39 = load i8*, i8** %pm_data, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m29 = getelementptr inbounds %struct.ptree, %struct.ptree* %41, i32 0, i32 1
  %42 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m29, align 8
  %arrayidx30 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %42, i64 %idxprom28
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx30, i32 0, i32 1
  store i8* %39, i8** %pm_data31, align 8
  %43 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m32 = getelementptr inbounds %struct.ptree, %struct.ptree* %43, i32 0, i32 1
  %44 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m32, align 8
  %45 = bitcast %struct.ptree_mask* %44 to i8*
  call void @free(i8* %45) #3
  %46 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %47 = bitcast %struct.ptree* %46 to i8*
  call void @free(i8* %47) #3
  store %struct.ptree* null, %struct.ptree** %n.addr, align 8
  %48 = load %struct.ptree*, %struct.ptree** %t, align 8
  store %struct.ptree* %48, %struct.ptree** %retval, align 8
  br label %return

if.end33:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen34 = getelementptr inbounds %struct.ptree, %struct.ptree* %50, i32 0, i32 2
  %51 = load i8, i8* %p_mlen34, align 8
  %conv35 = zext i8 %51 to i32
  %add = add nsw i32 %conv35, 1
  %conv36 = sext i32 %add to i64
  %mul = mul i64 16, %conv36
  %call37 = call noalias i8* @malloc(i64 %mul) #3
  %52 = bitcast i8* %call37 to %struct.ptree_mask*
  store %struct.ptree_mask* %52, %struct.ptree_mask** %buf, align 8
  store i32 0, i32* %copied, align 4
  store i32 0, i32* %i, align 4
  %53 = load %struct.ptree_mask*, %struct.ptree_mask** %buf, align 8
  store %struct.ptree_mask* %53, %struct.ptree_mask** %pm, align 8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc59, %for.end
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen39 = getelementptr inbounds %struct.ptree, %struct.ptree* %55, i32 0, i32 2
  %56 = load i8, i8* %p_mlen39, align 8
  %conv40 = zext i8 %56 to i32
  %cmp41 = icmp slt i32 %54, %conv40
  br i1 %cmp41, label %for.body43, label %for.end60

for.body43:                                       ; preds = %for.cond38
  %57 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m44 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 1
  %58 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m44, align 8
  %pm_mask45 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %58, i32 0, i32 0
  %59 = load i64, i64* %pm_mask45, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m47 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 1
  %62 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m47, align 8
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %62, i64 %idxprom46
  %pm_mask49 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx48, i32 0, i32 0
  %63 = load i64, i64* %pm_mask49, align 8
  %cmp50 = icmp ugt i64 %59, %63
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.body43
  %64 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m53 = getelementptr inbounds %struct.ptree, %struct.ptree* %64, i32 0, i32 1
  %65 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m53, align 8
  %66 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i64 %idx.ext
  %67 = bitcast %struct.ptree_mask* %add.ptr to i8*
  %68 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %69 = bitcast %struct.ptree_mask* %68 to i8*
  call void @bcopy(i8* %67, i8* %69, i64 16) #3
  %70 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %70, 1
  store i32 %inc54, i32* %i, align 4
  br label %if.end58

if.else:                                          ; preds = %for.body43
  %71 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m55 = getelementptr inbounds %struct.ptree, %struct.ptree* %71, i32 0, i32 1
  %72 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m55, align 8
  %73 = bitcast %struct.ptree_mask* %72 to i8*
  %74 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %75 = bitcast %struct.ptree_mask* %74 to i8*
  call void @bcopy(i8* %73, i8* %75, i64 16) #3
  %76 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m56 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 1
  %77 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m56, align 8
  %pm_mask57 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %77, i32 0, i32 0
  store i64 4294967295, i64* %pm_mask57, align 8
  store i32 1, i32* %copied, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then52
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %78 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %78, i32 1
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %pm, align 8
  br label %for.cond38

for.end60:                                        ; preds = %for.cond38
  %79 = load i32, i32* %copied, align 4
  %tobool61 = icmp ne i32 %79, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %for.end60
  %80 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m63 = getelementptr inbounds %struct.ptree, %struct.ptree* %80, i32 0, i32 1
  %81 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m63, align 8
  %82 = bitcast %struct.ptree_mask* %81 to i8*
  %83 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %84 = bitcast %struct.ptree_mask* %83 to i8*
  call void @bcopy(i8* %82, i8* %84, i64 16) #3
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end60
  %85 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m65 = getelementptr inbounds %struct.ptree, %struct.ptree* %85, i32 0, i32 1
  %86 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m65, align 8
  %87 = bitcast %struct.ptree_mask* %86 to i8*
  call void @free(i8* %87) #3
  %88 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %89 = bitcast %struct.ptree* %88 to i8*
  call void @free(i8* %89) #3
  store %struct.ptree* null, %struct.ptree** %n.addr, align 8
  %90 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen66 = getelementptr inbounds %struct.ptree, %struct.ptree* %90, i32 0, i32 2
  %91 = load i8, i8* %p_mlen66, align 8
  %inc67 = add i8 %91, 1
  store i8 %inc67, i8* %p_mlen66, align 8
  %92 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m68 = getelementptr inbounds %struct.ptree, %struct.ptree* %92, i32 0, i32 1
  %93 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m68, align 8
  %94 = bitcast %struct.ptree_mask* %93 to i8*
  call void @free(i8* %94) #3
  %95 = load %struct.ptree_mask*, %struct.ptree_mask** %buf, align 8
  %96 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m69 = getelementptr inbounds %struct.ptree, %struct.ptree* %96, i32 0, i32 1
  store %struct.ptree_mask* %95, %struct.ptree_mask** %p_m69, align 8
  %97 = load %struct.ptree*, %struct.ptree** %t, align 8
  store %struct.ptree* %97, %struct.ptree** %retval, align 8
  br label %return

if.end70:                                         ; preds = %do.end
  store i32 1, i32* %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc81, %if.end70
  %98 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %98, 32
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond71
  %99 = load i32, i32* %i, align 4
  %100 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key74 = getelementptr inbounds %struct.ptree, %struct.ptree* %100, i32 0, i32 0
  %101 = load i64, i64* %p_key74, align 8
  %call75 = call i64 @bit(i32 %99, i64 %101)
  %102 = load i32, i32* %i, align 4
  %103 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key76 = getelementptr inbounds %struct.ptree, %struct.ptree* %103, i32 0, i32 0
  %104 = load i64, i64* %p_key76, align 8
  %call77 = call i64 @bit(i32 %102, i64 %104)
  %cmp78 = icmp eq i64 %call75, %call77
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond71
  %105 = phi i1 [ false, %for.cond71 ], [ %cmp78, %land.rhs ]
  br i1 %105, label %for.body80, label %for.end83

for.body80:                                       ; preds = %land.end
  br label %for.inc81

for.inc81:                                        ; preds = %for.body80
  %106 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %106, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond71

for.end83:                                        ; preds = %land.end
  %107 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %p_b84 = getelementptr inbounds %struct.ptree, %struct.ptree* %107, i32 0, i32 3
  %108 = load i8, i8* %p_b84, align 1
  %conv85 = sext i8 %108 to i32
  %109 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key86 = getelementptr inbounds %struct.ptree, %struct.ptree* %109, i32 0, i32 0
  %110 = load i64, i64* %p_key86, align 8
  %call87 = call i64 @bit(i32 %conv85, i64 %110)
  %tobool88 = icmp ne i64 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.else93

if.then89:                                        ; preds = %for.end83
  %111 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %p_right90 = getelementptr inbounds %struct.ptree, %struct.ptree* %111, i32 0, i32 5
  %112 = load %struct.ptree*, %struct.ptree** %p_right90, align 8
  %113 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %114 = load i32, i32* %i, align 4
  %115 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %call91 = call %struct.ptree* @insertR(%struct.ptree* %112, %struct.ptree* %113, i32 %114, %struct.ptree* %115)
  %116 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %p_right92 = getelementptr inbounds %struct.ptree, %struct.ptree* %116, i32 0, i32 5
  store %struct.ptree* %call91, %struct.ptree** %p_right92, align 8
  br label %if.end97

if.else93:                                        ; preds = %for.end83
  %117 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %p_left94 = getelementptr inbounds %struct.ptree, %struct.ptree* %117, i32 0, i32 4
  %118 = load %struct.ptree*, %struct.ptree** %p_left94, align 8
  %119 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %120 = load i32, i32* %i, align 4
  %121 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %call95 = call %struct.ptree* @insertR(%struct.ptree* %118, %struct.ptree* %119, i32 %120, %struct.ptree* %121)
  %122 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  %p_left96 = getelementptr inbounds %struct.ptree, %struct.ptree* %122, i32 0, i32 4
  store %struct.ptree* %call95, %struct.ptree** %p_left96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else93, %if.then89
  %123 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  store %struct.ptree* %123, %struct.ptree** %retval, align 8
  br label %return

return:                                           ; preds = %if.end97, %if.end64, %if.then26, %if.then
  %124 = load %struct.ptree*, %struct.ptree** %retval, align 8
  ret %struct.ptree* %124
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bit(i32 %i, i64 %key) #1 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, i32* %i.addr, align 4
  store i64 %key, i64* %key.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.ptree* @insertR(%struct.ptree* %h, %struct.ptree* %n, i32 %d, %struct.ptree* %p) #0 {
entry:
  %retval = alloca %struct.ptree*, align 8
  %h.addr = alloca %struct.ptree*, align 8
  %n.addr = alloca %struct.ptree*, align 8
  %d.addr = alloca i32, align 4
  %p.addr = alloca %struct.ptree*, align 8
  store %struct.ptree* %h, %struct.ptree** %h.addr, align 8
  store %struct.ptree* %n, %struct.ptree** %n.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  store %struct.ptree* %p, %struct.ptree** %p.addr, align 8
  %0 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_b = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i32 0, i32 3
  %1 = load i8, i8* %p_b, align 1
  %conv = sext i8 %1 to i32
  %2 = load i32, i32* %d.addr, align 4
  %cmp = icmp sge i32 %conv, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_b2 = getelementptr inbounds %struct.ptree, %struct.ptree* %3, i32 0, i32 3
  %4 = load i8, i8* %p_b2, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load %struct.ptree*, %struct.ptree** %p.addr, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, %struct.ptree* %5, i32 0, i32 3
  %6 = load i8, i8* %p_b4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp sle i32 %conv3, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %d.addr, align 4
  %conv8 = trunc i32 %7 to i8
  %8 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %8, i32 0, i32 3
  store i8 %conv8, i8* %p_b9, align 1
  %9 = load i32, i32* %d.addr, align 4
  %10 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 0
  %11 = load i64, i64* %p_key, align 8
  %call = call i64 @bit(i32 %9, i64 %11)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ptree* [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %14, i32 0, i32 4
  store %struct.ptree* %cond, %struct.ptree** %p_left, align 8
  %15 = load i32, i32* %d.addr, align 4
  %16 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %16, i32 0, i32 0
  %17 = load i64, i64* %p_key10, align 8
  %call11 = call i64 @bit(i32 %15, i64 %17)
  %tobool12 = icmp ne i64 %call11, 0
  br i1 %tobool12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end
  %18 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  %19 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi %struct.ptree* [ %18, %cond.true13 ], [ %19, %cond.false14 ]
  %20 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %20, i32 0, i32 5
  store %struct.ptree* %cond16, %struct.ptree** %p_right, align 8
  %21 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  store %struct.ptree* %21, %struct.ptree** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %22 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_b17 = getelementptr inbounds %struct.ptree, %struct.ptree* %22, i32 0, i32 3
  %23 = load i8, i8* %p_b17, align 1
  %conv18 = sext i8 %23 to i32
  %24 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key19 = getelementptr inbounds %struct.ptree, %struct.ptree* %24, i32 0, i32 0
  %25 = load i64, i64* %p_key19, align 8
  %call20 = call i64 @bit(i32 %conv18, i64 %25)
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %26 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_right23 = getelementptr inbounds %struct.ptree, %struct.ptree* %26, i32 0, i32 5
  %27 = load %struct.ptree*, %struct.ptree** %p_right23, align 8
  %28 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %29 = load i32, i32* %d.addr, align 4
  %30 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %call24 = call %struct.ptree* @insertR(%struct.ptree* %27, %struct.ptree* %28, i32 %29, %struct.ptree* %30)
  %31 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_right25 = getelementptr inbounds %struct.ptree, %struct.ptree* %31, i32 0, i32 5
  store %struct.ptree* %call24, %struct.ptree** %p_right25, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end
  %32 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_left26 = getelementptr inbounds %struct.ptree, %struct.ptree* %32, i32 0, i32 4
  %33 = load %struct.ptree*, %struct.ptree** %p_left26, align 8
  %34 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %35 = load i32, i32* %d.addr, align 4
  %36 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %call27 = call %struct.ptree* @insertR(%struct.ptree* %33, %struct.ptree* %34, i32 %35, %struct.ptree* %36)
  %37 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  %p_left28 = getelementptr inbounds %struct.ptree, %struct.ptree* %37, i32 0, i32 4
  store %struct.ptree* %call27, %struct.ptree** %p_left28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %38 = load %struct.ptree*, %struct.ptree** %h.addr, align 8
  store %struct.ptree* %38, %struct.ptree** %retval, align 8
  br label %return

return:                                           ; preds = %if.end29, %cond.end15
  %39 = load %struct.ptree*, %struct.ptree** %retval, align 8
  ret %struct.ptree* %39
}

; Function Attrs: nounwind uwtable
define i32 @pat_remove(%struct.ptree* %n, %struct.ptree* %head) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct.ptree*, align 8
  %head.addr = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %g = alloca %struct.ptree*, align 8
  %pt = alloca %struct.ptree*, align 8
  %pp = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %buf = alloca %struct.ptree_mask*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %i = alloca i32, align 4
  store %struct.ptree* %n, %struct.ptree** %n.addr, align 8
  store %struct.ptree* %head, %struct.ptree** %head.addr, align 8
  %0 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %tobool = icmp ne %struct.ptree* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i32 0, i32 1
  %2 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8
  %tobool1 = icmp ne %struct.ptree_mask* %2, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.ptree*, %struct.ptree** %t, align 8
  %tobool3 = icmp ne %struct.ptree* %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  store %struct.ptree* %4, %struct.ptree** %t, align 8
  store %struct.ptree* %4, %struct.ptree** %p, align 8
  store %struct.ptree* %4, %struct.ptree** %g, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, %struct.ptree* %5, i32 0, i32 3
  %6 = load i8, i8* %p_b, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, i32* %i, align 4
  %7 = load %struct.ptree*, %struct.ptree** %p, align 8
  store %struct.ptree* %7, %struct.ptree** %g, align 8
  %8 = load %struct.ptree*, %struct.ptree** %t, align 8
  store %struct.ptree* %8, %struct.ptree** %p, align 8
  %9 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, %struct.ptree* %9, i32 0, i32 3
  %10 = load i8, i8* %p_b4, align 1
  %conv5 = sext i8 %10 to i32
  %11 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %11, i32 0, i32 0
  %12 = load i64, i64* %p_key, align 8
  %call = call i64 @bit(i32 %conv5, i64 %12)
  %tobool6 = icmp ne i64 %call, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %13 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %13, i32 0, i32 5
  %14 = load %struct.ptree*, %struct.ptree** %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %15 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 4
  %16 = load %struct.ptree*, %struct.ptree** %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ptree* [ %14, %cond.true ], [ %16, %cond.false ]
  store %struct.ptree* %cond, %struct.ptree** %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b7 = getelementptr inbounds %struct.ptree, %struct.ptree* %18, i32 0, i32 3
  %19 = load i8, i8* %p_b7, align 1
  %conv8 = sext i8 %19 to i32
  %cmp = icmp slt i32 %17, %conv8
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %20, i32 0, i32 0
  %21 = load i64, i64* %p_key10, align 8
  %22 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key11 = getelementptr inbounds %struct.ptree, %struct.ptree* %22, i32 0, i32 0
  %23 = load i64, i64* %p_key11, align 8
  %cmp12 = icmp ne i64 %21, %23
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %do.end
  %24 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %24, i32 0, i32 2
  %25 = load i8, i8* %p_mlen, align 8
  %conv16 = zext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 1
  br i1 %cmp17, label %if.then19, label %if.end111

if.then19:                                        ; preds = %if.end15
  %26 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b20 = getelementptr inbounds %struct.ptree, %struct.ptree* %26, i32 0, i32 3
  %27 = load i8, i8* %p_b20, align 1
  %conv21 = sext i8 %27 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then19
  %28 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m26 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 1
  %29 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m26, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %29, i32 0, i32 0
  %30 = load i64, i64* %pm_mask, align 8
  %31 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, %struct.ptree* %31, i32 0, i32 1
  %32 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m27, align 8
  %pm_mask28 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %32, i32 0, i32 0
  %33 = load i64, i64* %pm_mask28, align 8
  %cmp29 = icmp ne i64 %30, %33
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  store i32 0, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %34 = load %struct.ptree*, %struct.ptree** %p, align 8
  store %struct.ptree* %34, %struct.ptree** %pt, align 8
  store %struct.ptree* %34, %struct.ptree** %pp, align 8
  br label %do.body33

do.body33:                                        ; preds = %do.cond47, %if.end32
  %35 = load %struct.ptree*, %struct.ptree** %pt, align 8
  %p_b34 = getelementptr inbounds %struct.ptree, %struct.ptree* %35, i32 0, i32 3
  %36 = load i8, i8* %p_b34, align 1
  %conv35 = sext i8 %36 to i32
  store i32 %conv35, i32* %i, align 4
  %37 = load %struct.ptree*, %struct.ptree** %pt, align 8
  store %struct.ptree* %37, %struct.ptree** %pp, align 8
  %38 = load %struct.ptree*, %struct.ptree** %pt, align 8
  %p_b36 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 3
  %39 = load i8, i8* %p_b36, align 1
  %conv37 = sext i8 %39 to i32
  %40 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_key38 = getelementptr inbounds %struct.ptree, %struct.ptree* %40, i32 0, i32 0
  %41 = load i64, i64* %p_key38, align 8
  %call39 = call i64 @bit(i32 %conv37, i64 %41)
  %tobool40 = icmp ne i64 %call39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %do.body33
  %42 = load %struct.ptree*, %struct.ptree** %pt, align 8
  %p_right42 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 5
  %43 = load %struct.ptree*, %struct.ptree** %p_right42, align 8
  br label %cond.end45

cond.false43:                                     ; preds = %do.body33
  %44 = load %struct.ptree*, %struct.ptree** %pt, align 8
  %p_left44 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 4
  %45 = load %struct.ptree*, %struct.ptree** %p_left44, align 8
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %cond.true41
  %cond46 = phi %struct.ptree* [ %43, %cond.true41 ], [ %45, %cond.false43 ]
  store %struct.ptree* %cond46, %struct.ptree** %pt, align 8
  br label %do.cond47

do.cond47:                                        ; preds = %cond.end45
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.ptree*, %struct.ptree** %pt, align 8
  %p_b48 = getelementptr inbounds %struct.ptree, %struct.ptree* %47, i32 0, i32 3
  %48 = load i8, i8* %p_b48, align 1
  %conv49 = sext i8 %48 to i32
  %cmp50 = icmp slt i32 %46, %conv49
  br i1 %cmp50, label %do.body33, label %do.end52

do.end52:                                         ; preds = %do.cond47
  %49 = load %struct.ptree*, %struct.ptree** %pp, align 8
  %p_b53 = getelementptr inbounds %struct.ptree, %struct.ptree* %49, i32 0, i32 3
  %50 = load i8, i8* %p_b53, align 1
  %conv54 = sext i8 %50 to i32
  %51 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_key55 = getelementptr inbounds %struct.ptree, %struct.ptree* %51, i32 0, i32 0
  %52 = load i64, i64* %p_key55, align 8
  %call56 = call i64 @bit(i32 %conv54, i64 %52)
  %tobool57 = icmp ne i64 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.else

if.then58:                                        ; preds = %do.end52
  %53 = load %struct.ptree*, %struct.ptree** %t, align 8
  %54 = load %struct.ptree*, %struct.ptree** %pp, align 8
  %p_right59 = getelementptr inbounds %struct.ptree, %struct.ptree* %54, i32 0, i32 5
  store %struct.ptree* %53, %struct.ptree** %p_right59, align 8
  br label %if.end61

if.else:                                          ; preds = %do.end52
  %55 = load %struct.ptree*, %struct.ptree** %t, align 8
  %56 = load %struct.ptree*, %struct.ptree** %pp, align 8
  %p_left60 = getelementptr inbounds %struct.ptree, %struct.ptree* %56, i32 0, i32 4
  store %struct.ptree* %55, %struct.ptree** %p_left60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58
  %57 = load %struct.ptree*, %struct.ptree** %g, align 8
  %p_b62 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 3
  %58 = load i8, i8* %p_b62, align 1
  %conv63 = sext i8 %58 to i32
  %59 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key64 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 0
  %60 = load i64, i64* %p_key64, align 8
  %call65 = call i64 @bit(i32 %conv63, i64 %60)
  %tobool66 = icmp ne i64 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.else80

if.then67:                                        ; preds = %if.end61
  %61 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_b68 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 3
  %62 = load i8, i8* %p_b68, align 1
  %conv69 = sext i8 %62 to i32
  %63 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key70 = getelementptr inbounds %struct.ptree, %struct.ptree* %63, i32 0, i32 0
  %64 = load i64, i64* %p_key70, align 8
  %call71 = call i64 @bit(i32 %conv69, i64 %64)
  %tobool72 = icmp ne i64 %call71, 0
  br i1 %tobool72, label %cond.true73, label %cond.false75

cond.true73:                                      ; preds = %if.then67
  %65 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_left74 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 4
  %66 = load %struct.ptree*, %struct.ptree** %p_left74, align 8
  br label %cond.end77

cond.false75:                                     ; preds = %if.then67
  %67 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_right76 = getelementptr inbounds %struct.ptree, %struct.ptree* %67, i32 0, i32 5
  %68 = load %struct.ptree*, %struct.ptree** %p_right76, align 8
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true73
  %cond78 = phi %struct.ptree* [ %66, %cond.true73 ], [ %68, %cond.false75 ]
  %69 = load %struct.ptree*, %struct.ptree** %g, align 8
  %p_right79 = getelementptr inbounds %struct.ptree, %struct.ptree* %69, i32 0, i32 5
  store %struct.ptree* %cond78, %struct.ptree** %p_right79, align 8
  br label %if.end93

if.else80:                                        ; preds = %if.end61
  %70 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_b81 = getelementptr inbounds %struct.ptree, %struct.ptree* %70, i32 0, i32 3
  %71 = load i8, i8* %p_b81, align 1
  %conv82 = sext i8 %71 to i32
  %72 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_key83 = getelementptr inbounds %struct.ptree, %struct.ptree* %72, i32 0, i32 0
  %73 = load i64, i64* %p_key83, align 8
  %call84 = call i64 @bit(i32 %conv82, i64 %73)
  %tobool85 = icmp ne i64 %call84, 0
  br i1 %tobool85, label %cond.true86, label %cond.false88

cond.true86:                                      ; preds = %if.else80
  %74 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_left87 = getelementptr inbounds %struct.ptree, %struct.ptree* %74, i32 0, i32 4
  %75 = load %struct.ptree*, %struct.ptree** %p_left87, align 8
  br label %cond.end90

cond.false88:                                     ; preds = %if.else80
  %76 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_right89 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 5
  %77 = load %struct.ptree*, %struct.ptree** %p_right89, align 8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false88, %cond.true86
  %cond91 = phi %struct.ptree* [ %75, %cond.true86 ], [ %77, %cond.false88 ]
  %78 = load %struct.ptree*, %struct.ptree** %g, align 8
  %p_left92 = getelementptr inbounds %struct.ptree, %struct.ptree* %78, i32 0, i32 4
  store %struct.ptree* %cond91, %struct.ptree** %p_left92, align 8
  br label %if.end93

if.end93:                                         ; preds = %cond.end90, %cond.end77
  %79 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m94 = getelementptr inbounds %struct.ptree, %struct.ptree* %79, i32 0, i32 1
  %80 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m94, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %80, i32 0, i32 1
  %81 = load i8*, i8** %pm_data, align 8
  %tobool95 = icmp ne i8* %81, null
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end93
  %82 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m97 = getelementptr inbounds %struct.ptree, %struct.ptree* %82, i32 0, i32 1
  %83 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m97, align 8
  %pm_data98 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %83, i32 0, i32 1
  %84 = load i8*, i8** %pm_data98, align 8
  call void @free(i8* %84) #3
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93
  %85 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m100 = getelementptr inbounds %struct.ptree, %struct.ptree* %85, i32 0, i32 1
  %86 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m100, align 8
  %87 = bitcast %struct.ptree_mask* %86 to i8*
  call void @free(i8* %87) #3
  %88 = load %struct.ptree*, %struct.ptree** %t, align 8
  %89 = load %struct.ptree*, %struct.ptree** %p, align 8
  %cmp101 = icmp ne %struct.ptree* %88, %89
  br i1 %cmp101, label %if.then103, label %if.end110

if.then103:                                       ; preds = %if.end99
  %90 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_key104 = getelementptr inbounds %struct.ptree, %struct.ptree* %90, i32 0, i32 0
  %91 = load i64, i64* %p_key104, align 8
  %92 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key105 = getelementptr inbounds %struct.ptree, %struct.ptree* %92, i32 0, i32 0
  store i64 %91, i64* %p_key105, align 8
  %93 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_m106 = getelementptr inbounds %struct.ptree, %struct.ptree* %93, i32 0, i32 1
  %94 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m106, align 8
  %95 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m107 = getelementptr inbounds %struct.ptree, %struct.ptree* %95, i32 0, i32 1
  store %struct.ptree_mask* %94, %struct.ptree_mask** %p_m107, align 8
  %96 = load %struct.ptree*, %struct.ptree** %p, align 8
  %p_mlen108 = getelementptr inbounds %struct.ptree, %struct.ptree* %96, i32 0, i32 2
  %97 = load i8, i8* %p_mlen108, align 8
  %98 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen109 = getelementptr inbounds %struct.ptree, %struct.ptree* %98, i32 0, i32 2
  store i8 %97, i8* %p_mlen109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %if.end99
  %99 = load %struct.ptree*, %struct.ptree** %p, align 8
  %100 = bitcast %struct.ptree* %99 to i8*
  call void @free(i8* %100) #3
  store i32 1, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end111
  %101 = load i32, i32* %i, align 4
  %102 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen112 = getelementptr inbounds %struct.ptree, %struct.ptree* %102, i32 0, i32 2
  %103 = load i8, i8* %p_mlen112, align 8
  %conv113 = zext i8 %103 to i32
  %cmp114 = icmp slt i32 %101, %conv113
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m116 = getelementptr inbounds %struct.ptree, %struct.ptree* %104, i32 0, i32 1
  %105 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m116, align 8
  %pm_mask117 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %105, i32 0, i32 0
  %106 = load i64, i64* %pm_mask117, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom = sext i32 %107 to i64
  %108 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m118 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 1
  %109 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m118, align 8
  %arrayidx = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %109, i64 %idxprom
  %pm_mask119 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx, i32 0, i32 0
  %110 = load i64, i64* %pm_mask119, align 8
  %cmp120 = icmp eq i64 %106, %110
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.body
  br label %for.end

if.end123:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end123
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then122, %for.cond
  %112 = load i32, i32* %i, align 4
  %113 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen124 = getelementptr inbounds %struct.ptree, %struct.ptree* %113, i32 0, i32 2
  %114 = load i8, i8* %p_mlen124, align 8
  %conv125 = zext i8 %114 to i32
  %cmp126 = icmp sge i32 %112, %conv125
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end129:                                        ; preds = %for.end
  %115 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen130 = getelementptr inbounds %struct.ptree, %struct.ptree* %115, i32 0, i32 2
  %116 = load i8, i8* %p_mlen130, align 8
  %conv131 = zext i8 %116 to i32
  %sub = sub nsw i32 %conv131, 1
  %conv132 = sext i32 %sub to i64
  %mul = mul i64 16, %conv132
  %call133 = call noalias i8* @malloc(i64 %mul) #3
  %117 = bitcast i8* %call133 to %struct.ptree_mask*
  store %struct.ptree_mask* %117, %struct.ptree_mask** %buf, align 8
  store i32 0, i32* %i, align 4
  %118 = load %struct.ptree_mask*, %struct.ptree_mask** %buf, align 8
  store %struct.ptree_mask* %118, %struct.ptree_mask** %pm, align 8
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.end129
  %119 = load i32, i32* %i, align 4
  %120 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen135 = getelementptr inbounds %struct.ptree, %struct.ptree* %120, i32 0, i32 2
  %121 = load i8, i8* %p_mlen135, align 8
  %conv136 = zext i8 %121 to i32
  %cmp137 = icmp slt i32 %119, %conv136
  br i1 %cmp137, label %for.body139, label %for.end153

for.body139:                                      ; preds = %for.cond134
  %122 = load %struct.ptree*, %struct.ptree** %n.addr, align 8
  %p_m140 = getelementptr inbounds %struct.ptree, %struct.ptree* %122, i32 0, i32 1
  %123 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m140, align 8
  %pm_mask141 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %123, i32 0, i32 0
  %124 = load i64, i64* %pm_mask141, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %125 to i64
  %126 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m143 = getelementptr inbounds %struct.ptree, %struct.ptree* %126, i32 0, i32 1
  %127 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m143, align 8
  %arrayidx144 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %127, i64 %idxprom142
  %pm_mask145 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx144, i32 0, i32 0
  %128 = load i64, i64* %pm_mask145, align 8
  %cmp146 = icmp ne i64 %124, %128
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %for.body139
  %129 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m149 = getelementptr inbounds %struct.ptree, %struct.ptree* %129, i32 0, i32 1
  %130 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m149, align 8
  %131 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %131 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %130, i64 %idx.ext
  %132 = bitcast %struct.ptree_mask* %add.ptr to i8*
  %133 = load %struct.ptree_mask*, %struct.ptree_mask** %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %133, i32 1
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %pm, align 8
  %134 = bitcast %struct.ptree_mask* %133 to i8*
  call void @bcopy(i8* %132, i8* %134, i64 16) #3
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %for.body139
  br label %for.inc151

for.inc151:                                       ; preds = %if.end150
  %135 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %135, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond134

for.end153:                                       ; preds = %for.cond134
  %136 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_mlen154 = getelementptr inbounds %struct.ptree, %struct.ptree* %136, i32 0, i32 2
  %137 = load i8, i8* %p_mlen154, align 8
  %dec = add i8 %137, -1
  store i8 %dec, i8* %p_mlen154, align 8
  %138 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m155 = getelementptr inbounds %struct.ptree, %struct.ptree* %138, i32 0, i32 1
  %139 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m155, align 8
  %140 = bitcast %struct.ptree_mask* %139 to i8*
  call void @free(i8* %140) #3
  %141 = load %struct.ptree_mask*, %struct.ptree_mask** %buf, align 8
  %142 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m156 = getelementptr inbounds %struct.ptree, %struct.ptree* %142, i32 0, i32 1
  store %struct.ptree_mask* %141, %struct.ptree_mask** %p_m156, align 8
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end153, %if.then128, %if.end110, %if.then31, %if.then24, %if.then14, %if.then
  %143 = load i32, i32* %retval, align 4
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_search(i64 %key, %struct.ptree* %head) #0 {
entry:
  %retval = alloca %struct.ptree*, align 8
  %key.addr = alloca i64, align 8
  %head.addr = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %i = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store %struct.ptree* %head, %struct.ptree** %head.addr, align 8
  store %struct.ptree* null, %struct.ptree** %p, align 8
  %0 = load %struct.ptree*, %struct.ptree** %head.addr, align 8
  store %struct.ptree* %0, %struct.ptree** %t, align 8
  %1 = load %struct.ptree*, %struct.ptree** %t, align 8
  %tobool = icmp ne %struct.ptree* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.ptree* null, %struct.ptree** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %2, i32 0, i32 0
  %3 = load i64, i64* %p_key, align 8
  %4 = load i64, i64* %key.addr, align 8
  %5 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %5, i32 0, i32 1
  %6 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %6, i32 0, i32 0
  %7 = load i64, i64* %pm_mask, align 8
  %and = and i64 %4, %7
  %cmp = icmp eq i64 %3, %and
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %do.body
  %8 = load %struct.ptree*, %struct.ptree** %t, align 8
  store %struct.ptree* %8, %struct.ptree** %p, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %do.body
  %9 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, %struct.ptree* %9, i32 0, i32 3
  %10 = load i8, i8* %p_b, align 1
  %conv = sext i8 %10 to i32
  store i32 %conv, i32* %i, align 4
  %11 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b3 = getelementptr inbounds %struct.ptree, %struct.ptree* %11, i32 0, i32 3
  %12 = load i8, i8* %p_b3, align 1
  %conv4 = sext i8 %12 to i32
  %13 = load i64, i64* %key.addr, align 8
  %call = call i64 @bit(i32 %conv4, i64 %13)
  %tobool5 = icmp ne i64 %call, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end2
  %14 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %14, i32 0, i32 5
  %15 = load %struct.ptree*, %struct.ptree** %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end2
  %16 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %16, i32 0, i32 4
  %17 = load %struct.ptree*, %struct.ptree** %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ptree* [ %15, %cond.true ], [ %17, %cond.false ]
  store %struct.ptree* %cond, %struct.ptree** %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_b6 = getelementptr inbounds %struct.ptree, %struct.ptree* %19, i32 0, i32 3
  %20 = load i8, i8* %p_b6, align 1
  %conv7 = sext i8 %20 to i32
  %cmp8 = icmp slt i32 %18, %conv7
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 0
  %22 = load i64, i64* %p_key10, align 8
  %23 = load i64, i64* %key.addr, align 8
  %24 = load %struct.ptree*, %struct.ptree** %t, align 8
  %p_m11 = getelementptr inbounds %struct.ptree, %struct.ptree* %24, i32 0, i32 1
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m11, align 8
  %pm_mask12 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 0
  %26 = load i64, i64* %pm_mask12, align 8
  %and13 = and i64 %23, %26
  %cmp14 = icmp eq i64 %22, %and13
  br i1 %cmp14, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %do.end
  %27 = load %struct.ptree*, %struct.ptree** %t, align 8
  br label %cond.end18

cond.false17:                                     ; preds = %do.end
  %28 = load %struct.ptree*, %struct.ptree** %p, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi %struct.ptree* [ %27, %cond.true16 ], [ %28, %cond.false17 ]
  store %struct.ptree* %cond19, %struct.ptree** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end18, %if.then
  %29 = load %struct.ptree*, %struct.ptree** %retval, align 8
  ret %struct.ptree* %29
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final 297803)"}
