; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.adpcm_state = type { i16, i8 }
%struct._IO_FILE = type opaque

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 4
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 4
@abuf = common global [500 x i8] zeroinitializer, align 1
@sbuf = common global [1000 x i16] zeroinitializer, align 2
@state = common global %struct.adpcm_state zeroinitializer, align 2
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @adpcm_coder(i16*, i8*, i32, %struct.adpcm_state*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %5 = alloca i16*, align 4
  %6 = alloca i8*, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i8*, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  store i16* %0, i16** %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 4
  %21 = load i8*, i8** %6, align 4
  store i8* %21, i8** %10, align 4
  %22 = load i16*, i16** %5, align 4
  store i16* %22, i16** %9, align 4
  %23 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %24 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %28 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec17
  store i32 1, i32* %20, align 4
  br label %34

; <label>:34:                                     ; preds = %200, %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %201

; <label>:37:                                     ; preds = %34
  %38 = load i16*, i16** %9, align 4
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %9, align 4
  %40 = load i16, i16* %38, align 2
  %41 = sext i16 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %42, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt, i32 %42, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %42, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %42, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec8, align 16
  %43 = load i32, i32* %16, align 4
  %insertElmt21 = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %43, i32 1
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %43, i32 2
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %43, i32 3
  store <4 x i32> %insertElmt24, <4 x i32>* %allocaVec13, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %45 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %Vop = sub <4 x i32> %44, %45
  store <4 x i32> %Vop, <4 x i32>* %allocaVec11
  %46 = sub nsw i32 %42, %43
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  %49 = select i1 %48, i32 8, i32 0
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %37
  %53 = load i32, i32* %14, align 4
  %54 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop25 = sub <4 x i32> zeroinitializer, %54
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec11
  %55 = sub nsw i32 0, %53
  store i32 %55, i32* %14, align 4
  br label %56

; <label>:56:                                     ; preds = %52, %37
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec10
  store i32 0, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %insertElmt26 = insertelement <4 x i32> undef, i32 %57, i32 0
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %57, i32 1
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %57, i32 2
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %57, i32 3
  store <4 x i32> %insertElmt29, <4 x i32>* %allocaVec12, align 16
  %58 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop30 = ashr <4 x i32> %58, <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %Vop30, <4 x i32>* %allocaVec14
  %59 = ashr i32 %57, 3
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %56
  store <4 x i32> <i32 4, i32 4, i32 4, i32 4>, <4 x i32>* %allocaVec10
  store i32 4, i32* %13, align 4
  %64 = load i32, i32* %15, align 4
  %insertElmt31 = insertelement <4 x i32> undef, i32 %64, i32 0
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %64, i32 1
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %64, i32 2
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %64, i32 3
  store <4 x i32> %insertElmt34, <4 x i32>* %allocaVec12, align 16
  %65 = load i32, i32* %14, align 4
  %66 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %67 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop35 = sub <4 x i32> %66, %67
  store <4 x i32> %Vop35, <4 x i32>* %allocaVec11
  %68 = sub nsw i32 %65, %64
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %insertElmt36 = insertelement <4 x i32> undef, i32 %69, i32 0
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %69, i32 1
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %69, i32 2
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %69, i32 3
  store <4 x i32> %insertElmt39, <4 x i32>* %allocaVec12, align 16
  %70 = load i32, i32* %17, align 4
  %71 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %72 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop40 = add <4 x i32> %71, %72
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec14
  %73 = add nsw i32 %70, %69
  store i32 %73, i32* %17, align 4
  br label %74

; <label>:74:                                     ; preds = %63, %56
  %75 = load i32, i32* %15, align 4
  %insertElmt41 = insertelement <4 x i32> undef, i32 %75, i32 0
  %insertElmt42 = insertelement <4 x i32> %insertElmt41, i32 %75, i32 1
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %75, i32 2
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %75, i32 3
  store <4 x i32> %insertElmt44, <4 x i32>* %allocaVec12, align 16
  %76 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop45 = ashr <4 x i32> %76, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop45, <4 x i32>* %allocaVec12
  %77 = ashr i32 %75, 1
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %101

; <label>:81:                                     ; preds = %74
  %82 = load i32, i32* %13, align 4
  %insertElmt46 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %82, i32 1
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %82, i32 2
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %82, i32 3
  store <4 x i32> %insertElmt49, <4 x i32>* %allocaVec10, align 16
  %83 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop50 = or <4 x i32> %83, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop50, <4 x i32>* %allocaVec10
  %84 = or i32 %82, 2
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %88 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop51 = sub <4 x i32> %87, %88
  store <4 x i32> %Vop51, <4 x i32>* %allocaVec11
  %89 = load <4 x i32>, <4 x i32>* %allocaVec11, align 4
  %extractE = extractelement <4 x i32> %89, i64 0
  %extractE52 = extractelement <4 x i32> %89, i64 1
  %extractE53 = extractelement <4 x i32> %89, i64 2
  %sum = add i32 %extractE, %extractE52
  %sum54 = add i32 %sum, %extractE53
  %90 = sub nsw i32 %86, %85
  %Fmul = mul i32 %90, 3
  store i32 %90, i32* %Recovery
  %Fcmp = icmp ne i32 %sum54, %Fmul
  br i1 %Fcmp, label %91, label %95

; <label>:91:                                     ; preds = %81
  %remThree = sdiv i32 %sum54, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %92, label %93

; <label>:92:                                     ; preds = %91
  store i32 %90, i32* %Recovery, align 4
  br label %94

; <label>:93:                                     ; preds = %91
  store i32 %extractE, i32* %Recovery, align 4
  br label %94

; <label>:94:                                     ; preds = %93, %92
  br label %95

; <label>:95:                                     ; preds = %81, %94
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %99 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop55 = add <4 x i32> %98, %99
  store <4 x i32> %Vop55, <4 x i32>* %allocaVec14
  %100 = add nsw i32 %97, %96
  store i32 %100, i32* %17, align 4
  br label %101

; <label>:101:                                    ; preds = %95, %74
  %102 = load i32, i32* %15, align 4
  %103 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop56 = ashr <4 x i32> %103, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop56, <4 x i32>* %allocaVec12
  %104 = ashr i32 %102, 1
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %117

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %13, align 4
  %110 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop57 = or <4 x i32> %110, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop57, <4 x i32>* %allocaVec10
  %111 = or i32 %109, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %115 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop58 = add <4 x i32> %114, %115
  store <4 x i32> %Vop58, <4 x i32>* %allocaVec14
  %116 = add nsw i32 %113, %112
  store i32 %116, i32* %17, align 4
  br label %117

; <label>:117:                                    ; preds = %108, %101
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %insertElmt59 = insertelement <4 x i32> undef, i32 %122, i32 0
  %insertElmt60 = insertelement <4 x i32> %insertElmt59, i32 %122, i32 1
  %insertElmt61 = insertelement <4 x i32> %insertElmt60, i32 %122, i32 2
  %insertElmt62 = insertelement <4 x i32> %insertElmt61, i32 %122, i32 3
  store <4 x i32> %insertElmt62, <4 x i32>* %allocaVec13, align 16
  %123 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %124 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop63 = sub <4 x i32> %123, %124
  store <4 x i32> %Vop63, <4 x i32>* %allocaVec13
  %125 = sub nsw i32 %122, %121
  store i32 %125, i32* %16, align 4
  br label %138

; <label>:126:                                    ; preds = %117
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %130 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop64 = add <4 x i32> %129, %130
  store <4 x i32> %Vop64, <4 x i32>* %allocaVec13
  %131 = load <4 x i32>, <4 x i32>* %allocaVec13, align 4
  %extractE66 = extractelement <4 x i32> %131, i64 0
  %extractE67 = extractelement <4 x i32> %131, i64 1
  %extractE68 = extractelement <4 x i32> %131, i64 2
  %sum69 = add i32 %extractE66, %extractE67
  %sum70 = add i32 %sum69, %extractE68
  %132 = add nsw i32 %128, %127
  %Fmul65 = mul i32 %132, 3
  store i32 %132, i32* %Recovery1
  %Fcmp71 = icmp ne i32 %sum70, %Fmul65
  br i1 %Fcmp71, label %133, label %137

; <label>:133:                                    ; preds = %126
  %remThree93 = sdiv i32 %sum70, %extractE66
  %FcmpThree94 = icmp ne i32 %remThree93, 3
  br i1 %FcmpThree94, label %134, label %135

; <label>:134:                                    ; preds = %133
  store i32 %132, i32* %Recovery1, align 4
  br label %136

; <label>:135:                                    ; preds = %133
  store i32 %extractE66, i32* %Recovery1, align 4
  br label %136

; <label>:136:                                    ; preds = %135, %134
  br label %137

; <label>:137:                                    ; preds = %126, %136
  %ReplaceInst97 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst97, i32* %16, align 4
  br label %138

; <label>:138:                                    ; preds = %137, %120
  %139 = load i32, i32* %16, align 4
  %140 = icmp sgt i32 %139, 32767
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %138
  store <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, <4 x i32>* %allocaVec13
  store i32 32767, i32* %16, align 4
  br label %147

; <label>:142:                                    ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, -32768
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %142
  store <4 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <4 x i32>* %allocaVec13
  store i32 -32768, i32* %16, align 4
  br label %146

; <label>:146:                                    ; preds = %145, %142
  br label %147

; <label>:147:                                    ; preds = %146, %141
  %148 = load i32, i32* %12, align 4
  %insertElmt72 = insertelement <4 x i32> undef, i32 %148, i32 0
  %insertElmt73 = insertelement <4 x i32> %insertElmt72, i32 %148, i32 1
  %insertElmt74 = insertelement <4 x i32> %insertElmt73, i32 %148, i32 2
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %148, i32 3
  store <4 x i32> %insertElmt75, <4 x i32>* %allocaVec9, align 16
  %149 = load i32, i32* %13, align 4
  %150 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %151 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop76 = or <4 x i32> %150, %151
  store <4 x i32> %Vop76, <4 x i32>* %allocaVec10
  %152 = or i32 %149, %148
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %147
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %18, align 4
  br label %161

; <label>:161:                                    ; preds = %160, %147
  %162 = load i32, i32* %18, align 4
  %163 = icmp sgt i32 %162, 88
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %161
  store <4 x i32> <i32 88, i32 88, i32 88, i32 88>, <4 x i32>* %allocaVec15
  store i32 88, i32* %18, align 4
  br label %165

; <label>:165:                                    ; preds = %164, %161
  %166 = load i32, i32* %18, align 4
  %167 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

; <label>:171:                                    ; preds = %165
  %172 = load i32, i32* %13, align 4
  %173 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop77 = shl <4 x i32> %173, <i32 4, i32 4, i32 4, i32 4>
  %174 = shl i32 %172, 4
  %Vop78 = and <4 x i32> %Vop77, <i32 240, i32 240, i32 240, i32 240>
  store <4 x i32> %Vop78, <4 x i32>* %allocaVec16
  %175 = and i32 %174, 240
  store i32 %175, i32* %19, align 4
  br label %186

; <label>:176:                                    ; preds = %165
  %177 = load i32, i32* %13, align 4
  %178 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop79 = and <4 x i32> %178, <i32 15, i32 15, i32 15, i32 15>
  %179 = and i32 %177, 15
  %180 = load i32, i32* %19, align 4
  %181 = load <4 x i32>, <4 x i32>* %allocaVec16, align 16
  %Vop80 = or <4 x i32> %Vop79, %181
  %182 = or i32 %179, %180
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %10, align 4
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %10, align 4
  store i8 %183, i8* %184, align 1
  br label %186

; <label>:186:                                    ; preds = %176, %171
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %20, align 4
  br label %191

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* %7, align 4
  %insertElmt81 = insertelement <4 x i32> undef, i32 %192, i32 0
  %insertElmt82 = insertelement <4 x i32> %insertElmt81, i32 %192, i32 1
  %insertElmt83 = insertelement <4 x i32> %insertElmt82, i32 %192, i32 2
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %192, i32 3
  store <4 x i32> %insertElmt84, <4 x i32>* %allocaVec7, align 16
  %193 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop85 = add <4 x i32> %193, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop85, <4 x i32>* %allocaVec7
  %194 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE87 = extractelement <4 x i32> %194, i64 0
  %extractE88 = extractelement <4 x i32> %194, i64 1
  %extractE89 = extractelement <4 x i32> %194, i64 2
  %sum90 = add i32 %extractE87, %extractE88
  %sum91 = add i32 %sum90, %extractE89
  %195 = add nsw i32 %192, -1
  %Fmul86 = mul i32 %195, 3
  store i32 %195, i32* %Recovery3
  %Fcmp92 = icmp ne i32 %sum91, %Fmul86
  br i1 %Fcmp92, label %196, label %200

; <label>:196:                                    ; preds = %191
  %remThree95 = sdiv i32 %sum91, %extractE87
  %FcmpThree96 = icmp ne i32 %remThree95, 3
  br i1 %FcmpThree96, label %197, label %198

; <label>:197:                                    ; preds = %196
  store i32 %195, i32* %Recovery3, align 4
  br label %199

; <label>:198:                                    ; preds = %196
  store i32 %extractE87, i32* %Recovery3, align 4
  br label %199

; <label>:199:                                    ; preds = %198, %197
  br label %200

; <label>:200:                                    ; preds = %191, %199
  %ReplaceInst98 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst98, i32* %7, align 4
  br label %34

; <label>:201:                                    ; preds = %34
  %202 = load i32, i32* %20, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

; <label>:204:                                    ; preds = %201
  %205 = load i32, i32* %19, align 4
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %10, align 4
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %10, align 4
  store i8 %206, i8* %207, align 1
  br label %209

; <label>:209:                                    ; preds = %204, %201
  %210 = load i32, i32* %16, align 4
  %211 = trunc i32 %210 to i16
  %212 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %213 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %212, i32 0, i32 0
  store i16 %211, i16* %213, align 2
  %214 = load i32, i32* %18, align 4
  %215 = trunc i32 %214 to i8
  %216 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %217 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %216, i32 0, i32 1
  store i8 %215, i8* %217, align 2
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @adpcm_decoder(i8*, i16*, i32, %struct.adpcm_state*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i16*, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i16*, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i16* %1, i16** %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 4
  %19 = load i16*, i16** %6, align 4
  store i16* %19, i16** %10, align 4
  %20 = load i8*, i8** %5, align 4
  store i8* %20, i8** %9, align 4
  %21 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %22 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %26 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 2
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %18, align 4
  br label %32

; <label>:32:                                     ; preds = %165, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %166

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %17, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %39, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt, i32 %39, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %39, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %39, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec14, align 16
  %40 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop = and <4 x i32> %40, <i32 15, i32 15, i32 15, i32 15>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec9
  %41 = and i32 %39, 15
  store i32 %41, i32* %12, align 4
  br label %51

; <label>:42:                                     ; preds = %35
  %43 = load i8*, i8** %9, align 4
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 4
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %insertElmt19 = insertelement <4 x i32> undef, i32 %47, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %47, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %47, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %47, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec14, align 16
  %48 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop23 = ashr <4 x i32> %48, <i32 4, i32 4, i32 4, i32 4>
  %49 = ashr i32 %47, 4
  %Vop24 = and <4 x i32> %Vop23, <i32 15, i32 15, i32 15, i32 15>
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec9
  %50 = and i32 %49, 15
  store i32 %50, i32* %12, align 4
  br label %51

; <label>:51:                                     ; preds = %42, %38
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %51
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec13
  store i32 0, i32* %16, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %51
  %65 = load i32, i32* %16, align 4
  %66 = icmp sgt i32 %65, 88
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  store <4 x i32> <i32 88, i32 88, i32 88, i32 88>, <4 x i32>* %allocaVec13
  store i32 88, i32* %16, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %64
  %69 = load i32, i32* %12, align 4
  %70 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop25 = and <4 x i32> %70, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec8
  %71 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %71, i64 0
  %extractE26 = extractelement <4 x i32> %71, i64 1
  %extractE27 = extractelement <4 x i32> %71, i64 2
  %sum = add i32 %extractE, %extractE26
  %sum28 = add i32 %sum, %extractE27
  %72 = and i32 %69, 8
  %Fmul = mul i32 %72, 3
  store i32 %72, i32* %Recovery1
  %Fcmp = icmp ne i32 %sum28, %Fmul
  br i1 %Fcmp, label %73, label %77

; <label>:73:                                     ; preds = %68
  %remThree = sdiv i32 %sum28, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %74, label %75

; <label>:74:                                     ; preds = %73
  store i32 %72, i32* %Recovery1, align 4
  br label %76

; <label>:75:                                     ; preds = %73
  store i32 %extractE, i32* %Recovery1, align 4
  br label %76

; <label>:76:                                     ; preds = %75, %74
  br label %77

; <label>:77:                                     ; preds = %68, %76
  %ReplaceInst = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop29 = and <4 x i32> %79, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %Vop29, <4 x i32>* %allocaVec9
  %80 = and i32 %78, 7
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %insertElmt30 = insertelement <4 x i32> undef, i32 %81, i32 0
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %81, i32 1
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %81, i32 2
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %81, i32 3
  store <4 x i32> %insertElmt33, <4 x i32>* %allocaVec10, align 16
  %82 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop34 = ashr <4 x i32> %82, <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec12
  %83 = ashr i32 %81, 3
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop35 = and <4 x i32> %85, <i32 4, i32 4, i32 4, i32 4>
  %86 = and i32 %84, 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

; <label>:88:                                     ; preds = %77
  %89 = load i32, i32* %13, align 4
  %insertElmt36 = insertelement <4 x i32> undef, i32 %89, i32 0
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %89, i32 1
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %89, i32 2
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %89, i32 3
  store <4 x i32> %insertElmt39, <4 x i32>* %allocaVec10, align 16
  %90 = load i32, i32* %15, align 4
  %91 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %92 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop40 = add <4 x i32> %91, %92
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec12
  %93 = add nsw i32 %90, %89
  store i32 %93, i32* %15, align 4
  br label %94

; <label>:94:                                     ; preds = %88, %77
  %95 = load i32, i32* %12, align 4
  %96 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop41 = and <4 x i32> %96, <i32 2, i32 2, i32 2, i32 2>
  %97 = and i32 %95, 2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %13, align 4
  %insertElmt42 = insertelement <4 x i32> undef, i32 %100, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %100, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %100, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %100, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec10, align 16
  %101 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop46 = ashr <4 x i32> %101, <i32 1, i32 1, i32 1, i32 1>
  %102 = ashr i32 %100, 1
  %103 = load i32, i32* %15, align 4
  %104 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop47 = add <4 x i32> %104, %Vop46
  store <4 x i32> %Vop47, <4 x i32>* %allocaVec12
  %105 = add nsw i32 %103, %102
  store i32 %105, i32* %15, align 4
  br label %106

; <label>:106:                                    ; preds = %99, %94
  %107 = load i32, i32* %12, align 4
  %108 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop48 = and <4 x i32> %108, <i32 1, i32 1, i32 1, i32 1>
  %109 = and i32 %107, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

; <label>:111:                                    ; preds = %106
  %112 = load i32, i32* %13, align 4
  %insertElmt49 = insertelement <4 x i32> undef, i32 %112, i32 0
  %insertElmt50 = insertelement <4 x i32> %insertElmt49, i32 %112, i32 1
  %insertElmt51 = insertelement <4 x i32> %insertElmt50, i32 %112, i32 2
  %insertElmt52 = insertelement <4 x i32> %insertElmt51, i32 %112, i32 3
  store <4 x i32> %insertElmt52, <4 x i32>* %allocaVec10, align 16
  %113 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop53 = ashr <4 x i32> %113, <i32 2, i32 2, i32 2, i32 2>
  %114 = ashr i32 %112, 2
  %115 = load i32, i32* %15, align 4
  %116 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop54 = add <4 x i32> %116, %Vop53
  store <4 x i32> %Vop54, <4 x i32>* %allocaVec12
  %117 = add nsw i32 %115, %114
  store i32 %117, i32* %15, align 4
  br label %118

; <label>:118:                                    ; preds = %111, %106
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %insertElmt55 = insertelement <4 x i32> undef, i32 %123, i32 0
  %insertElmt56 = insertelement <4 x i32> %insertElmt55, i32 %123, i32 1
  %insertElmt57 = insertelement <4 x i32> %insertElmt56, i32 %123, i32 2
  %insertElmt58 = insertelement <4 x i32> %insertElmt57, i32 %123, i32 3
  store <4 x i32> %insertElmt58, <4 x i32>* %allocaVec11, align 16
  %124 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %125 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop59 = sub <4 x i32> %124, %125
  store <4 x i32> %Vop59, <4 x i32>* %allocaVec11
  %126 = sub nsw i32 %123, %122
  store i32 %126, i32* %14, align 4
  br label %139

; <label>:127:                                    ; preds = %118
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %131 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop60 = add <4 x i32> %130, %131
  store <4 x i32> %Vop60, <4 x i32>* %allocaVec11
  %132 = load <4 x i32>, <4 x i32>* %allocaVec11, align 4
  %extractE62 = extractelement <4 x i32> %132, i64 0
  %extractE63 = extractelement <4 x i32> %132, i64 1
  %extractE64 = extractelement <4 x i32> %132, i64 2
  %sum65 = add i32 %extractE62, %extractE63
  %sum66 = add i32 %sum65, %extractE64
  %133 = add nsw i32 %129, %128
  %Fmul61 = mul i32 %133, 3
  store i32 %133, i32* %Recovery2
  %Fcmp67 = icmp ne i32 %sum66, %Fmul61
  br i1 %Fcmp67, label %134, label %138

; <label>:134:                                    ; preds = %127
  %remThree80 = sdiv i32 %sum66, %extractE62
  %FcmpThree81 = icmp ne i32 %remThree80, 3
  br i1 %FcmpThree81, label %135, label %136

; <label>:135:                                    ; preds = %134
  store i32 %133, i32* %Recovery2, align 4
  br label %137

; <label>:136:                                    ; preds = %134
  store i32 %extractE62, i32* %Recovery2, align 4
  br label %137

; <label>:137:                                    ; preds = %136, %135
  br label %138

; <label>:138:                                    ; preds = %127, %137
  %ReplaceInst84 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst84, i32* %14, align 4
  br label %139

; <label>:139:                                    ; preds = %138, %121
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 32767
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %139
  store <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, <4 x i32>* %allocaVec11
  store i32 32767, i32* %14, align 4
  br label %148

; <label>:143:                                    ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %144, -32768
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %143
  store <4 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <4 x i32>* %allocaVec11
  store i32 -32768, i32* %14, align 4
  br label %147

; <label>:147:                                    ; preds = %146, %143
  br label %148

; <label>:148:                                    ; preds = %147, %142
  %149 = load i32, i32* %16, align 4
  %150 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = trunc i32 %152 to i16
  %154 = load i16*, i16** %10, align 4
  %155 = getelementptr inbounds i16, i16* %154, i32 1
  store i16* %155, i16** %10, align 4
  store i16 %153, i16* %154, align 2
  br label %156

; <label>:156:                                    ; preds = %148
  %157 = load i32, i32* %7, align 4
  %insertElmt68 = insertelement <4 x i32> undef, i32 %157, i32 0
  %insertElmt69 = insertelement <4 x i32> %insertElmt68, i32 %157, i32 1
  %insertElmt70 = insertelement <4 x i32> %insertElmt69, i32 %157, i32 2
  %insertElmt71 = insertelement <4 x i32> %insertElmt70, i32 %157, i32 3
  store <4 x i32> %insertElmt71, <4 x i32>* %allocaVec7, align 16
  %158 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop72 = add <4 x i32> %158, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop72, <4 x i32>* %allocaVec7
  %159 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE74 = extractelement <4 x i32> %159, i64 0
  %extractE75 = extractelement <4 x i32> %159, i64 1
  %extractE76 = extractelement <4 x i32> %159, i64 2
  %sum77 = add i32 %extractE74, %extractE75
  %sum78 = add i32 %sum77, %extractE76
  %160 = add nsw i32 %157, -1
  %Fmul73 = mul i32 %160, 3
  store i32 %160, i32* %Recovery3
  %Fcmp79 = icmp ne i32 %sum78, %Fmul73
  br i1 %Fcmp79, label %161, label %165

; <label>:161:                                    ; preds = %156
  %remThree82 = sdiv i32 %sum78, %extractE74
  %FcmpThree83 = icmp ne i32 %remThree82, 3
  br i1 %FcmpThree83, label %162, label %163

; <label>:162:                                    ; preds = %161
  store i32 %160, i32* %Recovery3, align 4
  br label %164

; <label>:163:                                    ; preds = %161
  store i32 %extractE74, i32* %Recovery3, align 4
  br label %164

; <label>:164:                                    ; preds = %163, %162
  br label %165

; <label>:165:                                    ; preds = %156, %164
  %ReplaceInst85 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst85, i32* %7, align 4
  br label %32

; <label>:166:                                    ; preds = %32
  %167 = load i32, i32* %14, align 4
  %168 = trunc i32 %167 to i16
  %169 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %170 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %169, i32 0, i32 0
  store i16 %168, i16* %170, align 2
  %171 = load i32, i32* %16, align 4
  %172 = trunc i32 %171 to i8
  %173 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %174 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %173, i32 0, i32 1
  store i8 %172, i8* %174, align 2
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %12, %0
  %4 = call arm_aapcscc i32 @read(i32 0, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i32 500)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %3
  call arm_aapcscc void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  br label %20

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %13, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %13, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %13, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = mul <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %15 = mul nsw i32 %13, 2
  call arm_aapcscc void @adpcm_decoder(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i16* getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i32 %15, %struct.adpcm_state* @state)
  %16 = load i32, i32* %2, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %16, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %16, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %16, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %16, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %17 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop9 = mul <4 x i32> %17, <i32 4, i32 4, i32 4, i32 4>
  %18 = mul nsw i32 %16, 4
  %19 = call arm_aapcscc i32 @write(i32 1, i8* bitcast ([1000 x i16]* @sbuf to i8*), i32 %18)
  br label %3

; <label>:20:                                     ; preds = %11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %22 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 0), align 2
  %23 = sext i16 %22 to i32
  %24 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 1), align 2
  %25 = zext i8 %24 to i32
  %26 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %23, i32 %25)
  call arm_aapcscc void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare arm_aapcscc i32 @read(i32, i8*, i32) #1

declare arm_aapcscc void @perror(i8*) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @write(i32, i8*, i32) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
