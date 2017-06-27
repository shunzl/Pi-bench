; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
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
define arm_aapcscc %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i8>, align 16
  %Recovery1 = alloca i8, align 1
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca %struct.ptree*, align 4
  %4 = alloca %struct.ptree*, align 4
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree_mask*, align 4
  %8 = alloca %struct.ptree_mask*, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
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
  br label %268

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
  br i1 %71, label %72, label %207

; <label>:72:                                     ; preds = %64
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %9, align 4
  br label %73

; <label>:73:                                     ; preds = %114, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ptree*, %struct.ptree** %6, align 4
  %76 = getelementptr inbounds %struct.ptree, %struct.ptree* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %118

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
  br label %268

; <label>:113:                                    ; preds = %80
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %115, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt, i32 %115, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %115, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %115, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec6, align 16
  %116 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop = add <4 x i32> %116, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %117 = add nsw i32 %115, 1
  store i32 %117, i32* %9, align 4
  br label %73

; <label>:118:                                    ; preds = %73
  %119 = load %struct.ptree*, %struct.ptree** %6, align 4
  %120 = getelementptr inbounds %struct.ptree, %struct.ptree* %119, i32 0, i32 2
  %121 = load i8, i8* %120, align 4
  %122 = zext i8 %121 to i32
  store i32 %122, i32* %CastInst
  %123 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %123, i32 0
  %insertCast11 = insertelement <4 x i32> %insertCast, i32 %123, i32 1
  %insertCast12 = insertelement <4 x i32> %insertCast11, i32 %123, i32 2
  %insertCast13 = insertelement <4 x i32> %insertCast12, i32 %123, i32 3
  store <4 x i32> %insertCast13, <4 x i32>* %CastInstVec, align 4
  %124 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop14 = add <4 x i32> %124, <i32 1, i32 1, i32 1, i32 1>
  %125 = add nsw i32 %122, 1
  %Vop15 = mul <4 x i32> <i32 8, i32 8, i32 8, i32 8>, %Vop14
  %126 = mul i32 8, %125
  %127 = call arm_aapcscc i8* @malloc(i32 %126)
  %128 = bitcast i8* %127 to %struct.ptree_mask*
  store %struct.ptree_mask* %128, %struct.ptree_mask** %7, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %10, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %9, align 4
  %129 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 4
  store %struct.ptree_mask* %129, %struct.ptree_mask** %8, align 4
  br label %130

; <label>:130:                                    ; preds = %175, %118
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ptree*, %struct.ptree** %6, align 4
  %133 = getelementptr inbounds %struct.ptree, %struct.ptree* %132, i32 0, i32 2
  %134 = load i8, i8* %133, align 4
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %178

; <label>:137:                                    ; preds = %130
  %138 = load %struct.ptree*, %struct.ptree** %4, align 4
  %139 = getelementptr inbounds %struct.ptree, %struct.ptree* %138, i32 0, i32 1
  %140 = load %struct.ptree_mask*, %struct.ptree_mask** %139, align 4
  %141 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ptree*, %struct.ptree** %6, align 4
  %144 = getelementptr inbounds %struct.ptree, %struct.ptree* %143, i32 0, i32 1
  %145 = load %struct.ptree_mask*, %struct.ptree_mask** %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %145, i32 %146
  %148 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ugt i32 %142, %149
  br i1 %150, label %151, label %163

; <label>:151:                                    ; preds = %137
  %152 = load %struct.ptree*, %struct.ptree** %6, align 4
  %153 = getelementptr inbounds %struct.ptree, %struct.ptree* %152, i32 0, i32 1
  %154 = load %struct.ptree_mask*, %struct.ptree_mask** %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %154, i32 %155
  %157 = bitcast %struct.ptree_mask* %156 to i8*
  %158 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %159 = bitcast %struct.ptree_mask* %158 to i8*
  call arm_aapcscc void @bcopy(i8* %157, i8* %159, i32 8)
  %160 = load i32, i32* %9, align 4
  %161 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop16 = add <4 x i32> %161, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop16, <4 x i32>* %allocaVec6
  %162 = add nsw i32 %160, 1
  store i32 %162, i32* %9, align 4
  br label %174

