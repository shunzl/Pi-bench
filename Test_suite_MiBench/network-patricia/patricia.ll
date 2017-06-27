; ModuleID = 'patricia.c'
source_filename = "patricia.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.ptree = type { i32, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i32, i8* }

; Function Attrs: nounwind
define arm_aapcscc %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #0 {
  %3 = alloca %struct.ptree*, align 4
  %4 = alloca %struct.ptree*, align 4
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree_mask*, align 4
  %8 = alloca %struct.ptree_mask*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 4
  store %struct.ptree* %1, %struct.ptree** %5, align 4
  %11 = load %struct.ptree*, %struct.ptree** %5, align 4
  %12 = icmp ne %struct.ptree* %11, null
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  %14 = load %struct.ptree*, %struct.ptree** %4, align 4
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %13
  %17 = load %struct.ptree*, %struct.ptree** %4, align 4
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 4
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %16, %13, %2
  store %struct.ptree* null, %struct.ptree** %3, align 4
  br label %257

; <label>:22:                                     ; preds = %16
  %23 = load %struct.ptree*, %struct.ptree** %4, align 4
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %23, i32 0, i32 1
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %24, align 4
  %26 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ptree*, %struct.ptree** %4, align 4
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ptree*, %struct.ptree** %5, align 4
  store %struct.ptree* %32, %struct.ptree** %6, align 4
  br label %33

