; ModuleID = 'all.bc'
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
  %5 = alloca i16*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
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
  store i32 1, i32* %20, align 4
  br label %34

; <label>:34:                                     ; preds = %152, %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %155

; <label>:37:                                     ; preds = %34
  %38 = load i16*, i16** %9, align 4
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %9, align 4
  %40 = load i16, i16* %38, align 2
  %41 = sext i16 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  %47 = select i1 %46, i32 8, i32 0
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %37
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %53

; <label>:53:                                     ; preds = %50, %37
  store i32 0, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %54, 3
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %53
  store i32 4, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %17, align 4
  br label %66

; <label>:66:                                     ; preds = %59, %53
  %67 = load i32, i32* %15, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %81

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %81

; <label>:81:                                     ; preds = %72, %66
  %82 = load i32, i32* %15, align 4
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %17, align 4
  br label %93

; <label>:93:                                     ; preds = %87, %81
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %16, align 4
  br label %104

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %16, align 4
  br label %104

; <label>:104:                                    ; preds = %100, %96
  %105 = load i32, i32* %16, align 4
  %106 = icmp sgt i32 %105, 32767
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %104
  store i32 32767, i32* %16, align 4
  br label %113

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %109, -32768
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %108
  store i32 -32768, i32* %16, align 4
  br label %112

; <label>:112:                                    ; preds = %111, %108
  br label %113

; <label>:113:                                    ; preds = %112, %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %113
  store i32 0, i32* %18, align 4
  br label %125

; <label>:125:                                    ; preds = %124, %113
  %126 = load i32, i32* %18, align 4
  %127 = icmp sgt i32 %126, 88
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %125
  store i32 88, i32* %18, align 4
  br label %129

; <label>:129:                                    ; preds = %128, %125
  %130 = load i32, i32* %18, align 4
  %131 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %129
  %136 = load i32, i32* %13, align 4
  %137 = shl i32 %136, 4
  %138 = and i32 %137, 240
  store i32 %138, i32* %19, align 4
  br label %147

; <label>:139:                                    ; preds = %129
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 15
  %142 = load i32, i32* %19, align 4
  %143 = or i32 %141, %142
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %10, align 4
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %10, align 4
  store i8 %144, i8* %145, align 1
  br label %147

; <label>:147:                                    ; preds = %139, %135
  %148 = load i32, i32* %20, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %20, align 4
  br label %152

; <label>:152:                                    ; preds = %147
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %7, align 4
  br label %34

; <label>:155:                                    ; preds = %34
  %156 = load i32, i32* %20, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %19, align 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %10, align 4
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %10, align 4
  store i8 %160, i8* %161, align 1
  br label %163

; <label>:163:                                    ; preds = %158, %155
  %164 = load i32, i32* %16, align 4
  %165 = trunc i32 %164 to i16
  %166 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %167 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %166, i32 0, i32 0
  store i16 %165, i16* %167, align 2
  %168 = load i32, i32* %18, align 4
  %169 = trunc i32 %168 to i8
  %170 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %171 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %170, i32 0, i32 1
  store i8 %169, i8* %171, align 2
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @adpcm_decoder(i8*, i16*, i32, %struct.adpcm_state*) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i16*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i16*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store i32 0, i32* %18, align 4
  br label %32

; <label>:32:                                     ; preds = %126, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %129

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %17, align 4
  %40 = and i32 %39, 15
  store i32 %40, i32* %12, align 4
  br label %49

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %9, align 4
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 4
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 15
  store i32 %48, i32* %12, align 4
  br label %49

; <label>:49:                                     ; preds = %41, %38
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %49
  store i32 0, i32* %16, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %49
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 88
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  store i32 88, i32* %16, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %62
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 8
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 7
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = ashr i32 %71, 3
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %66
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %80

; <label>:80:                                     ; preds = %76, %66
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %13, align 4
  %86 = ashr i32 %85, 1
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %89

; <label>:89:                                     ; preds = %84, %80
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %94, 2
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %15, align 4
  br label %98

; <label>:98:                                     ; preds = %93, %89
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %109

; <label>:105:                                    ; preds = %98
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

; <label>:109:                                    ; preds = %105, %101
  %110 = load i32, i32* %14, align 4
  %111 = icmp sgt i32 %110, 32767
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %109
  store i32 32767, i32* %14, align 4
  br label %118

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, -32768
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %113
  store i32 -32768, i32* %14, align 4
  br label %117

; <label>:117:                                    ; preds = %116, %113
  br label %118

; <label>:118:                                    ; preds = %117, %112
  %119 = load i32, i32* %16, align 4
  %120 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = trunc i32 %122 to i16
  %124 = load i16*, i16** %10, align 4
  %125 = getelementptr inbounds i16, i16* %124, i32 1
  store i16* %125, i16** %10, align 4
  store i16 %123, i16* %124, align 2
  br label %126

; <label>:126:                                    ; preds = %118
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %7, align 4
  br label %32

; <label>:129:                                    ; preds = %32
  %130 = load i32, i32* %14, align 4
  %131 = trunc i32 %130 to i16
  %132 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %133 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %132, i32 0, i32 0
  store i16 %131, i16* %133, align 2
  %134 = load i32, i32* %16, align 4
  %135 = trunc i32 %134 to i8
  %136 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 4
  %137 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %136, i32 0, i32 1
  store i8 %135, i8* %137, align 2
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
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
  br label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = mul nsw i32 %13, 2
  call arm_aapcscc void @adpcm_decoder(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i16* getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i32 %14, %struct.adpcm_state* @state)
  %15 = load i32, i32* %2, align 4
  %16 = mul nsw i32 %15, 4
  %17 = call arm_aapcscc i32 @write(i32 1, i8* bitcast ([1000 x i16]* @sbuf to i8*), i32 %16)
  br label %3

; <label>:18:                                     ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %20 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 0), align 2
  %21 = sext i16 %20 to i32
  %22 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 1), align 2
  %23 = zext i8 %22 to i32
  %24 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %21, i32 %23)
  call arm_aapcscc void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %26 = load i32, i32* %1, align 4
  ret i32 %26
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