; <label>:163:                                    ; preds = %137
  %164 = load %struct.ptree*, %struct.ptree** %4, align 4
  %165 = getelementptr inbounds %struct.ptree, %struct.ptree* %164, i32 0, i32 1
  %166 = load %struct.ptree_mask*, %struct.ptree_mask** %165, align 4
  %167 = bitcast %struct.ptree_mask* %166 to i8*
  %168 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %169 = bitcast %struct.ptree_mask* %168 to i8*
  call arm_aapcscc void @bcopy(i8* %167, i8* %169, i32 8)
  %170 = load %struct.ptree*, %struct.ptree** %4, align 4
  %171 = getelementptr inbounds %struct.ptree, %struct.ptree* %170, i32 0, i32 1
  %172 = load %struct.ptree_mask*, %struct.ptree_mask** %171, align 4
  %173 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec7
  store i32 1, i32* %10, align 4
  br label %174

; <label>:174:                                    ; preds = %163, %151
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %177 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %176, i32 1
  store %struct.ptree_mask* %177, %struct.ptree_mask** %8, align 4
  br label %130

; <label>:178:                                    ; preds = %130
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

; <label>:181:                                    ; preds = %178
  %182 = load %struct.ptree*, %struct.ptree** %4, align 4
  %183 = getelementptr inbounds %struct.ptree, %struct.ptree* %182, i32 0, i32 1
  %184 = load %struct.ptree_mask*, %struct.ptree_mask** %183, align 4
  %185 = bitcast %struct.ptree_mask* %184 to i8*
  %186 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 4
  %187 = bitcast %struct.ptree_mask* %186 to i8*
  call arm_aapcscc void @bcopy(i8* %185, i8* %187, i32 8)
  br label %188

; <label>:188:                                    ; preds = %181, %178
  %189 = load %struct.ptree*, %struct.ptree** %4, align 4
  %190 = getelementptr inbounds %struct.ptree, %struct.ptree* %189, i32 0, i32 1
  %191 = load %struct.ptree_mask*, %struct.ptree_mask** %190, align 4
  %192 = bitcast %struct.ptree_mask* %191 to i8*
  call arm_aapcscc void @free(i8* %192)
  %193 = load %struct.ptree*, %struct.ptree** %4, align 4
  %194 = bitcast %struct.ptree* %193 to i8*
  call arm_aapcscc void @free(i8* %194)
  store %struct.ptree* null, %struct.ptree** %4, align 4
  %195 = load %struct.ptree*, %struct.ptree** %6, align 4
  %196 = getelementptr inbounds %struct.ptree, %struct.ptree* %195, i32 0, i32 2
  %197 = load i8, i8* %196, align 4
  %198 = add i8 %197, 1
  store i8 %198, i8* %196, align 4
  %199 = load %struct.ptree*, %struct.ptree** %6, align 4
  %200 = getelementptr inbounds %struct.ptree, %struct.ptree* %199, i32 0, i32 1
  %201 = load %struct.ptree_mask*, %struct.ptree_mask** %200, align 4
  %202 = bitcast %struct.ptree_mask* %201 to i8*
  call arm_aapcscc void @free(i8* %202)
  %203 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 4
  %204 = load %struct.ptree*, %struct.ptree** %6, align 4
  %205 = getelementptr inbounds %struct.ptree, %struct.ptree* %204, i32 0, i32 1
  store %struct.ptree_mask* %203, %struct.ptree_mask** %205, align 4
  %206 = load %struct.ptree*, %struct.ptree** %6, align 4
  store %struct.ptree* %206, %struct.ptree** %3, align 4
  br label %268

; <label>:207:                                    ; preds = %64
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec6
  store i32 1, i32* %9, align 4
  br label %208

; <label>:208:                                    ; preds = %235, %207
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 32
  br i1 %210, label %211, label %223

; <label>:211:                                    ; preds = %208
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.ptree*, %struct.ptree** %4, align 4
  %214 = getelementptr inbounds %struct.ptree, %struct.ptree* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call arm_aapcscc i32 @bit(i32 %212, i32 %215)
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ptree*, %struct.ptree** %6, align 4
  %219 = getelementptr inbounds %struct.ptree, %struct.ptree* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call arm_aapcscc i32 @bit(i32 %217, i32 %220)
  %222 = icmp eq i32 %216, %221
  br label %223

; <label>:223:                                    ; preds = %211, %208
  %224 = phi i1 [ false, %208 ], [ %222, %211 ]
  br i1 %224, label %225, label %236

; <label>:225:                                    ; preds = %223
  br label %226