; <label>:33:                                     ; preds = %57, %22
  %34 = load %struct.ptree*, %struct.ptree** %6, align 4
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ptree*, %struct.ptree** %6, align 4
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.ptree*, %struct.ptree** %4, align 4
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call arm_aapcscc i32 @bit(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %33
  %48 = load %struct.ptree*, %struct.ptree** %6, align 4
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 5
  %50 = load %struct.ptree*, %struct.ptree** %49, align 4
  br label %55

; <label>:51:                                     ; preds = %33
  %52 = load %struct.ptree*, %struct.ptree** %6, align 4
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 4
  %54 = load %struct.ptree*, %struct.ptree** %53, align 4
  br label %55

; <label>:55:                                     ; preds = %51, %47
  %56 = phi %struct.ptree* [ %50, %47 ], [ %54, %51 ]
  store %struct.ptree* %56, %struct.ptree** %6, align 4
  br label %57

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ptree*, %struct.ptree** %6, align 4
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %33, label %64

; <label>:64:                                     ; preds = %57
  %65 = load %struct.ptree*, %struct.ptree** %4, align 4
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ptree*, %struct.ptree** %6, align 4
  %69 = getelementptr inbounds %struct.ptree, %struct.ptree* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %203

; <label>:72:                                     ; preds = %64
  store i32 0, i32* %9, align 4
  br label %73

; <label>:73:                                     ; preds = %114, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ptree*, %struct.ptree** %6, align 4
  %76 = getelementptr inbounds %struct.ptree, %struct.ptree* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %117

; <label>:80:                                     ; preds = %73
  %81 = load %struct.ptree*, %struct.ptree** %4, align 4
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 1
  %83 = load %struct.ptree_mask*, %struct.ptree_mask** %82, align 4
  %84 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ptree*, %struct.ptree** %6, align 4
  %87 = getelementptr inbounds %struct.ptree, %struct.ptree* %86, i32 0, i32 1
  %88 = load %struct.ptree_mask*, %struct.ptree_mask** %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %88, i32 %89
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %85, %92
  br i1 %93, label %94, label %113

; <label>:94:                                     ; preds = %80
  %95 = load %struct.ptree*, %struct.ptree** %4, align 4
  %96 = getelementptr inbounds %struct.ptree, %struct.ptree* %95, i32 0, i32 1
  %97 = load %struct.ptree_mask*, %struct.ptree_mask** %96, align 4
  %98 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 4
  %100 = load %struct.ptree*, %struct.ptree** %6, align 4
  %101 = getelementptr inbounds %struct.ptree, %struct.ptree* %100, i32 0, i32 1
  %102 = load %struct.ptree_mask*, %struct.ptree_mask** %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %102, i32 %103
  %105 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %104, i32 0, i32 1
  store i8* %99, i8** %105, align 4
  %106 = load %struct.ptree*, %struct.ptree** %4, align 4
  %107 = getelementptr inbounds %struct.ptree, %struct.ptree* %106, i32 0, i32 1
  %108 = load %struct.ptree_mask*, %struct.ptree_mask** %107, align 4
  %109 = bitcast %struct.ptree_mask* %108 to i8*
  call arm_aapcscc void @free(i8* %109)
  %110 = load %struct.ptree*, %struct.ptree** %4, align 4
  %111 = bitcast %struct.ptree* %110 to i8*
  call arm_aapcscc void @free(i8* %111)
  store %struct.ptree* null, %struct.ptree** %4, align 4
  %112 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %112, %struct.ptree** %3, align 4
  br label %257

; <label>:113:                                    ; preds = %80
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %73

; <label>:117:                                    ; preds = %73
  %118 = load %struct.ptree*, %struct.ptree** %6, align 4
  %119 = getelementptr inbounds %struct.ptree, %struct.ptree* %118, i32 0, i32 2
  %120 = load i8, i8* %119, align 4
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %121, 1
  %123 = mul i32 8, %122
  %124 = call arm_aapcscc i8* @malloc(i32 %123)
  %125 = bitcast i8* %124 to %struct.ptree_mask*
  store %struct.ptree_mask* %125, %struct.ptree_mask** %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %126 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 4
  store %struct.ptree_mask* %126, %struct.ptree_mask** %8, align 4
  br label %127

; <label>:127:                                    ; preds = %171, %117
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.ptree*, %struct.ptree** %6, align 4
  %130 = getelementptr inbounds %struct.ptree, %struct.ptree* %129, i32 0, i32 2
  %131 = load i8, i8* %130, align 4
  %132 = zext i8 %131 to i32
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %174

; <label>:134:                                    ; preds = %127
  %135 = load %struct.ptree*, %struct.ptree** %4, align 4
  %136 = getelementptr inbounds %struct.ptree, %struct.ptree* %135, i32 0, i32 1
  %137 = load %struct.ptree_mask*, %struct.ptree_mask** %136, align 4
  %138 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ptree*, %struct.ptree** %6, align 4
  %141 = getelementptr inbounds %struct.ptree, %struct.ptree* %140, i32 0, i32 1
  %142 = load %struct.ptree_mask*, %struct.ptree_mask** %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %142, i32 %143
  %145 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ugt i32 %139, %146
  br i1 %147, label %148, label %159

; <label>:148:                                    ; preds = %134
  %149 = load %struct.ptree*, %struct.ptree** %6, align 4
  %150 = getelementptr inbounds %struct.ptree, %struct.ptree* %149, i32 0, i32 1
  %151 = load %struct.ptree_mask*, %struct.ptree_mask** %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %151, i32 %152
  %154 = bitcast %struct.ptree_mask* %153 to i8*
  %155 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %156 = bitcast %struct.ptree_mask* %155 to i8*
  call arm_aapcscc void @bcopy(i8* %154, i8* %156, i32 8)
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %170

; <label>:159:                                    ; preds = %134
  %160 = load %struct.ptree*, %struct.ptree** %4, align 4
  %161 = getelementptr inbounds %struct.ptree, %struct.ptree* %160, i32 0, i32 1
  %162 = load %struct.ptree_mask*, %struct.ptree_mask** %161, align 4
  %163 = bitcast %struct.ptree_mask* %162 to i8*
  %164 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %165 = bitcast %struct.ptree_mask* %164 to i8*
  call arm_aapcscc void @bcopy(i8* %163, i8* %165, i32 8)
  %166 = load %struct.ptree*, %struct.ptree** %4, align 4
  %167 = getelementptr inbounds %struct.ptree, %struct.ptree* %166, i32 0, i32 1
  %168 = load %struct.ptree_mask*, %struct.ptree_mask** %167, align 4
  %169 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %168, i32 0, i32 0
  store i32 -1, i32* %169, align 4
  store i32 1, i32* %10, align 4
  br label %170

; <label>:170:                                    ; preds = %159, %148
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %173 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %172, i32 1
  store %struct.ptree_mask* %173, %struct.ptree_mask** %8, align 4
  br label %127

; <label>:174:                                    ; preds = %127
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

; <label>:177:                                    ; preds = %174
  %178 = load %struct.ptree*, %struct.ptree** %4, align 4
  %179 = getelementptr inbounds %struct.ptree, %struct.ptree* %178, i32 0, i32 1
  %180 = load %struct.ptree_mask*, %struct.ptree_mask** %179, align 4
  %181 = bitcast %struct.ptree_mask* %180 to i8*
  %182 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %183 = bitcast %struct.ptree_mask* %182 to i8*
  call arm_aapcscc void @bcopy(i8* %181, i8* %183, i32 8)
  br label %184

; <label>:184:                                    ; preds = %177, %174
  %185 = load %struct.ptree*, %struct.ptree** %4, align 4
  %186 = getelementptr inbounds %struct.ptree, %struct.ptree* %185, i32 0, i32 1
  %187 = load %struct.ptree_mask*, %struct.ptree_mask** %186, align 4
  %188 = bitcast %struct.ptree_mask* %187 to i8*
  call arm_aapcscc void @free(i8* %188)
  %189 = load %struct.ptree*, %struct.ptree** %4, align 4
  %190 = bitcast %struct.ptree* %189 to i8*
  call arm_aapcscc void @free(i8* %190)
  store %struct.ptree* null, %struct.ptree** %4, align 4
  %191 = load %struct.ptree*, %struct.ptree** %6, align 4
  %192 = getelementptr inbounds %struct.ptree, %struct.ptree* %191, i32 0, i32 2
  %193 = load i8, i8* %192, align 4
  %194 = add i8 %193, 1
  store i8 %194, i8* %192, align 4
  %195 = load %struct.ptree*, %struct.ptree** %6, align 4
  %196 = getelementptr inbounds %struct.ptree, %struct.ptree* %195, i32 0, i32 1
  %197 = load %struct.ptree_mask*, %struct.ptree_mask** %196, align 4
  %198 = bitcast %struct.ptree_mask* %197 to i8*
  call arm_aapcscc void @free(i8* %198)
  %199 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 4
  %200 = load %struct.ptree*, %struct.ptree** %6, align 4
  %201 = getelementptr inbounds %struct.ptree, %struct.ptree* %200, i32 0, i32 1
  store %struct.ptree_mask* %199, %struct.ptree_mask** %201, align 4
  %202 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %202, %struct.ptree** %3, align 4
  br label %257

; <label>:203:                                    ; preds = %64
  store i32 1, i32* %9, align 4
  br label %204

; <label>:204:                                    ; preds = %222, %203
  %205 = load i32, i32* %9, align 4
  %206 = icmp slt i32 %205, 32
  br i1 %206, label %207, label %219

; <label>:207:                                    ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.ptree*, %struct.ptree** %4, align 4
  %210 = getelementptr inbounds %struct.ptree, %struct.ptree* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call arm_aapcscc i32 @bit(i32 %208, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.ptree*, %struct.ptree** %6, align 4
  %215 = getelementptr inbounds %struct.ptree, %struct.ptree* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call arm_aapcscc i32 @bit(i32 %213, i32 %216)
  %218 = icmp eq i32 %212, %217
  br label %219

; <label>:219:                                    ; preds = %207, %204
  %220 = phi i1 [ false, %204 ], [ %218, %207 ]
  br i1 %220, label %221, label %225

; <label>:221:                                    ; preds = %219
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %204

; <label>:225:                                    ; preds = %219
  %226 = load %struct.ptree*, %struct.ptree** %5, align 4
  %227 = getelementptr inbounds %struct.ptree, %struct.ptree* %226, i32 0, i32 3
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = load %struct.ptree*, %struct.ptree** %4, align 4
  %231 = getelementptr inbounds %struct.ptree, %struct.ptree* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call arm_aapcscc i32 @bit(i32 %229, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

; <label>:235:                                    ; preds = %225
  %236 = load %struct.ptree*, %struct.ptree** %5, align 4
  %237 = getelementptr inbounds %struct.ptree, %struct.ptree* %236, i32 0, i32 5
  %238 = load %struct.ptree*, %struct.ptree** %237, align 4
  %239 = load %struct.ptree*, %struct.ptree** %4, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.ptree*, %struct.ptree** %5, align 4
  %242 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %238, %struct.ptree* %239, i32 %240, %struct.ptree* %241)
  %243 = load %struct.ptree*, %struct.ptree** %5, align 4
  %244 = getelementptr inbounds %struct.ptree, %struct.ptree* %243, i32 0, i32 5
  store %struct.ptree* %242, %struct.ptree** %244, align 4
  br label %255

; <label>:245:                                    ; preds = %225
  %246 = load %struct.ptree*, %struct.ptree** %5, align 4
  %247 = getelementptr inbounds %struct.ptree, %struct.ptree* %246, i32 0, i32 4
  %248 = load %struct.ptree*, %struct.ptree** %247, align 4
  %249 = load %struct.ptree*, %struct.ptree** %4, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.ptree*, %struct.ptree** %5, align 4
  %252 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %248, %struct.ptree* %249, i32 %250, %struct.ptree* %251)
  %253 = load %struct.ptree*, %struct.ptree** %5, align 4
  %254 = getelementptr inbounds %struct.ptree, %struct.ptree* %253, i32 0, i32 4
  store %struct.ptree* %252, %struct.ptree** %254, align 4
  br label %255

; <label>:255:                                    ; preds = %245, %235
  %256 = load %struct.ptree*, %struct.ptree** %4, align 4
  store %struct.ptree* %256, %struct.ptree** %3, align 4
  br label %257

; <label>:257:                                    ; preds = %255, %184, %94, %21
  %258 = load %struct.ptree*, %struct.ptree** %3, align 4
  ret %struct.ptree* %258
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @bit(i32, i32) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 31, %6
  %8 = shl i32 1, %7
  %9 = and i32 %5, %8
  ret i32 %9
}

