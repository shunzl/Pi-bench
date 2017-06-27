; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

; Function Attrs: nounwind
define %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec5 = alloca <4 x i8>, align 16
  %Recovery1 = alloca i8, align 1
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec8 = alloca <4 x i64>, align 16
  %CastInst3 = alloca i64, align 4
  %CastInstVec4 = alloca <4 x i64>, align 16
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree_mask*, align 8
  %8 = alloca %struct.ptree_mask*, align 8
  %allocaVec9 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %11 = load %struct.ptree*, %struct.ptree** %5, align 8
  %12 = icmp ne %struct.ptree* %11, null
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %13
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %16, %13, %2
  store %struct.ptree* null, %struct.ptree** %3, align 8
  br label %275

; <label>:22:                                     ; preds = %16
  %23 = load %struct.ptree*, %struct.ptree** %4, align 8
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %23, i32 0, i32 1
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %24, align 8
  %26 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ptree*, %struct.ptree** %4, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %32, %struct.ptree** %6, align 8
  br label %33

; <label>:33:                                     ; preds = %57, %22
  %34 = load %struct.ptree*, %struct.ptree** %6, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ptree*, %struct.ptree** %6, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.ptree*, %struct.ptree** %4, align 8
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @bit(i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %33
  %48 = load %struct.ptree*, %struct.ptree** %6, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 5
  %50 = load %struct.ptree*, %struct.ptree** %49, align 8
  br label %55

; <label>:51:                                     ; preds = %33
  %52 = load %struct.ptree*, %struct.ptree** %6, align 8
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 4
  %54 = load %struct.ptree*, %struct.ptree** %53, align 8
  br label %55

; <label>:55:                                     ; preds = %51, %47
  %56 = phi %struct.ptree* [ %50, %47 ], [ %54, %51 ]
  store %struct.ptree* %56, %struct.ptree** %6, align 8
  br label %57

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ptree*, %struct.ptree** %6, align 8
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %33, label %64

; <label>:64:                                     ; preds = %57
  %65 = load %struct.ptree*, %struct.ptree** %4, align 8
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ptree*, %struct.ptree** %6, align 8
  %69 = getelementptr inbounds %struct.ptree, %struct.ptree* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %214

; <label>:72:                                     ; preds = %64
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %9, align 4
  br label %73

; <label>:73:                                     ; preds = %116, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ptree*, %struct.ptree** %6, align 8
  %76 = getelementptr inbounds %struct.ptree, %struct.ptree* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 8
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %120

; <label>:80:                                     ; preds = %73
  %81 = load %struct.ptree*, %struct.ptree** %4, align 8
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 1
  %83 = load %struct.ptree_mask*, %struct.ptree_mask** %82, align 8
  %84 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ptree*, %struct.ptree** %6, align 8
  %87 = getelementptr inbounds %struct.ptree, %struct.ptree* %86, i32 0, i32 1
  %88 = load %struct.ptree_mask*, %struct.ptree_mask** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %88, i64 %90
  %92 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %85, %93
  br i1 %94, label %95, label %115

; <label>:95:                                     ; preds = %80
  %96 = load %struct.ptree*, %struct.ptree** %4, align 8
  %97 = getelementptr inbounds %struct.ptree, %struct.ptree* %96, i32 0, i32 1
  %98 = load %struct.ptree_mask*, %struct.ptree_mask** %97, align 8
  %99 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ptree*, %struct.ptree** %6, align 8
  %102 = getelementptr inbounds %struct.ptree, %struct.ptree* %101, i32 0, i32 1
  %103 = load %struct.ptree_mask*, %struct.ptree_mask** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %103, i64 %105
  %107 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %106, i32 0, i32 1
  store i8* %100, i8** %107, align 8
  %108 = load %struct.ptree*, %struct.ptree** %4, align 8
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 1
  %110 = load %struct.ptree_mask*, %struct.ptree_mask** %109, align 8
  %111 = bitcast %struct.ptree_mask* %110 to i8*
  call void @free(i8* %111)
  %112 = load %struct.ptree*, %struct.ptree** %4, align 8
  %113 = bitcast %struct.ptree* %112 to i8*
  call void @free(i8* %113)
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %114 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %114, %struct.ptree** %3, align 8
  br label %275

; <label>:115:                                    ; preds = %80
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %117, i32 0
  %insertElmt11 = insertelement <4 x i32> %insertElmt, i32 %117, i32 1
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %117, i32 2
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %117, i32 3
  store <4 x i32> %insertElmt13, <4 x i32>* %allocaVec9, align 16
  %118 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop = add <4 x i32> %118, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec9
  %119 = add nsw i32 %117, 1
  store i32 %119, i32* %9, align 4
  br label %73

; <label>:120:                                    ; preds = %73
  %121 = load %struct.ptree*, %struct.ptree** %6, align 8
  %122 = getelementptr inbounds %struct.ptree, %struct.ptree* %121, i32 0, i32 2
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %CastInst
  %125 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %125, i32 0
  %insertCast14 = insertelement <4 x i32> %insertCast, i32 %125, i32 1
  %insertCast15 = insertelement <4 x i32> %insertCast14, i32 %125, i32 2
  %insertCast16 = insertelement <4 x i32> %insertCast15, i32 %125, i32 3
  store <4 x i32> %insertCast16, <4 x i32>* %CastInstVec, align 4
  %126 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop17 = add <4 x i32> %126, <i32 1, i32 1, i32 1, i32 1>
  %127 = add nsw i32 %124, 1
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %CastInst3
  %129 = load i64, i64* %CastInst3, align 4
  %insertCast18 = insertelement <4 x i64> undef, i64 %129, i32 0
  %insertCast19 = insertelement <4 x i64> %insertCast18, i64 %129, i32 1
  %insertCast20 = insertelement <4 x i64> %insertCast19, i64 %129, i32 2
  %insertCast21 = insertelement <4 x i64> %insertCast20, i64 %129, i32 3
  store <4 x i64> %insertCast21, <4 x i64>* %CastInstVec4, align 4
  %130 = load <4 x i64>, <4 x i64>* %CastInstVec4, align 4
  %Vop22 = mul <4 x i64> <i64 16, i64 16, i64 16, i64 16>, %130
  %131 = mul i64 16, %128
  %132 = call i8* @malloc(i64 %131)
  %133 = bitcast i8* %132 to %struct.ptree_mask*
  store %struct.ptree_mask* %133, %struct.ptree_mask** %7, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec10
  store i32 0, i32* %10, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %9, align 4
  %134 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  store %struct.ptree_mask* %134, %struct.ptree_mask** %8, align 8
  br label %135

; <label>:135:                                    ; preds = %182, %120
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.ptree*, %struct.ptree** %6, align 8
  %138 = getelementptr inbounds %struct.ptree, %struct.ptree* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 8
  %140 = zext i8 %139 to i32
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %185

; <label>:142:                                    ; preds = %135
  %143 = load %struct.ptree*, %struct.ptree** %4, align 8
  %144 = getelementptr inbounds %struct.ptree, %struct.ptree* %143, i32 0, i32 1
  %145 = load %struct.ptree_mask*, %struct.ptree_mask** %144, align 8
  %146 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ptree*, %struct.ptree** %6, align 8
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %148, i32 0, i32 1
  %150 = load %struct.ptree_mask*, %struct.ptree_mask** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %150, i64 %152
  %154 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ugt i64 %147, %155
  br i1 %156, label %157, label %170

; <label>:157:                                    ; preds = %142
  %158 = load %struct.ptree*, %struct.ptree** %6, align 8
  %159 = getelementptr inbounds %struct.ptree, %struct.ptree* %158, i32 0, i32 1
  %160 = load %struct.ptree_mask*, %struct.ptree_mask** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %160, i64 %162
  %164 = bitcast %struct.ptree_mask* %163 to i8*
  %165 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %166 = bitcast %struct.ptree_mask* %165 to i8*
  call void @bcopy(i8* %164, i8* %166, i64 16)
  %167 = load i32, i32* %9, align 4
  %168 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop23 = add <4 x i32> %168, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop23, <4 x i32>* %allocaVec9
  %169 = add nsw i32 %167, 1
  store i32 %169, i32* %9, align 4
  br label %181

; <label>:170:                                    ; preds = %142
  %171 = load %struct.ptree*, %struct.ptree** %4, align 8
  %172 = getelementptr inbounds %struct.ptree, %struct.ptree* %171, i32 0, i32 1
  %173 = load %struct.ptree_mask*, %struct.ptree_mask** %172, align 8
  %174 = bitcast %struct.ptree_mask* %173 to i8*
  %175 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %176 = bitcast %struct.ptree_mask* %175 to i8*
  call void @bcopy(i8* %174, i8* %176, i64 16)
  %177 = load %struct.ptree*, %struct.ptree** %4, align 8
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 1
  %179 = load %struct.ptree_mask*, %struct.ptree_mask** %178, align 8
  %180 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %179, i32 0, i32 0
  store i64 4294967295, i64* %180, align 8
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec10
  store i32 1, i32* %10, align 4
  br label %181

; <label>:181:                                    ; preds = %170, %157
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %184 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %183, i32 1
  store %struct.ptree_mask* %184, %struct.ptree_mask** %8, align 8
  br label %135

; <label>:185:                                    ; preds = %135
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

; <label>:188:                                    ; preds = %185
  %189 = load %struct.ptree*, %struct.ptree** %4, align 8
  %190 = getelementptr inbounds %struct.ptree, %struct.ptree* %189, i32 0, i32 1
  %191 = load %struct.ptree_mask*, %struct.ptree_mask** %190, align 8
  %192 = bitcast %struct.ptree_mask* %191 to i8*
  %193 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %194 = bitcast %struct.ptree_mask* %193 to i8*
  call void @bcopy(i8* %192, i8* %194, i64 16)
  br label %195

; <label>:195:                                    ; preds = %188, %185
  %196 = load %struct.ptree*, %struct.ptree** %4, align 8
  %197 = getelementptr inbounds %struct.ptree, %struct.ptree* %196, i32 0, i32 1
  %198 = load %struct.ptree_mask*, %struct.ptree_mask** %197, align 8
  %199 = bitcast %struct.ptree_mask* %198 to i8*
  call void @free(i8* %199)
  %200 = load %struct.ptree*, %struct.ptree** %4, align 8
  %201 = bitcast %struct.ptree* %200 to i8*
  call void @free(i8* %201)
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %202 = load %struct.ptree*, %struct.ptree** %6, align 8
  %203 = getelementptr inbounds %struct.ptree, %struct.ptree* %202, i32 0, i32 2
  %204 = load i8, i8* %203, align 8
  %205 = add i8 %204, 1
  store i8 %205, i8* %203, align 8
  %206 = load %struct.ptree*, %struct.ptree** %6, align 8
  %207 = getelementptr inbounds %struct.ptree, %struct.ptree* %206, i32 0, i32 1
  %208 = load %struct.ptree_mask*, %struct.ptree_mask** %207, align 8
  %209 = bitcast %struct.ptree_mask* %208 to i8*
  call void @free(i8* %209)
  %210 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  %211 = load %struct.ptree*, %struct.ptree** %6, align 8
  %212 = getelementptr inbounds %struct.ptree, %struct.ptree* %211, i32 0, i32 1
  store %struct.ptree_mask* %210, %struct.ptree_mask** %212, align 8
  %213 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %213, %struct.ptree** %3, align 8
  br label %275

; <label>:214:                                    ; preds = %64
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %9, align 4
  br label %215

; <label>:215:                                    ; preds = %242, %214
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %216, 32
  br i1 %217, label %218, label %230

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.ptree*, %struct.ptree** %4, align 8
  %221 = getelementptr inbounds %struct.ptree, %struct.ptree* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @bit(i32 %219, i64 %222)
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.ptree*, %struct.ptree** %6, align 8
  %226 = getelementptr inbounds %struct.ptree, %struct.ptree* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @bit(i32 %224, i64 %227)
  %229 = icmp eq i64 %223, %228
  br label %230

; <label>:230:                                    ; preds = %218, %215
  %231 = phi i1 [ false, %215 ], [ %229, %218 ]
  br i1 %231, label %232, label %243

; <label>:232:                                    ; preds = %230
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = load i32, i32* %9, align 4
  %235 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop24 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec9
  %236 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE = extractelement <4 x i32> %236, i64 0
  %extractE25 = extractelement <4 x i32> %236, i64 1
  %extractE26 = extractelement <4 x i32> %236, i64 2
  %sum = add i32 %extractE, %extractE25
  %sum27 = add i32 %sum, %extractE26
  %237 = add nsw i32 %234, 1
  %Fmul = mul i32 %237, 3
  store i32 %237, i32* %Recovery2
  %Fcmp = icmp ne i32 %sum27, %Fmul
  br i1 %Fcmp, label %238, label %242

; <label>:238:                                    ; preds = %233
  %remThree = sdiv i32 %sum27, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %239, label %240

; <label>:239:                                    ; preds = %238
  store i32 %237, i32* %Recovery2, align 4
  br label %241

; <label>:240:                                    ; preds = %238
  store i32 %extractE, i32* %Recovery2, align 4
  br label %241

; <label>:241:                                    ; preds = %240, %239
  br label %242

; <label>:242:                                    ; preds = %233, %241
  %ReplaceInst = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst, i32* %9, align 4
  br label %215

; <label>:243:                                    ; preds = %230
  %244 = load %struct.ptree*, %struct.ptree** %5, align 8
  %245 = getelementptr inbounds %struct.ptree, %struct.ptree* %244, i32 0, i32 3
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = load %struct.ptree*, %struct.ptree** %4, align 8
  %249 = getelementptr inbounds %struct.ptree, %struct.ptree* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @bit(i32 %247, i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %263

; <label>:253:                                    ; preds = %243
  %254 = load %struct.ptree*, %struct.ptree** %5, align 8
  %255 = getelementptr inbounds %struct.ptree, %struct.ptree* %254, i32 0, i32 5
  %256 = load %struct.ptree*, %struct.ptree** %255, align 8
  %257 = load %struct.ptree*, %struct.ptree** %4, align 8
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.ptree*, %struct.ptree** %5, align 8
  %260 = call %struct.ptree* @insertR(%struct.ptree* %256, %struct.ptree* %257, i32 %258, %struct.ptree* %259)
  %261 = load %struct.ptree*, %struct.ptree** %5, align 8
  %262 = getelementptr inbounds %struct.ptree, %struct.ptree* %261, i32 0, i32 5
  store %struct.ptree* %260, %struct.ptree** %262, align 8
  br label %273

; <label>:263:                                    ; preds = %243
  %264 = load %struct.ptree*, %struct.ptree** %5, align 8
  %265 = getelementptr inbounds %struct.ptree, %struct.ptree* %264, i32 0, i32 4
  %266 = load %struct.ptree*, %struct.ptree** %265, align 8
  %267 = load %struct.ptree*, %struct.ptree** %4, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.ptree*, %struct.ptree** %5, align 8
  %270 = call %struct.ptree* @insertR(%struct.ptree* %266, %struct.ptree* %267, i32 %268, %struct.ptree* %269)
  %271 = load %struct.ptree*, %struct.ptree** %5, align 8
  %272 = getelementptr inbounds %struct.ptree, %struct.ptree* %271, i32 0, i32 4
  store %struct.ptree* %270, %struct.ptree** %272, align 8
  br label %273

; <label>:273:                                    ; preds = %263, %253
  %274 = load %struct.ptree*, %struct.ptree** %4, align 8
  store %struct.ptree* %274, %struct.ptree** %3, align 8
  br label %275

; <label>:275:                                    ; preds = %273, %195, %95, %21
  %276 = load %struct.ptree*, %struct.ptree** %3, align 8
  ret %struct.ptree* %276
}

; Function Attrs: inlinehint nounwind
define internal i64 @bit(i32, i64) #1 {
  %allocaVec = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %5, i32 0
  %insertElmt3 = insertelement <4 x i64> %insertElmt, i64 %5, i32 1
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %5, i32 2
  %insertElmt5 = insertelement <4 x i64> %insertElmt4, i64 %5, i32 3
  store <4 x i64> %insertElmt5, <4 x i64>* %allocaVec2, align 16
  %6 = load i32, i32* %3, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %6, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %6, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %6, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %6, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec1, align 16
  %7 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = sub <4 x i32> <i32 31, i32 31, i32 31, i32 31>, %7
  %8 = sub nsw i32 31, %6
  %Vop10 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %Vop
  %9 = shl i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = load <4 x i64>, <4 x i64>* %allocaVec2, align 16
  store i64 %10, i64* %CastInst
  %12 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %12, i32 0
  %insertCast11 = insertelement <4 x i64> %insertCast, i64 %12, i32 1
  %insertCast12 = insertelement <4 x i64> %insertCast11, i64 %12, i32 2
  %insertCast13 = insertelement <4 x i64> %insertCast12, i64 %12, i32 3
  store <4 x i64> %insertCast13, <4 x i64>* %CastInstVec, align 4
  %13 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop14 = and <4 x i64> %11, %13
  %14 = and i64 %5, %10
  ret i64 %14
}