; <label>:226:                                    ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop17 = add <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop17, <4 x i32>* %allocaVec6
  %229 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %229, i64 0
  %extractE18 = extractelement <4 x i32> %229, i64 1
  %extractE19 = extractelement <4 x i32> %229, i64 2
  %sum = add i32 %extractE, %extractE18
  %sum20 = add i32 %sum, %extractE19
  %230 = add nsw i32 %227, 1
  %Fmul = mul i32 %230, 3
  store i32 %230, i32* %Recovery2
  %Fcmp = icmp ne i32 %sum20, %Fmul
  br i1 %Fcmp, label %231, label %235

; <label>:231:                                    ; preds = %226
  %remThree = sdiv i32 %sum20, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %232, label %233

; <label>:232:                                    ; preds = %231
  store i32 %230, i32* %Recovery2, align 4
  br label %234

; <label>:233:                                    ; preds = %231
  store i32 %extractE, i32* %Recovery2, align 4
  br label %234

; <label>:234:                                    ; preds = %233, %232
  br label %235

; <label>:235:                                    ; preds = %226, %234
  %ReplaceInst = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst, i32* %9, align 4
  br label %208

; <label>:236:                                    ; preds = %223
  %237 = load %struct.ptree*, %struct.ptree** %5, align 4
  %238 = getelementptr inbounds %struct.ptree, %struct.ptree* %237, i32 0, i32 3
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load %struct.ptree*, %struct.ptree** %4, align 4
  %242 = getelementptr inbounds %struct.ptree, %struct.ptree* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call arm_aapcscc i32 @bit(i32 %240, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

; <label>:246:                                    ; preds = %236
  %247 = load %struct.ptree*, %struct.ptree** %5, align 4
  %248 = getelementptr inbounds %struct.ptree, %struct.ptree* %247, i32 0, i32 5
  %249 = load %struct.ptree*, %struct.ptree** %248, align 4
  %250 = load %struct.ptree*, %struct.ptree** %4, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.ptree*, %struct.ptree** %5, align 4
  %253 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %249, %struct.ptree* %250, i32 %251, %struct.ptree* %252)
  %254 = load %struct.ptree*, %struct.ptree** %5, align 4
  %255 = getelementptr inbounds %struct.ptree, %struct.ptree* %254, i32 0, i32 5
  store %struct.ptree* %253, %struct.ptree** %255, align 4
  br label %266

; <label>:256:                                    ; preds = %236
  %257 = load %struct.ptree*, %struct.ptree** %5, align 4
  %258 = getelementptr inbounds %struct.ptree, %struct.ptree* %257, i32 0, i32 4
  %259 = load %struct.ptree*, %struct.ptree** %258, align 4
  %260 = load %struct.ptree*, %struct.ptree** %4, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.ptree*, %struct.ptree** %5, align 4
  %263 = call arm_aapcscc %struct.ptree* @insertR(%struct.ptree* %259, %struct.ptree* %260, i32 %261, %struct.ptree* %262)
  %264 = load %struct.ptree*, %struct.ptree** %5, align 4
  %265 = getelementptr inbounds %struct.ptree, %struct.ptree* %264, i32 0, i32 4
  store %struct.ptree* %263, %struct.ptree** %265, align 4
  br label %266

; <label>:266:                                    ; preds = %256, %246
  %267 = load %struct.ptree*, %struct.ptree** %4, align 4
  store %struct.ptree* %267, %struct.ptree** %3, align 4
  br label %268

; <label>:268:                                    ; preds = %266, %188, %94, %21
  %269 = load %struct.ptree*, %struct.ptree** %3, align 4
  ret %struct.ptree* %269
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @bit(i32, i32) #1 {
  %allocaVec = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %5, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %5, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %5, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %6 = load i32, i32* %3, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %6, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %6, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %6, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %6, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec, align 16
  %7 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop = sub <4 x i32> <i32 31, i32 31, i32 31, i32 31>, %7
  %8 = sub nsw i32 31, %6
  %Vop9 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %Vop
  %9 = shl i32 1, %8
  %10 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop10 = and <4 x i32> %10, %Vop9
  %11 = and i32 %5, %9
  ret i32 %11
}

declare arm_aapcscc void @free(i8*) #2

declare arm_aapcscc i8* @malloc(i32) #2

declare arm_aapcscc void @bcopy(i8*, i8*, i32) #2