declare arm_aapcscc void @free(i8*) #2

declare arm_aapcscc i8* @malloc(i32) #2

declare arm_aapcscc void @bcopy(i8*, i8*, i32) #2

; Function Attrs: nounwind
define internal arm_aapcscc %struct.ptree* @insertR(%struct.ptree*, %struct.ptree*, i32, %struct.ptree*) #0 {
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ptree*, align 4
  store %struct.ptree* %0, %struct.ptree** %6, align 4
  store %struct.ptree* %1, %struct.ptree** %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ptree* %3, %struct.ptree** %9, align 4
  %10 = load %struct.ptree*, %struct.ptree** %6, align 4
  %11 = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %4
  %17 = load %struct.ptree*, %struct.ptree** %6, align 4
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 3
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load %struct.ptree*, %struct.ptree** %9, align 4
  %22 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %60

; <label>:26:                                     ; preds = %16, %4
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.ptree*, %struct.ptree** %7, align 4
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ptree*, %struct.ptree** %7, align 4
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call arm_aapcscc i32 @bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %26
  %38 = load %struct.ptree*, %struct.ptree** %6, align 4
  br label %41

; <label>:39:                                     ; preds = %26
  %40 = load %struct.ptree*, %struct.ptree** %7, align 4
  br label %41

; <label>:41:                                     ; preds = %39, %37
  %42 = phi %struct.ptree* [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.ptree*, %struct.ptree** %7, align 4
  %44 = getelementptr inbounds %struct.ptree, %struct.ptree* %43, i32 0, i32 4
  store %struct.ptree* %42, %struct.ptree** %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ptree*, %struct.ptree** %7, align 4
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call arm_aapcscc i32 @bit(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %41
  %52 = load %struct.ptree*, %struct.ptree** %7, align 4
  br label %55

; <label>:53:                                     ; preds = %41
  %54 = load %struct.ptree*, %struct.ptree** %6, align 4
  br label %55

; <label>:55:                                     ; preds = %53, %51
  %56 = phi %struct.ptree* [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.ptree*, %struct.ptree** %7, align 4
  %58 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 5
  store %struct.ptree* %56, %struct.ptree** %58, align 4
  %59 = load %struct.ptree*, %struct.ptree** %7, align 4
  store %struct.ptree* %59, %struct.ptree** %5, align 4
  br label %92

; <label>:60:                                     ; preds = %16
  %61 = load %struct.ptree*, %struct.ptree** %6, align 4
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 3
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.ptree*, %struct.ptree** %7, align 4
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call arm_aapcscc i32 @bit(i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

; <label>:70:                                     ; preds = %60
  %71 = load %struct.ptree*, %struct.ptree** %6, align 4
  %72 = getelementptr inbounds %struct.ptree, %struct.ptree* %71, i32 0, i32 5
  %73 = load %struct.ptree*, %struct.ptree** %72, align 4
  %74 = load %struct.ptree*, %struct.ptree** %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ptree*, %struct.ptree** %6, align 4
  %77 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %73, %struct.ptree* %74, i32 %75, %struct.ptree* %76)
  %78 = load %struct.ptree*, %struct.ptree** %6, align 4
  %79 = getelementptr inbounds %struct.ptree, %struct.ptree* %78, i32 0, i32 5
  store %struct.ptree* %77, %struct.ptree** %79, align 4
  br label %90

; <label>:80:                                     ; preds = %60
  %81 = load %struct.ptree*, %struct.ptree** %6, align 4
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 4
  %83 = load %struct.ptree*, %struct.ptree** %82, align 4
  %84 = load %struct.ptree*, %struct.ptree** %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ptree*, %struct.ptree** %6, align 4
  %87 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %83, %struct.ptree* %84, i32 %85, %struct.ptree* %86)
  %88 = load %struct.ptree*, %struct.ptree** %6, align 4
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 4
  store %struct.ptree* %87, %struct.ptree** %89, align 4
  br label %90

; <label>:90:                                     ; preds = %80, %70
  %91 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %91, %struct.ptree** %5, align 4
  br label %92

; <label>:92:                                     ; preds = %90, %55
  %93 = load %struct.ptree*, %struct.ptree** %5, align 4
  ret %struct.ptree* %93
}

; Function Attrs: nounwind
define arm_aapcscc i32 @pat_remove(%struct.ptree*, %struct.ptree*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptree*, align 4
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %8 = alloca %struct.ptree*, align 4
  %9 = alloca %struct.ptree*, align 4
  %10 = alloca %struct.ptree*, align 4
  %11 = alloca %struct.ptree_mask*, align 4
  %12 = alloca %struct.ptree_mask*, align 4
  %13 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 4
  store %struct.ptree* %1, %struct.ptree** %5, align 4
  %14 = load %struct.ptree*, %struct.ptree** %4, align 4
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %2
  %17 = load %struct.ptree*, %struct.ptree** %4, align 4
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 4
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = load %struct.ptree*, %struct.ptree** %10, align 4
  %23 = icmp ne %struct.ptree* %22, null
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %21, %16, %2
  store i32 0, i32* %3, align 4
  br label %333

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ptree*, %struct.ptree** %5, align 4
  store %struct.ptree* %26, %struct.ptree** %10, align 4
  store %struct.ptree* %26, %struct.ptree** %6, align 4
  store %struct.ptree* %26, %struct.ptree** %7, align 4
  br label %27

; <label>:27:                                     ; preds = %53, %25
  %28 = load %struct.ptree*, %struct.ptree** %10, align 4
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %32, %struct.ptree** %7, align 4
  %33 = load %struct.ptree*, %struct.ptree** %10, align 4
  store %struct.ptree* %33, %struct.ptree** %6, align 4
  %34 = load %struct.ptree*, %struct.ptree** %10, align 4
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.ptree*, %struct.ptree** %4, align 4
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call arm_aapcscc i32 @bit(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %27
  %44 = load %struct.ptree*, %struct.ptree** %10, align 4
  %45 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 5
  %46 = load %struct.ptree*, %struct.ptree** %45, align 4
  br label %51

; <label>:47:                                     ; preds = %27
  %48 = load %struct.ptree*, %struct.ptree** %10, align 4
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 4
  %50 = load %struct.ptree*, %struct.ptree** %49, align 4
  br label %51

; <label>:51:                                     ; preds = %47, %43
  %52 = phi %struct.ptree* [ %46, %43 ], [ %50, %47 ]
  store %struct.ptree* %52, %struct.ptree** %10, align 4
  br label %53

; <label>:53:                                     ; preds = %51
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ptree*, %struct.ptree** %10, align 4
  %56 = getelementptr inbounds %struct.ptree, %struct.ptree* %55, i32 0, i32 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %27, label %60

; <label>:60:                                     ; preds = %53
  %61 = load %struct.ptree*, %struct.ptree** %10, align 4
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ptree*, %struct.ptree** %4, align 4
  %65 = getelementptr inbounds %struct.ptree, %struct.ptree* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %60
  store i32 0, i32* %3, align 4
  br label %333

; <label>:69:                                     ; preds = %60
  %70 = load %struct.ptree*, %struct.ptree** %10, align 4
  %71 = getelementptr inbounds %struct.ptree, %struct.ptree* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 4
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %241

; <label>:75:                                     ; preds = %69
  %76 = load %struct.ptree*, %struct.ptree** %10, align 4
  %77 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %75
  store i32 0, i32* %3, align 4
  br label %333

; <label>:82:                                     ; preds = %75
  %83 = load %struct.ptree*, %struct.ptree** %10, align 4
  %84 = getelementptr inbounds %struct.ptree, %struct.ptree* %83, i32 0, i32 1
  %85 = load %struct.ptree_mask*, %struct.ptree_mask** %84, align 4
  %86 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ptree*, %struct.ptree** %4, align 4
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 1
  %90 = load %struct.ptree_mask*, %struct.ptree_mask** %89, align 4
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %87, %92
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %82
  store i32 0, i32* %3, align 4
  br label %333

; <label>:95:                                     ; preds = %82
  %96 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %96, %struct.ptree** %8, align 4
  store %struct.ptree* %96, %struct.ptree** %9, align 4
  br label %97

; <label>:97:                                     ; preds = %122, %95
  %98 = load %struct.ptree*, %struct.ptree** %8, align 4
  %99 = getelementptr inbounds %struct.ptree, %struct.ptree* %98, i32 0, i32 3
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ptree*, %struct.ptree** %8, align 4
  store %struct.ptree* %102, %struct.ptree** %9, align 4
  %103 = load %struct.ptree*, %struct.ptree** %8, align 4
  %104 = getelementptr inbounds %struct.ptree, %struct.ptree* %103, i32 0, i32 3
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load %struct.ptree*, %struct.ptree** %6, align 4
  %108 = getelementptr inbounds %struct.ptree, %struct.ptree* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call arm_aapcscc i32 @bit(i32 %106, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %97
  %113 = load %struct.ptree*, %struct.ptree** %8, align 4
  %114 = getelementptr inbounds %struct.ptree, %struct.ptree* %113, i32 0, i32 5
  %115 = load %struct.ptree*, %struct.ptree** %114, align 4
  br label %120

; <label>:116:                                    ; preds = %97
  %117 = load %struct.ptree*, %struct.ptree** %8, align 4
  %118 = getelementptr inbounds %struct.ptree, %struct.ptree* %117, i32 0, i32 4
  %119 = load %struct.ptree*, %struct.ptree** %118, align 4
  br label %120

; <label>:120:                                    ; preds = %116, %112
  %121 = phi %struct.ptree* [ %115, %112 ], [ %119, %116 ]
  store %struct.ptree* %121, %struct.ptree** %8, align 4
  br label %122

; <label>:122:                                    ; preds = %120
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.ptree*, %struct.ptree** %8, align 4
  %125 = getelementptr inbounds %struct.ptree, %struct.ptree* %124, i32 0, i32 3
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %97, label %129

; <label>:129:                                    ; preds = %122
  %130 = load %struct.ptree*, %struct.ptree** %9, align 4
  %131 = getelementptr inbounds %struct.ptree, %struct.ptree* %130, i32 0, i32 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load %struct.ptree*, %struct.ptree** %6, align 4
  %135 = getelementptr inbounds %struct.ptree, %struct.ptree* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call arm_aapcscc i32 @bit(i32 %133, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

; <label>:139:                                    ; preds = %129
  %140 = load %struct.ptree*, %struct.ptree** %10, align 4
  %141 = load %struct.ptree*, %struct.ptree** %9, align 4
  %142 = getelementptr inbounds %struct.ptree, %struct.ptree* %141, i32 0, i32 5
  store %struct.ptree* %140, %struct.ptree** %142, align 4
  br label %147

; <label>:143:                                    ; preds = %129
  %144 = load %struct.ptree*, %struct.ptree** %10, align 4
  %145 = load %struct.ptree*, %struct.ptree** %9, align 4
  %146 = getelementptr inbounds %struct.ptree, %struct.ptree* %145, i32 0, i32 4
  store %struct.ptree* %144, %struct.ptree** %146, align 4
  br label %147

; <label>:147:                                    ; preds = %143, %139
  %148 = load %struct.ptree*, %struct.ptree** %7, align 4
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %148, i32 0, i32 3
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load %struct.ptree*, %struct.ptree** %4, align 4
  %153 = getelementptr inbounds %struct.ptree, %struct.ptree* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call arm_aapcscc i32 @bit(i32 %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %179

; <label>:157:                                    ; preds = %147
  %158 = load %struct.ptree*, %struct.ptree** %6, align 4
  %159 = getelementptr inbounds %struct.ptree, %struct.ptree* %158, i32 0, i32 3
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load %struct.ptree*, %struct.ptree** %4, align 4
  %163 = getelementptr inbounds %struct.ptree, %struct.ptree* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call arm_aapcscc i32 @bit(i32 %161, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

; <label>:167:                                    ; preds = %157
  %168 = load %struct.ptree*, %struct.ptree** %6, align 4
  %169 = getelementptr inbounds %struct.ptree, %struct.ptree* %168, i32 0, i32 4
  %170 = load %struct.ptree*, %struct.ptree** %169, align 4
  br label %175

; <label>:171:                                    ; preds = %157
  %172 = load %struct.ptree*, %struct.ptree** %6, align 4
  %173 = getelementptr inbounds %struct.ptree, %struct.ptree* %172, i32 0, i32 5
  %174 = load %struct.ptree*, %struct.ptree** %173, align 4
  br label %175

; <label>:175:                                    ; preds = %171, %167
  %176 = phi %struct.ptree* [ %170, %167 ], [ %174, %171 ]
  %177 = load %struct.ptree*, %struct.ptree** %7, align 4
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 5
  store %struct.ptree* %176, %struct.ptree** %178, align 4
  br label %201

; <label>:179:                                    ; preds = %147
  %180 = load %struct.ptree*, %struct.ptree** %6, align 4
  %181 = getelementptr inbounds %struct.ptree, %struct.ptree* %180, i32 0, i32 3
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load %struct.ptree*, %struct.ptree** %4, align 4
  %185 = getelementptr inbounds %struct.ptree, %struct.ptree* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call arm_aapcscc i32 @bit(i32 %183, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

; <label>:189:                                    ; preds = %179
  %190 = load %struct.ptree*, %struct.ptree** %6, align 4
  %191 = getelementptr inbounds %struct.ptree, %struct.ptree* %190, i32 0, i32 4
  %192 = load %struct.ptree*, %struct.ptree** %191, align 4
  br label %197

; <label>:193:                                    ; preds = %179
  %194 = load %struct.ptree*, %struct.ptree** %6, align 4
  %195 = getelementptr inbounds %struct.ptree, %struct.ptree* %194, i32 0, i32 5
  %196 = load %struct.ptree*, %struct.ptree** %195, align 4
  br label %197

; <label>:197:                                    ; preds = %193, %189
  %198 = phi %struct.ptree* [ %192, %189 ], [ %196, %193 ]
  %199 = load %struct.ptree*, %struct.ptree** %7, align 4
  %200 = getelementptr inbounds %struct.ptree, %struct.ptree* %199, i32 0, i32 4
  store %struct.ptree* %198, %struct.ptree** %200, align 4
  br label %201

; <label>:201:                                    ; preds = %197, %175
  %202 = load %struct.ptree*, %struct.ptree** %10, align 4
  %203 = getelementptr inbounds %struct.ptree, %struct.ptree* %202, i32 0, i32 1
  %204 = load %struct.ptree_mask*, %struct.ptree_mask** %203, align 4
  %205 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 4
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %214

; <label>:208:                                    ; preds = %201
  %209 = load %struct.ptree*, %struct.ptree** %10, align 4
  %210 = getelementptr inbounds %struct.ptree, %struct.ptree* %209, i32 0, i32 1
  %211 = load %struct.ptree_mask*, %struct.ptree_mask** %210, align 4
  %212 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 4
  call arm_aapcscc void @free(i8* %213)
  br label %214

; <label>:214:                                    ; preds = %208, %201
  %215 = load %struct.ptree*, %struct.ptree** %10, align 4
  %216 = getelementptr inbounds %struct.ptree, %struct.ptree* %215, i32 0, i32 1
  %217 = load %struct.ptree_mask*, %struct.ptree_mask** %216, align 4
  %218 = bitcast %struct.ptree_mask* %217 to i8*
  call arm_aapcscc void @free(i8* %218)
  %219 = load %struct.ptree*, %struct.ptree** %10, align 4
  %220 = load %struct.ptree*, %struct.ptree** %6, align 4
  %221 = icmp ne %struct.ptree* %219, %220
  br i1 %221, label %222, label %238

; <label>:222:                                    ; preds = %214
  %223 = load %struct.ptree*, %struct.ptree** %6, align 4
  %224 = getelementptr inbounds %struct.ptree, %struct.ptree* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ptree*, %struct.ptree** %10, align 4
  %227 = getelementptr inbounds %struct.ptree, %struct.ptree* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = load %struct.ptree*, %struct.ptree** %6, align 4
  %229 = getelementptr inbounds %struct.ptree, %struct.ptree* %228, i32 0, i32 1
  %230 = load %struct.ptree_mask*, %struct.ptree_mask** %229, align 4
  %231 = load %struct.ptree*, %struct.ptree** %10, align 4
  %232 = getelementptr inbounds %struct.ptree, %struct.ptree* %231, i32 0, i32 1
  store %struct.ptree_mask* %230, %struct.ptree_mask** %232, align 4
  %233 = load %struct.ptree*, %struct.ptree** %6, align 4
  %234 = getelementptr inbounds %struct.ptree, %struct.ptree* %233, i32 0, i32 2
  %235 = load i8, i8* %234, align 4
  %236 = load %struct.ptree*, %struct.ptree** %10, align 4
  %237 = getelementptr inbounds %struct.ptree, %struct.ptree* %236, i32 0, i32 2
  store i8 %235, i8* %237, align 4
  br label %238

; <label>:238:                                    ; preds = %222, %214
  %239 = load %struct.ptree*, %struct.ptree** %6, align 4
  %240 = bitcast %struct.ptree* %239 to i8*
  call arm_aapcscc void @free(i8* %240)
  store i32 1, i32* %3, align 4
  br label %333

; <label>:241:                                    ; preds = %69
  store i32 0, i32* %13, align 4
  br label %242

; <label>:242:                                    ; preds = %265, %241
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.ptree*, %struct.ptree** %10, align 4
  %245 = getelementptr inbounds %struct.ptree, %struct.ptree* %244, i32 0, i32 2
  %246 = load i8, i8* %245, align 4
  %247 = zext i8 %246 to i32
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %268

; <label>:249:                                    ; preds = %242
  %250 = load %struct.ptree*, %struct.ptree** %4, align 4
  %251 = getelementptr inbounds %struct.ptree, %struct.ptree* %250, i32 0, i32 1
  %252 = load %struct.ptree_mask*, %struct.ptree_mask** %251, align 4
  %253 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ptree*, %struct.ptree** %10, align 4
  %256 = getelementptr inbounds %struct.ptree, %struct.ptree* %255, i32 0, i32 1
  %257 = load %struct.ptree_mask*, %struct.ptree_mask** %256, align 4
  %258 = load i32, i32* %13, align 4
  %259 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %257, i32 %258
  %260 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %254, %261
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %249
  br label %268

; <label>:264:                                    ; preds = %249
  br label %265

; <label>:265:                                    ; preds = %264
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %13, align 4
  br label %242

; <label>:268:                                    ; preds = %263, %242
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.ptree*, %struct.ptree** %10, align 4
  %271 = getelementptr inbounds %struct.ptree, %struct.ptree* %270, i32 0, i32 2
  %272 = load i8, i8* %271, align 4
  %273 = zext i8 %272 to i32
  %274 = icmp sge i32 %269, %273
  br i1 %274, label %275, label %276

; <label>:275:                                    ; preds = %268
  store i32 0, i32* %3, align 4
  br label %333

; <label>:276:                                    ; preds = %268
  %277 = load %struct.ptree*, %struct.ptree** %10, align 4
  %278 = getelementptr inbounds %struct.ptree, %struct.ptree* %277, i32 0, i32 2
  %279 = load i8, i8* %278, align 4
  %280 = zext i8 %279 to i32
  %281 = sub nsw i32 %280, 1
  %282 = mul i32 8, %281
  %283 = call arm_aapcscc i8* @malloc(i32 %282)
  %284 = bitcast i8* %283 to %struct.ptree_mask*
  store %struct.ptree_mask* %284, %struct.ptree_mask** %11, align 4
  store i32 0, i32* %13, align 4
  %285 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 4
  store %struct.ptree_mask* %285, %struct.ptree_mask** %12, align 4
  br label %286

; <label>:286:                                    ; preds = %318, %276
  %287 = load i32, i32* %13, align 4
  %288 = load %struct.ptree*, %struct.ptree** %10, align 4
  %289 = getelementptr inbounds %struct.ptree, %struct.ptree* %288, i32 0, i32 2
  %290 = load i8, i8* %289, align 4
  %291 = zext i8 %290 to i32
  %292 = icmp slt i32 %287, %291
  br i1 %292, label %293, label %321

; <label>:293:                                    ; preds = %286
  %294 = load %struct.ptree*, %struct.ptree** %4, align 4
  %295 = getelementptr inbounds %struct.ptree, %struct.ptree* %294, i32 0, i32 1
  %296 = load %struct.ptree_mask*, %struct.ptree_mask** %295, align 4
  %297 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.ptree*, %struct.ptree** %10, align 4
  %300 = getelementptr inbounds %struct.ptree, %struct.ptree* %299, i32 0, i32 1
  %301 = load %struct.ptree_mask*, %struct.ptree_mask** %300, align 4
  %302 = load i32, i32* %13, align 4
  %303 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %301, i32 %302
  %304 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %298, %305
  br i1 %306, label %307, label %317

; <label>:307:                                    ; preds = %293
  %308 = load %struct.ptree*, %struct.ptree** %10, align 4
  %309 = getelementptr inbounds %struct.ptree, %struct.ptree* %308, i32 0, i32 1
  %310 = load %struct.ptree_mask*, %struct.ptree_mask** %309, align 4
  %311 = load i32, i32* %13, align 4
  %312 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %310, i32 %311
  %313 = bitcast %struct.ptree_mask* %312 to i8*
  %314 = load %struct.ptree_mask*, %struct.ptree_mask** %12, align 4
  %315 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %314, i32 1
  store %struct.ptree_mask* %315, %struct.ptree_mask** %12, align 4
  %316 = bitcast %struct.ptree_mask* %314 to i8*
  call arm_aapcscc void @bcopy(i8* %313, i8* %316, i32 8)
  br label %317

; <label>:317:                                    ; preds = %307, %293
  br label %318

; <label>:318:                                    ; preds = %317
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %13, align 4
  br label %286

; <label>:321:                                    ; preds = %286
  %322 = load %struct.ptree*, %struct.ptree** %10, align 4
  %323 = getelementptr inbounds %struct.ptree, %struct.ptree* %322, i32 0, i32 2
  %324 = load i8, i8* %323, align 4
  %325 = add i8 %324, -1
  store i8 %325, i8* %323, align 4
  %326 = load %struct.ptree*, %struct.ptree** %10, align 4
  %327 = getelementptr inbounds %struct.ptree, %struct.ptree* %326, i32 0, i32 1
  %328 = load %struct.ptree_mask*, %struct.ptree_mask** %327, align 4
  %329 = bitcast %struct.ptree_mask* %328 to i8*
  call arm_aapcscc void @free(i8* %329)
  %330 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 4
  %331 = load %struct.ptree*, %struct.ptree** %10, align 4
  %332 = getelementptr inbounds %struct.ptree, %struct.ptree* %331, i32 0, i32 1
  store %struct.ptree_mask* %330, %struct.ptree_mask** %332, align 4
  store i32 1, i32* %3, align 4
  br label %333

; <label>:333:                                    ; preds = %321, %275, %238, %94, %81, %68, %24
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

; Function Attrs: nounwind
define arm_aapcscc %struct.ptree* @pat_search(i32, %struct.ptree*) #0 {
  %3 = alloca %struct.ptree*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ptree* %1, %struct.ptree** %5, align 4
  store %struct.ptree* null, %struct.ptree** %6, align 4
  %9 = load %struct.ptree*, %struct.ptree** %5, align 4
  store %struct.ptree* %9, %struct.ptree** %7, align 4
  %10 = load %struct.ptree*, %struct.ptree** %7, align 4
  %11 = icmp ne %struct.ptree* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %2
  store %struct.ptree* null, %struct.ptree** %3, align 4
  br label %75

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %50, %13
  %15 = load %struct.ptree*, %struct.ptree** %7, align 4
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ptree*, %struct.ptree** %7, align 4
  %20 = getelementptr inbounds %struct.ptree, %struct.ptree* %19, i32 0, i32 1
  %21 = load %struct.ptree_mask*, %struct.ptree_mask** %20, align 4
  %22 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %14
  %27 = load %struct.ptree*, %struct.ptree** %7, align 4
  store %struct.ptree* %27, %struct.ptree** %6, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %14
  %29 = load %struct.ptree*, %struct.ptree** %7, align 4
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ptree*, %struct.ptree** %7, align 4
  %34 = getelementptr inbounds %struct.ptree, %struct.ptree* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %4, align 4
  %38 = call arm_aapcscc i32 @bit(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %28
  %41 = load %struct.ptree*, %struct.ptree** %7, align 4
  %42 = getelementptr inbounds %struct.ptree, %struct.ptree* %41, i32 0, i32 5
  %43 = load %struct.ptree*, %struct.ptree** %42, align 4
  br label %48

; <label>:44:                                     ; preds = %28
  %45 = load %struct.ptree*, %struct.ptree** %7, align 4
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 4
  %47 = load %struct.ptree*, %struct.ptree** %46, align 4
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = phi %struct.ptree* [ %43, %40 ], [ %47, %44 ]
  store %struct.ptree* %49, %struct.ptree** %7, align 4
  br label %50

; <label>:50:                                     ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ptree*, %struct.ptree** %7, align 4
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %14, label %57

; <label>:57:                                     ; preds = %50
  %58 = load %struct.ptree*, %struct.ptree** %7, align 4
  %59 = getelementptr inbounds %struct.ptree, %struct.ptree* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ptree*, %struct.ptree** %7, align 4
  %63 = getelementptr inbounds %struct.ptree, %struct.ptree* %62, i32 0, i32 1
  %64 = load %struct.ptree_mask*, %struct.ptree_mask** %63, align 4
  %65 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %61, %66
  %68 = icmp eq i32 %60, %67
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %57
  %70 = load %struct.ptree*, %struct.ptree** %7, align 4
  br label %73

; <label>:71:                                     ; preds = %57
  %72 = load %struct.ptree*, %struct.ptree** %6, align 4
  br label %73

; <label>:73:                                     ; preds = %71, %69
  %74 = phi %struct.ptree* [ %70, %69 ], [ %72, %71 ]
  store %struct.ptree* %74, %struct.ptree** %3, align 4
  br label %75

; <label>:75:                                     ; preds = %73, %12
  %76 = load %struct.ptree*, %struct.ptree** %3, align 4
  ret %struct.ptree* %76
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