declare void @free(i8*) #2

declare i8* @malloc(i64) #2

declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind
define internal %struct.ptree* @insertR(%struct.ptree*, %struct.ptree*, i32, %struct.ptree*) #0 {
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %allocaVec = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.ptree*, align 8
  store %struct.ptree* %0, %struct.ptree** %6, align 8
  store %struct.ptree* %1, %struct.ptree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ptree* %3, %struct.ptree** %9, align 8
  %10 = load %struct.ptree*, %struct.ptree** %6, align 8
  %11 = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %4
  %17 = load %struct.ptree*, %struct.ptree** %6, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 3
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct.ptree*, %struct.ptree** %9, align 8
  %22 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %60

; <label>:26:                                     ; preds = %16, %4
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ptree*, %struct.ptree** %7, align 8
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @bit(i32 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %26
  %38 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %41

; <label>:39:                                     ; preds = %26
  %40 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %41

; <label>:41:                                     ; preds = %39, %37
  %42 = phi %struct.ptree* [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.ptree*, %struct.ptree** %7, align 8
  %44 = getelementptr inbounds %struct.ptree, %struct.ptree* %43, i32 0, i32 4
  store %struct.ptree* %42, %struct.ptree** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ptree*, %struct.ptree** %7, align 8
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @bit(i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %41
  %52 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %55

; <label>:53:                                     ; preds = %41
  %54 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %55

; <label>:55:                                     ; preds = %53, %51
  %56 = phi %struct.ptree* [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.ptree*, %struct.ptree** %7, align 8
  %58 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 5
  store %struct.ptree* %56, %struct.ptree** %58, align 8
  %59 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %59, %struct.ptree** %5, align 8
  br label %92

; <label>:60:                                     ; preds = %16
  %61 = load %struct.ptree*, %struct.ptree** %6, align 8
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 3
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load %struct.ptree*, %struct.ptree** %7, align 8
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @bit(i32 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

; <label>:70:                                     ; preds = %60
  %71 = load %struct.ptree*, %struct.ptree** %6, align 8
  %72 = getelementptr inbounds %struct.ptree, %struct.ptree* %71, i32 0, i32 5
  %73 = load %struct.ptree*, %struct.ptree** %72, align 8
  %74 = load %struct.ptree*, %struct.ptree** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ptree*, %struct.ptree** %6, align 8
  %77 = call %struct.ptree* @insertR(%struct.ptree* %73, %struct.ptree* %74, i32 %75, %struct.ptree* %76)
  %78 = load %struct.ptree*, %struct.ptree** %6, align 8
  %79 = getelementptr inbounds %struct.ptree, %struct.ptree* %78, i32 0, i32 5
  store %struct.ptree* %77, %struct.ptree** %79, align 8
  br label %90

; <label>:80:                                     ; preds = %60
  %81 = load %struct.ptree*, %struct.ptree** %6, align 8
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 4
  %83 = load %struct.ptree*, %struct.ptree** %82, align 8
  %84 = load %struct.ptree*, %struct.ptree** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ptree*, %struct.ptree** %6, align 8
  %87 = call %struct.ptree* @insertR(%struct.ptree* %83, %struct.ptree* %84, i32 %85, %struct.ptree* %86)
  %88 = load %struct.ptree*, %struct.ptree** %6, align 8
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 4
  store %struct.ptree* %87, %struct.ptree** %89, align 8
  br label %90

; <label>:90:                                     ; preds = %80, %70
  %91 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %91, %struct.ptree** %5, align 8
  br label %92

; <label>:92:                                     ; preds = %90, %55
  %93 = load %struct.ptree*, %struct.ptree** %5, align 8
  ret %struct.ptree* %93
}

; Function Attrs: nounwind
define i32 @pat_remove(%struct.ptree*, %struct.ptree*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i8>, align 16
  %Recovery1 = alloca i8, align 1
  %allocaVec5 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec6 = alloca <4 x i64>, align 16
  %CastInst2 = alloca i64, align 4
  %CastInstVec3 = alloca <4 x i64>, align 16
  %allocaVec7 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree*, align 8
  %10 = alloca %struct.ptree*, align 8
  %11 = alloca %struct.ptree_mask*, align 8
  %12 = alloca %struct.ptree_mask*, align 8
  %allocaVec8 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %2
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = load %struct.ptree*, %struct.ptree** %10, align 8
  %23 = icmp ne %struct.ptree* %22, null
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %21, %16, %2
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %349

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %26, %struct.ptree** %10, align 8
  store %struct.ptree* %26, %struct.ptree** %6, align 8
  store %struct.ptree* %26, %struct.ptree** %7, align 8
  br label %27

; <label>:27:                                     ; preds = %53, %25
  %28 = load %struct.ptree*, %struct.ptree** %10, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %32, %struct.ptree** %7, align 8
  %33 = load %struct.ptree*, %struct.ptree** %10, align 8
  store %struct.ptree* %33, %struct.ptree** %6, align 8
  %34 = load %struct.ptree*, %struct.ptree** %10, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load %struct.ptree*, %struct.ptree** %4, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @bit(i32 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %27
  %44 = load %struct.ptree*, %struct.ptree** %10, align 8
  %45 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 5
  %46 = load %struct.ptree*, %struct.ptree** %45, align 8
  br label %51

; <label>:47:                                     ; preds = %27
  %48 = load %struct.ptree*, %struct.ptree** %10, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 4
  %50 = load %struct.ptree*, %struct.ptree** %49, align 8
  br label %51

; <label>:51:                                     ; preds = %47, %43
  %52 = phi %struct.ptree* [ %46, %43 ], [ %50, %47 ]
  store %struct.ptree* %52, %struct.ptree** %10, align 8
  br label %53

; <label>:53:                                     ; preds = %51
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ptree*, %struct.ptree** %10, align 8
  %56 = getelementptr inbounds %struct.ptree, %struct.ptree* %55, i32 0, i32 3
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %27, label %60

; <label>:60:                                     ; preds = %53
  %61 = load %struct.ptree*, %struct.ptree** %10, align 8
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ptree*, %struct.ptree** %4, align 8
  %65 = getelementptr inbounds %struct.ptree, %struct.ptree* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %60
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %349

; <label>:69:                                     ; preds = %60
  %70 = load %struct.ptree*, %struct.ptree** %10, align 8
  %71 = getelementptr inbounds %struct.ptree, %struct.ptree* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %241

; <label>:75:                                     ; preds = %69
  %76 = load %struct.ptree*, %struct.ptree** %10, align 8
  %77 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %75
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %349

; <label>:82:                                     ; preds = %75
  %83 = load %struct.ptree*, %struct.ptree** %10, align 8
  %84 = getelementptr inbounds %struct.ptree, %struct.ptree* %83, i32 0, i32 1
  %85 = load %struct.ptree_mask*, %struct.ptree_mask** %84, align 8
  %86 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ptree*, %struct.ptree** %4, align 8
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 1
  %90 = load %struct.ptree_mask*, %struct.ptree_mask** %89, align 8
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %87, %92
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %82
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %349

; <label>:95:                                     ; preds = %82
  %96 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %96, %struct.ptree** %8, align 8
  store %struct.ptree* %96, %struct.ptree** %9, align 8
  br label %97

; <label>:97:                                     ; preds = %122, %95
  %98 = load %struct.ptree*, %struct.ptree** %8, align 8
  %99 = getelementptr inbounds %struct.ptree, %struct.ptree* %98, i32 0, i32 3
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ptree*, %struct.ptree** %8, align 8
  store %struct.ptree* %102, %struct.ptree** %9, align 8
  %103 = load %struct.ptree*, %struct.ptree** %8, align 8
  %104 = getelementptr inbounds %struct.ptree, %struct.ptree* %103, i32 0, i32 3
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load %struct.ptree*, %struct.ptree** %6, align 8
  %108 = getelementptr inbounds %struct.ptree, %struct.ptree* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @bit(i32 %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %97
  %113 = load %struct.ptree*, %struct.ptree** %8, align 8
  %114 = getelementptr inbounds %struct.ptree, %struct.ptree* %113, i32 0, i32 5
  %115 = load %struct.ptree*, %struct.ptree** %114, align 8
  br label %120

; <label>:116:                                    ; preds = %97
  %117 = load %struct.ptree*, %struct.ptree** %8, align 8
  %118 = getelementptr inbounds %struct.ptree, %struct.ptree* %117, i32 0, i32 4
  %119 = load %struct.ptree*, %struct.ptree** %118, align 8
  br label %120

; <label>:120:                                    ; preds = %116, %112
  %121 = phi %struct.ptree* [ %115, %112 ], [ %119, %116 ]
  store %struct.ptree* %121, %struct.ptree** %8, align 8
  br label %122

; <label>:122:                                    ; preds = %120
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.ptree*, %struct.ptree** %8, align 8
  %125 = getelementptr inbounds %struct.ptree, %struct.ptree* %124, i32 0, i32 3
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %97, label %129

; <label>:129:                                    ; preds = %122
  %130 = load %struct.ptree*, %struct.ptree** %9, align 8
  %131 = getelementptr inbounds %struct.ptree, %struct.ptree* %130, i32 0, i32 3
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = load %struct.ptree*, %struct.ptree** %6, align 8
  %135 = getelementptr inbounds %struct.ptree, %struct.ptree* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @bit(i32 %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

; <label>:139:                                    ; preds = %129
  %140 = load %struct.ptree*, %struct.ptree** %10, align 8
  %141 = load %struct.ptree*, %struct.ptree** %9, align 8
  %142 = getelementptr inbounds %struct.ptree, %struct.ptree* %141, i32 0, i32 5
  store %struct.ptree* %140, %struct.ptree** %142, align 8
  br label %147

; <label>:143:                                    ; preds = %129
  %144 = load %struct.ptree*, %struct.ptree** %10, align 8
  %145 = load %struct.ptree*, %struct.ptree** %9, align 8
  %146 = getelementptr inbounds %struct.ptree, %struct.ptree* %145, i32 0, i32 4
  store %struct.ptree* %144, %struct.ptree** %146, align 8
  br label %147

; <label>:147:                                    ; preds = %143, %139
  %148 = load %struct.ptree*, %struct.ptree** %7, align 8
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %148, i32 0, i32 3
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load %struct.ptree*, %struct.ptree** %4, align 8
  %153 = getelementptr inbounds %struct.ptree, %struct.ptree* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @bit(i32 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %179

; <label>:157:                                    ; preds = %147
  %158 = load %struct.ptree*, %struct.ptree** %6, align 8
  %159 = getelementptr inbounds %struct.ptree, %struct.ptree* %158, i32 0, i32 3
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load %struct.ptree*, %struct.ptree** %4, align 8
  %163 = getelementptr inbounds %struct.ptree, %struct.ptree* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @bit(i32 %161, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

; <label>:167:                                    ; preds = %157
  %168 = load %struct.ptree*, %struct.ptree** %6, align 8
  %169 = getelementptr inbounds %struct.ptree, %struct.ptree* %168, i32 0, i32 4
  %170 = load %struct.ptree*, %struct.ptree** %169, align 8
  br label %175

; <label>:171:                                    ; preds = %157
  %172 = load %struct.ptree*, %struct.ptree** %6, align 8
  %173 = getelementptr inbounds %struct.ptree, %struct.ptree* %172, i32 0, i32 5
  %174 = load %struct.ptree*, %struct.ptree** %173, align 8
  br label %175

; <label>:175:                                    ; preds = %171, %167
  %176 = phi %struct.ptree* [ %170, %167 ], [ %174, %171 ]
  %177 = load %struct.ptree*, %struct.ptree** %7, align 8
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 5
  store %struct.ptree* %176, %struct.ptree** %178, align 8
  br label %201

; <label>:179:                                    ; preds = %147
  %180 = load %struct.ptree*, %struct.ptree** %6, align 8
  %181 = getelementptr inbounds %struct.ptree, %struct.ptree* %180, i32 0, i32 3
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load %struct.ptree*, %struct.ptree** %4, align 8
  %185 = getelementptr inbounds %struct.ptree, %struct.ptree* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @bit(i32 %183, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

; <label>:189:                                    ; preds = %179
  %190 = load %struct.ptree*, %struct.ptree** %6, align 8
  %191 = getelementptr inbounds %struct.ptree, %struct.ptree* %190, i32 0, i32 4
  %192 = load %struct.ptree*, %struct.ptree** %191, align 8
  br label %197

; <label>:193:                                    ; preds = %179
  %194 = load %struct.ptree*, %struct.ptree** %6, align 8
  %195 = getelementptr inbounds %struct.ptree, %struct.ptree* %194, i32 0, i32 5
  %196 = load %struct.ptree*, %struct.ptree** %195, align 8
  br label %197

; <label>:197:                                    ; preds = %193, %189
  %198 = phi %struct.ptree* [ %192, %189 ], [ %196, %193 ]
  %199 = load %struct.ptree*, %struct.ptree** %7, align 8
  %200 = getelementptr inbounds %struct.ptree, %struct.ptree* %199, i32 0, i32 4
  store %struct.ptree* %198, %struct.ptree** %200, align 8
  br label %201

; <label>:201:                                    ; preds = %197, %175
  %202 = load %struct.ptree*, %struct.ptree** %10, align 8
  %203 = getelementptr inbounds %struct.ptree, %struct.ptree* %202, i32 0, i32 1
  %204 = load %struct.ptree_mask*, %struct.ptree_mask** %203, align 8
  %205 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %214

; <label>:208:                                    ; preds = %201
  %209 = load %struct.ptree*, %struct.ptree** %10, align 8
  %210 = getelementptr inbounds %struct.ptree, %struct.ptree* %209, i32 0, i32 1
  %211 = load %struct.ptree_mask*, %struct.ptree_mask** %210, align 8
  %212 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  call void @free(i8* %213)
  br label %214

; <label>:214:                                    ; preds = %208, %201
  %215 = load %struct.ptree*, %struct.ptree** %10, align 8
  %216 = getelementptr inbounds %struct.ptree, %struct.ptree* %215, i32 0, i32 1
  %217 = load %struct.ptree_mask*, %struct.ptree_mask** %216, align 8
  %218 = bitcast %struct.ptree_mask* %217 to i8*
  call void @free(i8* %218)
  %219 = load %struct.ptree*, %struct.ptree** %10, align 8
  %220 = load %struct.ptree*, %struct.ptree** %6, align 8
  %221 = icmp ne %struct.ptree* %219, %220
  br i1 %221, label %222, label %238

; <label>:222:                                    ; preds = %214
  %223 = load %struct.ptree*, %struct.ptree** %6, align 8
  %224 = getelementptr inbounds %struct.ptree, %struct.ptree* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.ptree*, %struct.ptree** %10, align 8
  %227 = getelementptr inbounds %struct.ptree, %struct.ptree* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.ptree*, %struct.ptree** %6, align 8
  %229 = getelementptr inbounds %struct.ptree, %struct.ptree* %228, i32 0, i32 1
  %230 = load %struct.ptree_mask*, %struct.ptree_mask** %229, align 8
  %231 = load %struct.ptree*, %struct.ptree** %10, align 8
  %232 = getelementptr inbounds %struct.ptree, %struct.ptree* %231, i32 0, i32 1
  store %struct.ptree_mask* %230, %struct.ptree_mask** %232, align 8
  %233 = load %struct.ptree*, %struct.ptree** %6, align 8
  %234 = getelementptr inbounds %struct.ptree, %struct.ptree* %233, i32 0, i32 2
  %235 = load i8, i8* %234, align 8
  %236 = load %struct.ptree*, %struct.ptree** %10, align 8
  %237 = getelementptr inbounds %struct.ptree, %struct.ptree* %236, i32 0, i32 2
  store i8 %235, i8* %237, align 8
  br label %238

; <label>:238:                                    ; preds = %222, %214
  %239 = load %struct.ptree*, %struct.ptree** %6, align 8
  %240 = bitcast %struct.ptree* %239 to i8*
  call void @free(i8* %240)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec7
  store i32 1, i32* %3, align 4
  br label %349

; <label>:241:                                    ; preds = %69
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %13, align 4
  br label %242

; <label>:242:                                    ; preds = %266, %241
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.ptree*, %struct.ptree** %10, align 8
  %245 = getelementptr inbounds %struct.ptree, %struct.ptree* %244, i32 0, i32 2
  %246 = load i8, i8* %245, align 8
  %247 = zext i8 %246 to i32
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %270

; <label>:249:                                    ; preds = %242
  %250 = load %struct.ptree*, %struct.ptree** %4, align 8
  %251 = getelementptr inbounds %struct.ptree, %struct.ptree* %250, i32 0, i32 1
  %252 = load %struct.ptree_mask*, %struct.ptree_mask** %251, align 8
  %253 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.ptree*, %struct.ptree** %10, align 8
  %256 = getelementptr inbounds %struct.ptree, %struct.ptree* %255, i32 0, i32 1
  %257 = load %struct.ptree_mask*, %struct.ptree_mask** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %257, i64 %259
  %261 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %254, %262
  br i1 %263, label %264, label %265

; <label>:264:                                    ; preds = %249
  br label %270

; <label>:265:                                    ; preds = %249
  br label %266

; <label>:266:                                    ; preds = %265
  %267 = load i32, i32* %13, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %267, i32 0
  %insertElmt9 = insertelement <4 x i32> %insertElmt, i32 %267, i32 1
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %267, i32 2
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %267, i32 3
  store <4 x i32> %insertElmt11, <4 x i32>* %allocaVec8, align 16
  %268 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec8
  %269 = add nsw i32 %267, 1
  store i32 %269, i32* %13, align 4
  br label %242

; <label>:270:                                    ; preds = %264, %242
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.ptree*, %struct.ptree** %10, align 8
  %273 = getelementptr inbounds %struct.ptree, %struct.ptree* %272, i32 0, i32 2
  %274 = load i8, i8* %273, align 8
  %275 = zext i8 %274 to i32
  %276 = icmp sge i32 %271, %275
  br i1 %276, label %277, label %278

; <label>:277:                                    ; preds = %270
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %349

; <label>:278:                                    ; preds = %270
  %279 = load %struct.ptree*, %struct.ptree** %10, align 8
  %280 = getelementptr inbounds %struct.ptree, %struct.ptree* %279, i32 0, i32 2
  %281 = load i8, i8* %280, align 8
  %282 = zext i8 %281 to i32
  store i32 %282, i32* %CastInst
  %283 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %283, i32 0
  %insertCast12 = insertelement <4 x i32> %insertCast, i32 %283, i32 1
  %insertCast13 = insertelement <4 x i32> %insertCast12, i32 %283, i32 2
  %insertCast14 = insertelement <4 x i32> %insertCast13, i32 %283, i32 3
  store <4 x i32> %insertCast14, <4 x i32>* %CastInstVec, align 4
  %284 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop15 = sub <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>
  %285 = sub nsw i32 %282, 1
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %CastInst2
  %287 = load i64, i64* %CastInst2, align 4
  %insertCast16 = insertelement <4 x i64> undef, i64 %287, i32 0
  %insertCast17 = insertelement <4 x i64> %insertCast16, i64 %287, i32 1
  %insertCast18 = insertelement <4 x i64> %insertCast17, i64 %287, i32 2
  %insertCast19 = insertelement <4 x i64> %insertCast18, i64 %287, i32 3
  store <4 x i64> %insertCast19, <4 x i64>* %CastInstVec3, align 4
  %288 = load <4 x i64>, <4 x i64>* %CastInstVec3, align 4
  %Vop20 = mul <4 x i64> <i64 16, i64 16, i64 16, i64 16>, %288
  %289 = mul i64 16, %286
  %290 = call i8* @malloc(i64 %289)
  %291 = bitcast i8* %290 to %struct.ptree_mask*
  store %struct.ptree_mask* %291, %struct.ptree_mask** %11, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %13, align 4
  %292 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  store %struct.ptree_mask* %292, %struct.ptree_mask** %12, align 8
  br label %293

; <label>:293:                                    ; preds = %336, %278
  %294 = load i32, i32* %13, align 4
  %295 = load %struct.ptree*, %struct.ptree** %10, align 8
  %296 = getelementptr inbounds %struct.ptree, %struct.ptree* %295, i32 0, i32 2
  %297 = load i8, i8* %296, align 8
  %298 = zext i8 %297 to i32
  %299 = icmp slt i32 %294, %298
  br i1 %299, label %300, label %337

; <label>:300:                                    ; preds = %293
  %301 = load %struct.ptree*, %struct.ptree** %4, align 8
  %302 = getelementptr inbounds %struct.ptree, %struct.ptree* %301, i32 0, i32 1
  %303 = load %struct.ptree_mask*, %struct.ptree_mask** %302, align 8
  %304 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.ptree*, %struct.ptree** %10, align 8
  %307 = getelementptr inbounds %struct.ptree, %struct.ptree* %306, i32 0, i32 1
  %308 = load %struct.ptree_mask*, %struct.ptree_mask** %307, align 8
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %308, i64 %310
  %312 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %305, %313
  br i1 %314, label %315, label %326

; <label>:315:                                    ; preds = %300
  %316 = load %struct.ptree*, %struct.ptree** %10, align 8
  %317 = getelementptr inbounds %struct.ptree, %struct.ptree* %316, i32 0, i32 1
  %318 = load %struct.ptree_mask*, %struct.ptree_mask** %317, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %318, i64 %320
  %322 = bitcast %struct.ptree_mask* %321 to i8*
  %323 = load %struct.ptree_mask*, %struct.ptree_mask** %12, align 8
  %324 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %323, i32 1
  store %struct.ptree_mask* %324, %struct.ptree_mask** %12, align 8
  %325 = bitcast %struct.ptree_mask* %323 to i8*
  call void @bcopy(i8* %322, i8* %325, i64 16)
  br label %326

; <label>:326:                                    ; preds = %315, %300
  br label %327

; <label>:327:                                    ; preds = %326
  %328 = load i32, i32* %13, align 4
  %329 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop21 = add <4 x i32> %329, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop21, <4 x i32>* %allocaVec8
  %330 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %330, i64 0
  %extractE22 = extractelement <4 x i32> %330, i64 1
  %extractE23 = extractelement <4 x i32> %330, i64 2
  %sum = add i32 %extractE, %extractE22
  %sum24 = add i32 %sum, %extractE23
  %331 = add nsw i32 %328, 1
  %Fmul = mul i32 %331, 3
  store i32 %331, i32* %Recovery
  %Fcmp = icmp ne i32 %sum24, %Fmul
  br i1 %Fcmp, label %332, label %336

; <label>:332:                                    ; preds = %327
  %remThree = sdiv i32 %sum24, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %333, label %334

; <label>:333:                                    ; preds = %332
  store i32 %331, i32* %Recovery, align 4
  br label %335

; <label>:334:                                    ; preds = %332
  store i32 %extractE, i32* %Recovery, align 4
  br label %335

; <label>:335:                                    ; preds = %334, %333
  br label %336

; <label>:336:                                    ; preds = %327, %335
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %13, align 4
  br label %293

; <label>:337:                                    ; preds = %293
  %338 = load %struct.ptree*, %struct.ptree** %10, align 8
  %339 = getelementptr inbounds %struct.ptree, %struct.ptree* %338, i32 0, i32 2
  %340 = load i8, i8* %339, align 8
  %341 = add i8 %340, -1
  store i8 %341, i8* %339, align 8
  %342 = load %struct.ptree*, %struct.ptree** %10, align 8
  %343 = getelementptr inbounds %struct.ptree, %struct.ptree* %342, i32 0, i32 1
  %344 = load %struct.ptree_mask*, %struct.ptree_mask** %343, align 8
  %345 = bitcast %struct.ptree_mask* %344 to i8*
  call void @free(i8* %345)
  %346 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  %347 = load %struct.ptree*, %struct.ptree** %10, align 8
  %348 = getelementptr inbounds %struct.ptree, %struct.ptree* %347, i32 0, i32 1
  store %struct.ptree_mask* %346, %struct.ptree_mask** %348, align 8
  store i32 1, i32* %3, align 4
  br label %349

; <label>:349:                                    ; preds = %337, %277, %238, %94, %81, %68, %24
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

; Function Attrs: nounwind
define %struct.ptree* @pat_search(i64, %struct.ptree*) #0 {
  %3 = alloca %struct.ptree*, align 8
  %allocaVec = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  store %struct.ptree* null, %struct.ptree** %6, align 8
  %9 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %9, %struct.ptree** %7, align 8
  %10 = load %struct.ptree*, %struct.ptree** %7, align 8
  %11 = icmp ne %struct.ptree* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %2
  store %struct.ptree* null, %struct.ptree** %3, align 8
  br label %75

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %50, %13
  %15 = load %struct.ptree*, %struct.ptree** %7, align 8
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %18, i32 0
  %insertElmt2 = insertelement <4 x i64> %insertElmt, i64 %18, i32 1
  %insertElmt3 = insertelement <4 x i64> %insertElmt2, i64 %18, i32 2
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %18, i32 3
  store <4 x i64> %insertElmt4, <4 x i64>* %allocaVec, align 16
  %19 = load %struct.ptree*, %struct.ptree** %7, align 8
  %20 = getelementptr inbounds %struct.ptree, %struct.ptree* %19, i32 0, i32 1
  %21 = load %struct.ptree_mask*, %struct.ptree_mask** %20, align 8
  %22 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %18, %23
  %25 = icmp eq i64 %17, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %14
  %27 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %27, %struct.ptree** %6, align 8
  br label %28

; <label>:28:                                     ; preds = %26, %14
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ptree*, %struct.ptree** %7, align 8
  %34 = getelementptr inbounds %struct.ptree, %struct.ptree* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @bit(i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %28
  %41 = load %struct.ptree*, %struct.ptree** %7, align 8
  %42 = getelementptr inbounds %struct.ptree, %struct.ptree* %41, i32 0, i32 5
  %43 = load %struct.ptree*, %struct.ptree** %42, align 8
  br label %48

; <label>:44:                                     ; preds = %28
  %45 = load %struct.ptree*, %struct.ptree** %7, align 8
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 4
  %47 = load %struct.ptree*, %struct.ptree** %46, align 8
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = phi %struct.ptree* [ %43, %40 ], [ %47, %44 ]
  store %struct.ptree* %49, %struct.ptree** %7, align 8
  br label %50

; <label>:50:                                     ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ptree*, %struct.ptree** %7, align 8
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %14, label %57

; <label>:57:                                     ; preds = %50
  %58 = load %struct.ptree*, %struct.ptree** %7, align 8
  %59 = getelementptr inbounds %struct.ptree, %struct.ptree* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %4, align 8
  %insertElmt5 = insertelement <4 x i64> undef, i64 %61, i32 0
  %insertElmt6 = insertelement <4 x i64> %insertElmt5, i64 %61, i32 1
  %insertElmt7 = insertelement <4 x i64> %insertElmt6, i64 %61, i32 2
  %insertElmt8 = insertelement <4 x i64> %insertElmt7, i64 %61, i32 3
  store <4 x i64> %insertElmt8, <4 x i64>* %allocaVec, align 16
  %62 = load %struct.ptree*, %struct.ptree** %7, align 8
  %63 = getelementptr inbounds %struct.ptree, %struct.ptree* %62, i32 0, i32 1
  %64 = load %struct.ptree_mask*, %struct.ptree_mask** %63, align 8
  %65 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %61, %66
  %68 = icmp eq i64 %60, %67
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %57
  %70 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %73

; <label>:71:                                     ; preds = %57
  %72 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %73

; <label>:73:                                     ; preds = %71, %69
  %74 = phi %struct.ptree* [ %70, %69 ], [ %72, %71 ]
  store %struct.ptree* %74, %struct.ptree** %3, align 8
  br label %75

; <label>:75:                                     ; preds = %73, %12
  %76 = load %struct.ptree*, %struct.ptree** %3, align 8
  ret %struct.ptree* %76
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