; Function Attrs: nounwind
define internal arm_aapcscc %struct.ptree* @insertR(%struct.ptree*, %struct.ptree*, i32, %struct.ptree*) #0 {
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %allocaVec = alloca <4 x i32>, align 16
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
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i8>, align 16
  %Recovery1 = alloca i8, align 1
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
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
  %allocaVec5 = alloca <4 x i32>, align 16
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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  br label %343

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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  br label %343

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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  br label %343

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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  br label %343

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
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec4
  store i32 1, i32* %3, align 4
  br label %343

; <label>:241:                                    ; preds = %69
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec5
  store i32 0, i32* %13, align 4
  br label %242

; <label>:242:                                    ; preds = %265, %241
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.ptree*, %struct.ptree** %10, align 4
  %245 = getelementptr inbounds %struct.ptree, %struct.ptree* %244, i32 0, i32 2
  %246 = load i8, i8* %245, align 4
  %247 = zext i8 %246 to i32
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %269

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
  br label %269

; <label>:264:                                    ; preds = %249
  br label %265

; <label>:265:                                    ; preds = %264
  %266 = load i32, i32* %13, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %266, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %266, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %266, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %266, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec5, align 16
  %267 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec5
  %268 = add nsw i32 %266, 1
  store i32 %268, i32* %13, align 4
  br label %242

; <label>:269:                                    ; preds = %263, %242
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.ptree*, %struct.ptree** %10, align 4
  %272 = getelementptr inbounds %struct.ptree, %struct.ptree* %271, i32 0, i32 2
  %273 = load i8, i8* %272, align 4
  %274 = zext i8 %273 to i32
  %275 = icmp sge i32 %270, %274
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %269
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  br label %343

; <label>:277:                                    ; preds = %269
  %278 = load %struct.ptree*, %struct.ptree** %10, align 4
  %279 = getelementptr inbounds %struct.ptree, %struct.ptree* %278, i32 0, i32 2
  %280 = load i8, i8* %279, align 4
  %281 = zext i8 %280 to i32
  store i32 %281, i32* %CastInst
  %282 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %282, i32 0
  %insertCast9 = insertelement <4 x i32> %insertCast, i32 %282, i32 1
  %insertCast10 = insertelement <4 x i32> %insertCast9, i32 %282, i32 2
  %insertCast11 = insertelement <4 x i32> %insertCast10, i32 %282, i32 3
  store <4 x i32> %insertCast11, <4 x i32>* %CastInstVec, align 4
  %283 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop12 = sub <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %284 = sub nsw i32 %281, 1
  %Vop13 = mul <4 x i32> <i32 8, i32 8, i32 8, i32 8>, %Vop12
  %285 = mul i32 8, %284
  %286 = call arm_aapcscc i8* @malloc(i32 %285)
  %287 = bitcast i8* %286 to %struct.ptree_mask*
  store %struct.ptree_mask* %287, %struct.ptree_mask** %11, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec5
  store i32 0, i32* %13, align 4
  %288 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 4
  store %struct.ptree_mask* %288, %struct.ptree_mask** %12, align 4
  br label %289

; <label>:289:                                    ; preds = %330, %277
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.ptree*, %struct.ptree** %10, align 4
  %292 = getelementptr inbounds %struct.ptree, %struct.ptree* %291, i32 0, i32 2
  %293 = load i8, i8* %292, align 4
  %294 = zext i8 %293 to i32
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %331

; <label>:296:                                    ; preds = %289
  %297 = load %struct.ptree*, %struct.ptree** %4, align 4
  %298 = getelementptr inbounds %struct.ptree, %struct.ptree* %297, i32 0, i32 1
  %299 = load %struct.ptree_mask*, %struct.ptree_mask** %298, align 4
  %300 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.ptree*, %struct.ptree** %10, align 4
  %303 = getelementptr inbounds %struct.ptree, %struct.ptree* %302, i32 0, i32 1
  %304 = load %struct.ptree_mask*, %struct.ptree_mask** %303, align 4
  %305 = load i32, i32* %13, align 4
  %306 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %304, i32 %305
  %307 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %301, %308
  br i1 %309, label %310, label %320

; <label>:310:                                    ; preds = %296
  %311 = load %struct.ptree*, %struct.ptree** %10, align 4
  %312 = getelementptr inbounds %struct.ptree, %struct.ptree* %311, i32 0, i32 1
  %313 = load %struct.ptree_mask*, %struct.ptree_mask** %312, align 4
  %314 = load i32, i32* %13, align 4
  %315 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %313, i32 %314
  %316 = bitcast %struct.ptree_mask* %315 to i8*
  %317 = load %struct.ptree_mask*, %struct.ptree_mask** %12, align 4
  %318 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %317, i32 1
  store %struct.ptree_mask* %318, %struct.ptree_mask** %12, align 4
  %319 = bitcast %struct.ptree_mask* %317 to i8*
  call arm_aapcscc void @bcopy(i8* %316, i8* %319, i32 8)
  br label %320

; <label>:320:                                    ; preds = %310, %296
  br label %321

; <label>:321:                                    ; preds = %320
  %322 = load i32, i32* %13, align 4
  %323 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop14 = add <4 x i32> %323, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop14, <4 x i32>* %allocaVec5
  %324 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %324, i64 0
  %extractE15 = extractelement <4 x i32> %324, i64 1
  %extractE16 = extractelement <4 x i32> %324, i64 2
  %sum = add i32 %extractE, %extractE15
  %sum17 = add i32 %sum, %extractE16
  %325 = add nsw i32 %322, 1
  %Fmul = mul i32 %325, 3
  store i32 %325, i32* %Recovery
  %Fcmp = icmp ne i32 %sum17, %Fmul
  br i1 %Fcmp, label %326, label %330

; <label>:326:                                    ; preds = %321
  %remThree = sdiv i32 %sum17, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %327, label %328

; <label>:327:                                    ; preds = %326
  store i32 %325, i32* %Recovery, align 4
  br label %329

; <label>:328:                                    ; preds = %326
  store i32 %extractE, i32* %Recovery, align 4
  br label %329

; <label>:329:                                    ; preds = %328, %327
  br label %330

; <label>:330:                                    ; preds = %321, %329
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %13, align 4
  br label %289

; <label>:331:                                    ; preds = %289
  %332 = load %struct.ptree*, %struct.ptree** %10, align 4
  %333 = getelementptr inbounds %struct.ptree, %struct.ptree* %332, i32 0, i32 2
  %334 = load i8, i8* %333, align 4
  %335 = add i8 %334, -1
  store i8 %335, i8* %333, align 4
  %336 = load %struct.ptree*, %struct.ptree** %10, align 4
  %337 = getelementptr inbounds %struct.ptree, %struct.ptree* %336, i32 0, i32 1
  %338 = load %struct.ptree_mask*, %struct.ptree_mask** %337, align 4
  %339 = bitcast %struct.ptree_mask* %338 to i8*
  call arm_aapcscc void @free(i8* %339)
  %340 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 4
  %341 = load %struct.ptree*, %struct.ptree** %10, align 4
  %342 = getelementptr inbounds %struct.ptree, %struct.ptree* %341, i32 0, i32 1
  store %struct.ptree_mask* %340, %struct.ptree_mask** %342, align 4
  store i32 1, i32* %3, align 4
  br label %343

; <label>:343:                                    ; preds = %331, %276, %238, %94, %81, %68, %24
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

; Function Attrs: nounwind
define arm_aapcscc %struct.ptree* @pat_search(i32, %struct.ptree*) #0 {
  %3 = alloca %struct.ptree*, align 4
  %allocaVec = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptree*, align 4
  %6 = alloca %struct.ptree*, align 4
  %7 = alloca %struct.ptree*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
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
  %insertElmt = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %18, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %18, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %18, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec, align 16
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
  %insertElmt5 = insertelement <4 x i32> undef, i32 %61, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %61, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %61, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %61, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec, align 16
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

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
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
  %allocaVec2 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec3 = alloca <4 x float>, align 16
  %15 = alloca float, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %allocaVec2
  store i32 -1, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %2
  %19 = load i8**, i8*** %5, align 4
  %20 = getelementptr inbounds i8*, i8** %19, i32 0
  %21 = load i8*, i8** %20, align 4
  %22 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* %21)
  call arm_aapcscc void @exit(i32 -1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
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
  call arm_aapcscc void @exit(i32 1) #5
  unreachable

; <label>:166:                                    ; preds = %160
  br label %81

; <label>:167:                                    ; preds = %81
  call arm_aapcscc void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare arm_aapcscc i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #2

declare arm_aapcscc void @perror(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

declare arm_aapcscc i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare arm_aapcscc i32 @sscanf(i8*, i8*, ...) #2

declare arm_aapcscc i32 @htonl(i32) #2

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
