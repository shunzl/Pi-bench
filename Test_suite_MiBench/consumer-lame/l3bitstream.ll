; ModuleID = 'l3bitstream.c'
source_filename = "l3bitstream.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.BF_FrameData = type { i32, i32, i32, %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart*, [2 x %struct.BF_BitstreamPart*], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], %struct.BF_BitstreamPart* }
%struct.BF_BitstreamPart = type { i32, %struct.BF_BitstreamElement* }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i32, i32, i32 }
%struct._IO_FILE = type opaque
%struct.BF_PartHolder = type { i32, %struct.BF_BitstreamPart* }
%struct.huffcodetab = type { i32, i32, i32*, i8* }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@frameData = global %struct.BF_FrameData* null, align 4
@frameResults = global %struct.BF_FrameResults* null, align 4
@PartHoldersInitialized = global i32 0, align 4
@bs = internal global %struct.bit_stream_struc* null, align 4
@.str = private unnamed_addr constant [10 x i8] c"frameData\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"l3bitstream.c\00", align 1
@__func__.III_format_bitstream = private unnamed_addr constant [21 x i8] c"III_format_bitstream\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"frameResults\00", align 1
@headerPH = common global %struct.BF_PartHolder* null, align 4
@frameSIPH = common global %struct.BF_PartHolder* null, align 4
@channelSIPH = common global [2 x %struct.BF_PartHolder*] zeroinitializer, align 4
@spectrumSIPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 4
@scaleFactorsPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 4
@codedDataPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 4
@userSpectrumPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 4
@userFrameDataPH = common global %struct.BF_PartHolder* null, align 4
@ht = external global [34 x %struct.huffcodetab], align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"linbitsx <= h->linmax\00", align 1
@__func__.HuffmanCode = private unnamed_addr constant [12 x i8] c"HuffmanCode\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"linbitsy <= h->linmax\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"*cbits <= 32\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"*xbits <= 32\00", align 1
@slen1_tab = internal global [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 4
@slen2_tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"gi->sfb_partition_table\00", align 1
@__func__.encodeMainData = private unnamed_addr constant [15 x i8] c"encodeMainData\00", align 1
@scalefac_band = external global %struct.scalefac_struct, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"tableindex < 32\00", align 1
@__func__.Huffmancodebits = private unnamed_addr constant [16 x i8] c"Huffmancodebits\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"scalefac_index < 23\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"(gi->count1table_select < 2)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"count1End <= 576\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"opps - adding stuffing bits = %i.\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"this should not happen...\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"bitsWritten == (int)(gi->part2_3_length - gi->part2_length)\00", align 1
@crc = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"gi->block_type == NORM_TYPE\00", align 1
@__func__.encodeSideInfo = private unnamed_addr constant [15 x i8] c"encodeSideInfo\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @putMyBits(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** @bs, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  call arm_aapcscc void @putbits(%struct.bit_stream_struc* %5, i32 %6, i32 %7)
  ret void
}

declare arm_aapcscc void @putbits(%struct.bit_stream_struc*, i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc void @III_format_bitstream(%struct.lame_global_flags*, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*, %struct.bit_stream_struc*) #0 {
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x [576 x i32]]*, align 4
  %10 = alloca %struct.III_side_info_t*, align 4
  %11 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %12 = alloca %struct.bit_stream_struc*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store i32 %1, i32* %8, align 4
  store [2 x [576 x i32]]* %2, [2 x [576 x i32]]** %9, align 4
  store %struct.III_side_info_t* %3, %struct.III_side_info_t** %10, align 4
  store [2 x %struct.III_scalefac_t]* %4, [2 x %struct.III_scalefac_t]** %11, align 4
  store %struct.bit_stream_struc* %5, %struct.bit_stream_struc** %12, align 4
  %15 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %12, align 4
  store %struct.bit_stream_struc* %15, %struct.bit_stream_struc** @bs, align 4
  %16 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %17 = icmp eq %struct.BF_FrameData* %16, null
  br i1 %17, label %18, label %27

; <label>:18:                                     ; preds = %6
  %19 = call arm_aapcscc i8* @calloc(i32 1, i32 96)
  %20 = bitcast i8* %19 to %struct.BF_FrameData*
  store %struct.BF_FrameData* %20, %struct.BF_FrameData** @frameData, align 4
  %21 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %22 = icmp ne %struct.BF_FrameData* %21, null
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.III_format_bitstream, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %18
  %25 = phi i1 [ true, %18 ], [ false, %23 ]
  %26 = zext i1 %25 to i32
  br label %27

; <label>:27:                                     ; preds = %24, %6
  %28 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 4
  %29 = icmp eq %struct.BF_FrameResults* %28, null
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %27
  %31 = call arm_aapcscc i8* @calloc(i32 1, i32 12)
  %32 = bitcast i8* %31 to %struct.BF_FrameResults*
  store %struct.BF_FrameResults* %32, %struct.BF_FrameResults** @frameResults, align 4
  %33 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 4
  %34 = icmp ne %struct.BF_FrameResults* %33, null
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %30
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.III_format_bitstream, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %35, %30
  %37 = phi i1 [ true, %30 ], [ false, %35 ]
  %38 = zext i1 %37 to i32
  br label %39

; <label>:39:                                     ; preds = %36, %27
  %40 = load i32, i32* @PartHoldersInitialized, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %93, label %42

; <label>:42:                                     ; preds = %39
  %43 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 14)
  store %struct.BF_PartHolder* %43, %struct.BF_PartHolder** @headerPH, align 4
  %44 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 12)
  store %struct.BF_PartHolder* %44, %struct.BF_PartHolder** @frameSIPH, align 4
  store i32 0, i32* %14, align 4
  br label %45

; <label>:45:                                     ; preds = %52, %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %45
  %49 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 8)
  %50 = load i32, i32* %14, align 4
  %51 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i32 %50
  store %struct.BF_PartHolder* %49, %struct.BF_PartHolder** %51, align 4
  br label %52

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %45

; <label>:55:                                     ; preds = %45
  store i32 0, i32* %13, align 4
  br label %56

; <label>:56:                                     ; preds = %88, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %91

; <label>:59:                                     ; preds = %56
  store i32 0, i32* %14, align 4
  br label %60

; <label>:60:                                     ; preds = %84, %59
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %87

; <label>:63:                                     ; preds = %60
  %64 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 32)
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i32 %65
  %67 = load i32, i32* %14, align 4
  %68 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %66, i32 0, i32 %67
  store %struct.BF_PartHolder* %64, %struct.BF_PartHolder** %68, align 4
  %69 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 64)
  %70 = load i32, i32* %13, align 4
  %71 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i32 %70
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %71, i32 0, i32 %72
  store %struct.BF_PartHolder* %69, %struct.BF_PartHolder** %73, align 4
  %74 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 576)
  %75 = load i32, i32* %13, align 4
  %76 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i32 %75
  %77 = load i32, i32* %14, align 4
  %78 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %76, i32 0, i32 %77
  store %struct.BF_PartHolder* %74, %struct.BF_PartHolder** %78, align 4
  %79 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 4)
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @userSpectrumPH, i32 0, i32 %80
  %82 = load i32, i32* %14, align 4
  %83 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %81, i32 0, i32 %82
  store %struct.BF_PartHolder* %79, %struct.BF_PartHolder** %83, align 4
  br label %84

; <label>:84:                                     ; preds = %63
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %60

; <label>:87:                                     ; preds = %60
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %56

; <label>:91:                                     ; preds = %56
  %92 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 8)
  store %struct.BF_PartHolder* %92, %struct.BF_PartHolder** @userFrameDataPH, align 4
  store i32 1, i32* @PartHoldersInitialized, align 4
  br label %93

; <label>:93:                                     ; preds = %91, %39
  %94 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %95 = load %struct.III_side_info_t*, %struct.III_side_info_t** %10, align 4
  %96 = call arm_aapcscc i32 @encodeSideInfo(%struct.lame_global_flags* %94, %struct.III_side_info_t* %95)
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %98 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %9, align 4
  %99 = load %struct.III_side_info_t*, %struct.III_side_info_t** %10, align 4
  %100 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %11, align 4
  call arm_aapcscc void @encodeMainData(%struct.lame_global_flags* %97, [2 x [576 x i32]]* %98, %struct.III_side_info_t* %99, [2 x %struct.III_scalefac_t]* %100)
  %101 = load %struct.III_side_info_t*, %struct.III_side_info_t** %10, align 4
  %102 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  call arm_aapcscc void @drain_into_ancillary_data(i32 %103)
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %106 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %108 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %107, i32 0, i32 45
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %111 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %113 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %112, i32 0, i32 46
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %116 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %118 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %117, i32 0, i32 1
  %119 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %118, align 4
  %120 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %121 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %120, i32 0, i32 3
  store %struct.BF_BitstreamPart* %119, %struct.BF_BitstreamPart** %121, align 4
  %122 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %123 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %122, i32 0, i32 1
  %124 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %123, align 4
  %125 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %126 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %125, i32 0, i32 4
  store %struct.BF_BitstreamPart* %124, %struct.BF_BitstreamPart** %126, align 4
  store i32 0, i32* %14, align 4
  br label %127

; <label>:127:                                    ; preds = %143, %93
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %130 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %129, i32 0, i32 46
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %146

; <label>:133:                                    ; preds = %127
  %134 = load i32, i32* %14, align 4
  %135 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i32 %134
  %136 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %135, align 4
  %137 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %136, i32 0, i32 1
  %138 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %137, align 4
  %139 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %140 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %139, i32 0, i32 5
  %141 = load i32, i32* %14, align 4
  %142 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %140, i32 0, i32 %141
  store %struct.BF_BitstreamPart* %138, %struct.BF_BitstreamPart** %142, align 4
  br label %143

; <label>:143:                                    ; preds = %133
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %127

; <label>:146:                                    ; preds = %127
  store i32 0, i32* %13, align 4
  br label %147

; <label>:147:                                    ; preds = %217, %146
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %150 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %149, i32 0, i32 45
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %220

; <label>:153:                                    ; preds = %147
  store i32 0, i32* %14, align 4
  br label %154

; <label>:154:                                    ; preds = %213, %153
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %157 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %156, i32 0, i32 46
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %216

; <label>:160:                                    ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i32 %161
  %163 = load i32, i32* %14, align 4
  %164 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %162, i32 0, i32 %163
  %165 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %164, align 4
  %166 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %165, i32 0, i32 1
  %167 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %166, align 4
  %168 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %169 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %168, i32 0, i32 6
  %170 = load i32, i32* %13, align 4
  %171 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %169, i32 0, i32 %170
  %172 = load i32, i32* %14, align 4
  %173 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %171, i32 0, i32 %172
  store %struct.BF_BitstreamPart* %167, %struct.BF_BitstreamPart** %173, align 4
  %174 = load i32, i32* %13, align 4
  %175 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i32 %174
  %176 = load i32, i32* %14, align 4
  %177 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %175, i32 0, i32 %176
  %178 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %177, align 4
  %179 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %178, i32 0, i32 1
  %180 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %179, align 4
  %181 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %182 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %181, i32 0, i32 7
  %183 = load i32, i32* %13, align 4
  %184 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %182, i32 0, i32 %183
  %185 = load i32, i32* %14, align 4
  %186 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %184, i32 0, i32 %185
  store %struct.BF_BitstreamPart* %180, %struct.BF_BitstreamPart** %186, align 4
  %187 = load i32, i32* %13, align 4
  %188 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i32 %187
  %189 = load i32, i32* %14, align 4
  %190 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %188, i32 0, i32 %189
  %191 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %190, align 4
  %192 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %191, i32 0, i32 1
  %193 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %192, align 4
  %194 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %195 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %194, i32 0, i32 8
  %196 = load i32, i32* %13, align 4
  %197 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %195, i32 0, i32 %196
  %198 = load i32, i32* %14, align 4
  %199 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %197, i32 0, i32 %198
  store %struct.BF_BitstreamPart* %193, %struct.BF_BitstreamPart** %199, align 4
  %200 = load i32, i32* %13, align 4
  %201 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @userSpectrumPH, i32 0, i32 %200
  %202 = load i32, i32* %14, align 4
  %203 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %201, i32 0, i32 %202
  %204 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %203, align 4
  %205 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %204, i32 0, i32 1
  %206 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %205, align 4
  %207 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %208 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %207, i32 0, i32 9
  %209 = load i32, i32* %13, align 4
  %210 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %208, i32 0, i32 %209
  %211 = load i32, i32* %14, align 4
  %212 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %210, i32 0, i32 %211
  store %struct.BF_BitstreamPart* %206, %struct.BF_BitstreamPart** %212, align 4
  br label %213

; <label>:213:                                    ; preds = %160
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  br label %154

; <label>:216:                                    ; preds = %154
  br label %217

; <label>:217:                                    ; preds = %216
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %147

; <label>:220:                                    ; preds = %147
  %221 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 4
  %222 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %221, i32 0, i32 1
  %223 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %222, align 4
  %224 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %225 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %224, i32 0, i32 10
  store %struct.BF_BitstreamPart* %223, %struct.BF_BitstreamPart** %225, align 4
  %226 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %227 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 4
  call arm_aapcscc void @BF_BitstreamFrame(%struct.BF_FrameData* %226, %struct.BF_FrameResults* %227)
  %228 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 4
  %229 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.III_side_info_t*, %struct.III_side_info_t** %10, align 4
  %232 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  ret void
}

declare arm_aapcscc i8* @calloc(i32, i32) #1

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #1

declare arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @encodeSideInfo(%struct.lame_global_flags*, %struct.III_side_info_t*) #0 {
  %3 = alloca %struct.lame_global_flags*, align 4
  %4 = alloca %struct.III_side_info_t*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.BF_PartHolder**, align 4
  %12 = alloca %struct.BF_PartHolder**, align 4
  %13 = alloca %struct.gr_info*, align 4
  %14 = alloca %struct.BF_PartHolder**, align 4
  %15 = alloca %struct.gr_info*, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %3, align 4
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %4, align 4
  store i32 65535, i32* @crc, align 4
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %17 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 1
  %18 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %17, align 4
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %21 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %20, i32 4095, i32 12)
  store %struct.BF_PartHolder* %21, %struct.BF_PartHolder** @headerPH, align 4
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 43
  %25 = load i32, i32* %24, align 4
  %26 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %22, i32 %25, i32 1)
  store %struct.BF_PartHolder* %26, %struct.BF_PartHolder** @headerPH, align 4
  %27 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %28 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %27, i32 1, i32 2)
  store %struct.BF_PartHolder* %28, %struct.BF_PartHolder** @headerPH, align 4
  %29 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %31 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %29, i32 %35, i32 1)
  store %struct.BF_PartHolder* %36, %struct.BF_PartHolder** @headerPH, align 4
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %39 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %38, i32 0, i32 50
  %40 = load i32, i32* %39, align 4
  %41 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %37, i32 %40, i32 4)
  store %struct.BF_PartHolder* %41, %struct.BF_PartHolder** @headerPH, align 4
  %42 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 51
  %45 = load i32, i32* %44, align 4
  %46 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %42, i32 %45, i32 2)
  store %struct.BF_PartHolder* %46, %struct.BF_PartHolder** @headerPH, align 4
  %47 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 44
  %50 = load i32, i32* %49, align 4
  %51 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %47, i32 %50, i32 1)
  store %struct.BF_PartHolder* %51, %struct.BF_PartHolder** @headerPH, align 4
  %52 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %54 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 16
  %55 = load i32, i32* %54, align 4
  %56 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %52, i32 %55, i32 1)
  store %struct.BF_PartHolder* %56, %struct.BF_PartHolder** @headerPH, align 4
  %57 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %58 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %59 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %57, i32 %60, i32 2)
  store %struct.BF_PartHolder* %61, %struct.BF_PartHolder** @headerPH, align 4
  %62 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %64 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 52
  %65 = load i32, i32* %64, align 4
  %66 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %62, i32 %65, i32 2)
  store %struct.BF_PartHolder* %66, %struct.BF_PartHolder** @headerPH, align 4
  %67 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %68 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %69 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %67, i32 %70, i32 1)
  store %struct.BF_PartHolder* %71, %struct.BF_PartHolder** @headerPH, align 4
  %72 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %73 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %74 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %72, i32 %75, i32 1)
  store %struct.BF_PartHolder* %76, %struct.BF_PartHolder** @headerPH, align 4
  %77 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %78 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %79 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %78, i32 0, i32 38
  %80 = load i32, i32* %79, align 4
  %81 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %77, i32 %80, i32 2)
  store %struct.BF_PartHolder* %81, %struct.BF_PartHolder** @headerPH, align 4
  store i32 32, i32* %10, align 4
  %82 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %83 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %82, i32 0, i32 1
  %84 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %83, align 4
  %85 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %86

; <label>:86:                                     ; preds = %99, %2
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %89 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %88, i32 0, i32 46
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %102

; <label>:92:                                     ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i32 %93
  %95 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %94, align 4
  %96 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %95, i32 0, i32 1
  %97 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %96, align 4
  %98 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  br label %99

; <label>:99:                                     ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %86

; <label>:102:                                    ; preds = %86
  store i32 0, i32* %5, align 4
  br label %103

; <label>:103:                                    ; preds = %129, %102
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %106 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %105, i32 0, i32 45
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %132

; <label>:109:                                    ; preds = %103
  store i32 0, i32* %6, align 4
  br label %110

; <label>:110:                                    ; preds = %125, %109
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %113 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %112, i32 0, i32 46
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %128

; <label>:116:                                    ; preds = %110
  %117 = load i32, i32* %5, align 4
  %118 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i32 %117
  %119 = load i32, i32* %6, align 4
  %120 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %118, i32 0, i32 %119
  %121 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %120, align 4
  %122 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %121, i32 0, i32 1
  %123 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %122, align 4
  %124 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %123, i32 0, i32 0
  store i32 0, i32* %124, align 4
  br label %125

; <label>:125:                                    ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %110

; <label>:128:                                    ; preds = %110
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %103

; <label>:132:                                    ; preds = %103
  %133 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %134 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %133, i32 0, i32 43
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %384

; <label>:137:                                    ; preds = %132
  %138 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %139 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %140 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %138, i32 %141, i32 9)
  store %struct.BF_PartHolder* %142, %struct.BF_PartHolder** @frameSIPH, align 4
  %143 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %144 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %143, i32 0, i32 46
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %153

; <label>:147:                                    ; preds = %137
  %148 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %149 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %150 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %148, i32 %151, i32 3)
  store %struct.BF_PartHolder* %152, %struct.BF_PartHolder** @frameSIPH, align 4
  br label %159

; <label>:153:                                    ; preds = %137
  %154 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %155 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %156 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %154, i32 %157, i32 5)
  store %struct.BF_PartHolder* %158, %struct.BF_PartHolder** @frameSIPH, align 4
  br label %159

; <label>:159:                                    ; preds = %153, %147
  store i32 0, i32* %6, align 4
  br label %160

; <label>:160:                                    ; preds = %188, %159
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %163 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %162, i32 0, i32 46
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %191

; <label>:166:                                    ; preds = %160
  store i32 0, i32* %7, align 4
  br label %167

; <label>:167:                                    ; preds = %184, %166
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %187

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %6, align 4
  %172 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i32 %171
  store %struct.BF_PartHolder** %172, %struct.BF_PartHolder*** %11, align 4
  %173 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %11, align 4
  %174 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %173, align 4
  %175 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %176 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %175, i32 0, i32 3
  %177 = load i32, i32* %6, align 4
  %178 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i32 0, i32 %177
  %179 = load i32, i32* %7, align 4
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %178, i32 0, i32 %179
  %181 = load i32, i32* %180, align 4
  %182 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %174, i32 %181, i32 1)
  %183 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %11, align 4
  store %struct.BF_PartHolder* %182, %struct.BF_PartHolder** %183, align 4
  br label %184

; <label>:184:                                    ; preds = %170
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %167

; <label>:187:                                    ; preds = %167
  br label %188

; <label>:188:                                    ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %160

; <label>:191:                                    ; preds = %160
  store i32 0, i32* %5, align 4
  br label %192

; <label>:192:                                    ; preds = %369, %191
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %372

; <label>:195:                                    ; preds = %192
  store i32 0, i32* %6, align 4
  br label %196

; <label>:196:                                    ; preds = %365, %195
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %199 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %198, i32 0, i32 46
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %368

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %5, align 4
  %204 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i32 %203
  %205 = load i32, i32* %6, align 4
  %206 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %204, i32 0, i32 %205
  store %struct.BF_PartHolder** %206, %struct.BF_PartHolder*** %12, align 4
  %207 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %208 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %207, i32 0, i32 4
  %209 = load i32, i32* %5, align 4
  %210 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %208, i32 0, i32 %209
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 0
  %212 = load i32, i32* %6, align 4
  %213 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %211, i32 0, i32 %212
  %214 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %213, i32 0, i32 0
  store %struct.gr_info* %214, %struct.gr_info** %13, align 4
  %215 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %216 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %215, align 4
  %217 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %218 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %216, i32 %219, i32 12)
  %221 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %220, %struct.BF_PartHolder** %221, align 4
  %222 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %223 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %222, align 4
  %224 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %225 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %223, i32 %226, i32 9)
  %228 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %227, %struct.BF_PartHolder** %228, align 4
  %229 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %230 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %229, align 4
  %231 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %232 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %230, i32 %233, i32 8)
  %235 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %234, %struct.BF_PartHolder** %235, align 4
  %236 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %237 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %236, align 4
  %238 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %239 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %237, i32 %240, i32 4)
  %242 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %241, %struct.BF_PartHolder** %242, align 4
  %243 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %244 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %243, align 4
  %245 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %246 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %244, i32 %247, i32 1)
  %249 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %248, %struct.BF_PartHolder** %249, align 4
  %250 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %251 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %303

; <label>:254:                                    ; preds = %202
  %255 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %256 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %255, align 4
  %257 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %258 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %256, i32 %259, i32 2)
  %261 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %260, %struct.BF_PartHolder** %261, align 4
  %262 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %263 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %262, align 4
  %264 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %265 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %263, i32 %266, i32 1)
  %268 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %267, %struct.BF_PartHolder** %268, align 4
  store i32 0, i32* %8, align 4
  br label %269

; <label>:269:                                    ; preds = %282, %254
  %270 = load i32, i32* %8, align 4
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %285

; <label>:272:                                    ; preds = %269
  %273 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %274 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %273, align 4
  %275 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %276 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %275, i32 0, i32 8
  %277 = load i32, i32* %8, align 4
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %276, i32 0, i32 %277
  %279 = load i32, i32* %278, align 4
  %280 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %274, i32 %279, i32 5)
  %281 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %280, %struct.BF_PartHolder** %281, align 4
  br label %282

; <label>:282:                                    ; preds = %272
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %269

; <label>:285:                                    ; preds = %269
  store i32 0, i32* %9, align 4
  br label %286

; <label>:286:                                    ; preds = %299, %285
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %287, 3
  br i1 %288, label %289, label %302

; <label>:289:                                    ; preds = %286
  %290 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %291 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %290, align 4
  %292 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %293 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %292, i32 0, i32 9
  %294 = load i32, i32* %9, align 4
  %295 = getelementptr inbounds [3 x i32], [3 x i32]* %293, i32 0, i32 %294
  %296 = load i32, i32* %295, align 4
  %297 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %291, i32 %296, i32 3)
  %298 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %297, %struct.BF_PartHolder** %298, align 4
  br label %299

; <label>:299:                                    ; preds = %289
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %286

; <label>:302:                                    ; preds = %286
  br label %343

; <label>:303:                                    ; preds = %202
  %304 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %305 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %309, label %308

; <label>:308:                                    ; preds = %303
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 380, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.encodeSideInfo, i32 0, i32 0))
  br label %309

; <label>:309:                                    ; preds = %308, %303
  %310 = phi i1 [ true, %303 ], [ false, %308 ]
  %311 = zext i1 %310 to i32
  store i32 0, i32* %8, align 4
  br label %312

; <label>:312:                                    ; preds = %325, %309
  %313 = load i32, i32* %8, align 4
  %314 = icmp slt i32 %313, 3
  br i1 %314, label %315, label %328

; <label>:315:                                    ; preds = %312
  %316 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %317 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %316, align 4
  %318 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %319 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %318, i32 0, i32 8
  %320 = load i32, i32* %8, align 4
  %321 = getelementptr inbounds [3 x i32], [3 x i32]* %319, i32 0, i32 %320
  %322 = load i32, i32* %321, align 4
  %323 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %317, i32 %322, i32 5)
  %324 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %323, %struct.BF_PartHolder** %324, align 4
  br label %325

; <label>:325:                                    ; preds = %315
  %326 = load i32, i32* %8, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %8, align 4
  br label %312

; <label>:328:                                    ; preds = %312
  %329 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %330 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %329, align 4
  %331 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %332 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 4
  %334 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %330, i32 %333, i32 4)
  %335 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %334, %struct.BF_PartHolder** %335, align 4
  %336 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %337 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %336, align 4
  %338 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %339 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %338, i32 0, i32 11
  %340 = load i32, i32* %339, align 4
  %341 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %337, i32 %340, i32 3)
  %342 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %341, %struct.BF_PartHolder** %342, align 4
  br label %343

; <label>:343:                                    ; preds = %328, %302
  %344 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %345 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %344, align 4
  %346 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %347 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %346, i32 0, i32 12
  %348 = load i32, i32* %347, align 4
  %349 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %345, i32 %348, i32 1)
  %350 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %349, %struct.BF_PartHolder** %350, align 4
  %351 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %352 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %351, align 4
  %353 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %354 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %353, i32 0, i32 13
  %355 = load i32, i32* %354, align 4
  %356 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %352, i32 %355, i32 1)
  %357 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %356, %struct.BF_PartHolder** %357, align 4
  %358 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  %359 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %358, align 4
  %360 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %361 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %360, i32 0, i32 14
  %362 = load i32, i32* %361, align 4
  %363 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %359, i32 %362, i32 1)
  %364 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %12, align 4
  store %struct.BF_PartHolder* %363, %struct.BF_PartHolder** %364, align 4
  br label %365

; <label>:365:                                    ; preds = %343
  %366 = load i32, i32* %6, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %6, align 4
  br label %196

; <label>:368:                                    ; preds = %196
  br label %369

; <label>:369:                                    ; preds = %368
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %5, align 4
  br label %192

; <label>:372:                                    ; preds = %192
  %373 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %374 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %373, i32 0, i32 46
  %375 = load i32, i32* %374, align 4
  %376 = icmp eq i32 %375, 2
  br i1 %376, label %377, label %380

; <label>:377:                                    ; preds = %372
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 256
  store i32 %379, i32* %10, align 4
  br label %383

; <label>:380:                                    ; preds = %372
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %381, 136
  store i32 %382, i32* %10, align 4
  br label %383

; <label>:383:                                    ; preds = %380, %377
  br label %576

; <label>:384:                                    ; preds = %132
  %385 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %386 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %387 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %385, i32 %388, i32 8)
  store %struct.BF_PartHolder* %389, %struct.BF_PartHolder** @frameSIPH, align 4
  %390 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %391 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %390, i32 0, i32 46
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 2
  br i1 %393, label %394, label %400

; <label>:394:                                    ; preds = %384
  %395 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %396 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %397 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %395, i32 %398, i32 2)
  store %struct.BF_PartHolder* %399, %struct.BF_PartHolder** @frameSIPH, align 4
  br label %406

; <label>:400:                                    ; preds = %384
  %401 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 4
  %402 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %403 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %401, i32 %404, i32 1)
  store %struct.BF_PartHolder* %405, %struct.BF_PartHolder** @frameSIPH, align 4
  br label %406

; <label>:406:                                    ; preds = %400, %394
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %407

; <label>:407:                                    ; preds = %561, %406
  %408 = load i32, i32* %6, align 4
  %409 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %410 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %409, i32 0, i32 46
  %411 = load i32, i32* %410, align 4
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %564

; <label>:413:                                    ; preds = %407
  %414 = load i32, i32* %5, align 4
  %415 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i32 %414
  %416 = load i32, i32* %6, align 4
  %417 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %415, i32 0, i32 %416
  store %struct.BF_PartHolder** %417, %struct.BF_PartHolder*** %14, align 4
  %418 = load %struct.III_side_info_t*, %struct.III_side_info_t** %4, align 4
  %419 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %418, i32 0, i32 4
  %420 = load i32, i32* %5, align 4
  %421 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %419, i32 0, i32 %420
  %422 = getelementptr inbounds %struct.anon, %struct.anon* %421, i32 0, i32 0
  %423 = load i32, i32* %6, align 4
  %424 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %422, i32 0, i32 %423
  %425 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %424, i32 0, i32 0
  store %struct.gr_info* %425, %struct.gr_info** %15, align 4
  %426 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %427 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %426, align 4
  %428 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %429 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %427, i32 %430, i32 12)
  %432 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %431, %struct.BF_PartHolder** %432, align 4
  %433 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %434 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %433, align 4
  %435 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %436 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %434, i32 %437, i32 9)
  %439 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %438, %struct.BF_PartHolder** %439, align 4
  %440 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %441 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %440, align 4
  %442 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %443 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %441, i32 %444, i32 8)
  %446 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %445, %struct.BF_PartHolder** %446, align 4
  %447 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %448 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %447, align 4
  %449 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %450 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 4
  %452 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %448, i32 %451, i32 9)
  %453 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %452, %struct.BF_PartHolder** %453, align 4
  %454 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %455 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %454, align 4
  %456 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %457 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 4
  %459 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %455, i32 %458, i32 1)
  %460 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %459, %struct.BF_PartHolder** %460, align 4
  %461 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %462 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %514

; <label>:465:                                    ; preds = %413
  %466 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %467 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %466, align 4
  %468 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %469 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %468, i32 0, i32 6
  %470 = load i32, i32* %469, align 4
  %471 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %467, i32 %470, i32 2)
  %472 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %471, %struct.BF_PartHolder** %472, align 4
  %473 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %474 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %473, align 4
  %475 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %476 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %475, i32 0, i32 7
  %477 = load i32, i32* %476, align 4
  %478 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %474, i32 %477, i32 1)
  %479 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %478, %struct.BF_PartHolder** %479, align 4
  store i32 0, i32* %8, align 4
  br label %480

; <label>:480:                                    ; preds = %493, %465
  %481 = load i32, i32* %8, align 4
  %482 = icmp slt i32 %481, 2
  br i1 %482, label %483, label %496

; <label>:483:                                    ; preds = %480
  %484 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %485 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %484, align 4
  %486 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %487 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %486, i32 0, i32 8
  %488 = load i32, i32* %8, align 4
  %489 = getelementptr inbounds [3 x i32], [3 x i32]* %487, i32 0, i32 %488
  %490 = load i32, i32* %489, align 4
  %491 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %485, i32 %490, i32 5)
  %492 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %491, %struct.BF_PartHolder** %492, align 4
  br label %493

; <label>:493:                                    ; preds = %483
  %494 = load i32, i32* %8, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %8, align 4
  br label %480

; <label>:496:                                    ; preds = %480
  store i32 0, i32* %9, align 4
  br label %497

; <label>:497:                                    ; preds = %510, %496
  %498 = load i32, i32* %9, align 4
  %499 = icmp slt i32 %498, 3
  br i1 %499, label %500, label %513

; <label>:500:                                    ; preds = %497
  %501 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %502 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %501, align 4
  %503 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %504 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %503, i32 0, i32 9
  %505 = load i32, i32* %9, align 4
  %506 = getelementptr inbounds [3 x i32], [3 x i32]* %504, i32 0, i32 %505
  %507 = load i32, i32* %506, align 4
  %508 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %502, i32 %507, i32 3)
  %509 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %508, %struct.BF_PartHolder** %509, align 4
  br label %510

; <label>:510:                                    ; preds = %500
  %511 = load i32, i32* %9, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %9, align 4
  br label %497

; <label>:513:                                    ; preds = %497
  br label %546

; <label>:514:                                    ; preds = %413
  store i32 0, i32* %8, align 4
  br label %515

; <label>:515:                                    ; preds = %528, %514
  %516 = load i32, i32* %8, align 4
  %517 = icmp slt i32 %516, 3
  br i1 %517, label %518, label %531

; <label>:518:                                    ; preds = %515
  %519 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %520 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %519, align 4
  %521 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %522 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %521, i32 0, i32 8
  %523 = load i32, i32* %8, align 4
  %524 = getelementptr inbounds [3 x i32], [3 x i32]* %522, i32 0, i32 %523
  %525 = load i32, i32* %524, align 4
  %526 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %520, i32 %525, i32 5)
  %527 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %526, %struct.BF_PartHolder** %527, align 4
  br label %528

; <label>:528:                                    ; preds = %518
  %529 = load i32, i32* %8, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %8, align 4
  br label %515

; <label>:531:                                    ; preds = %515
  %532 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %533 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %532, align 4
  %534 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %535 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %534, i32 0, i32 10
  %536 = load i32, i32* %535, align 4
  %537 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %533, i32 %536, i32 4)
  %538 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %537, %struct.BF_PartHolder** %538, align 4
  %539 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %540 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %539, align 4
  %541 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %542 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %541, i32 0, i32 11
  %543 = load i32, i32* %542, align 4
  %544 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %540, i32 %543, i32 3)
  %545 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %544, %struct.BF_PartHolder** %545, align 4
  br label %546

; <label>:546:                                    ; preds = %531, %513
  %547 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %548 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %547, align 4
  %549 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %550 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %549, i32 0, i32 13
  %551 = load i32, i32* %550, align 4
  %552 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %548, i32 %551, i32 1)
  %553 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %552, %struct.BF_PartHolder** %553, align 4
  %554 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %555 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %554, align 4
  %556 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %557 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %556, i32 0, i32 14
  %558 = load i32, i32* %557, align 4
  %559 = call arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %555, i32 %558, i32 1)
  %560 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %559, %struct.BF_PartHolder** %560, align 4
  br label %561

; <label>:561:                                    ; preds = %546
  %562 = load i32, i32* %6, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %6, align 4
  br label %407

; <label>:564:                                    ; preds = %407
  %565 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %566 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %565, i32 0, i32 46
  %567 = load i32, i32* %566, align 4
  %568 = icmp eq i32 %567, 2
  br i1 %568, label %569, label %572

; <label>:569:                                    ; preds = %564
  %570 = load i32, i32* %10, align 4
  %571 = add nsw i32 %570, 136
  store i32 %571, i32* %10, align 4
  br label %575

; <label>:572:                                    ; preds = %564
  %573 = load i32, i32* %10, align 4
  %574 = add nsw i32 %573, 72
  store i32 %574, i32* %10, align 4
  br label %575

; <label>:575:                                    ; preds = %572, %569
  br label %576

; <label>:576:                                    ; preds = %575, %383
  %577 = load %struct.lame_global_flags*, %struct.lame_global_flags** %3, align 4
  %578 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %577, i32 0, i32 14
  %579 = load i32, i32* %578, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %587

; <label>:581:                                    ; preds = %576
  %582 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 4
  %583 = load i32, i32* @crc, align 4
  %584 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %582, i32 %583, i32 16)
  store %struct.BF_PartHolder* %584, %struct.BF_PartHolder** @headerPH, align 4
  %585 = load i32, i32* %10, align 4
  %586 = add nsw i32 %585, 16
  store i32 %586, i32* %10, align 4
  br label %587

; <label>:587:                                    ; preds = %581, %576
  %588 = load i32, i32* %10, align 4
  ret i32 %588
}

; Function Attrs: nounwind
define internal arm_aapcscc void @encodeMainData(%struct.lame_global_flags*, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*) #0 {
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca [2 x [576 x i32]]*, align 4
  %7 = alloca %struct.III_side_info_t*, align 4
  %8 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.BF_PartHolder**, align 4
  %15 = alloca %struct.gr_info*, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 4
  %19 = alloca %struct.BF_PartHolder**, align 4
  %20 = alloca %struct.gr_info*, align 4
  %21 = alloca i32*, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store [2 x [576 x i32]]* %1, [2 x [576 x i32]]** %6, align 4
  store %struct.III_side_info_t* %2, %struct.III_side_info_t** %7, align 4
  store [2 x %struct.III_scalefac_t]* %3, [2 x %struct.III_scalefac_t]** %8, align 4
  store i32 0, i32* %10, align 4
  br label %27

; <label>:27:                                     ; preds = %53, %4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %30 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 45
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %56

; <label>:33:                                     ; preds = %27
  store i32 0, i32* %11, align 4
  br label %34

; <label>:34:                                     ; preds = %49, %33
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %37 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 46
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i32 %41
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %42, i32 0, i32 %43
  %45 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %44, align 4
  %46 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %45, i32 0, i32 1
  %47 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %46, align 4
  %48 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %34

; <label>:52:                                     ; preds = %34
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %27

; <label>:56:                                     ; preds = %27
  store i32 0, i32* %10, align 4
  br label %57

; <label>:57:                                     ; preds = %83, %56
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %60 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %59, i32 0, i32 45
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

; <label>:63:                                     ; preds = %57
  store i32 0, i32* %11, align 4
  br label %64

; <label>:64:                                     ; preds = %79, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %67 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %66, i32 0, i32 46
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i32 %71
  %73 = load i32, i32* %11, align 4
  %74 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %72, i32 0, i32 %73
  %75 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %74, align 4
  %76 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %75, i32 0, i32 1
  %77 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %76, align 4
  %78 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %64

; <label>:82:                                     ; preds = %64
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %57

; <label>:86:                                     ; preds = %57
  %87 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %88 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %87, i32 0, i32 43
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %352

; <label>:91:                                     ; preds = %86
  store i32 0, i32* %10, align 4
  br label %92

; <label>:92:                                     ; preds = %348, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %351

; <label>:95:                                     ; preds = %92
  store i32 0, i32* %11, align 4
  br label %96

; <label>:96:                                     ; preds = %344, %95
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %99 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %98, i32 0, i32 46
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %347

; <label>:102:                                    ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i32 %103
  %105 = load i32, i32* %11, align 4
  %106 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %104, i32 0, i32 %105
  store %struct.BF_PartHolder** %106, %struct.BF_PartHolder*** %14, align 4
  %107 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %108 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %107, i32 0, i32 4
  %109 = load i32, i32* %10, align 4
  %110 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %108, i32 0, i32 %109
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 0
  %112 = load i32, i32* %11, align 4
  %113 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %111, i32 0, i32 %112
  %114 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %113, i32 0, i32 0
  store %struct.gr_info* %114, %struct.gr_info** %15, align 4
  %115 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %116 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* @slen1_tab, i32 0, i32 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %16, align 4
  %120 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %121 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* @slen2_tab, i32 0, i32 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %17, align 4
  %125 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %6, align 4
  %126 = load i32, i32* %10, align 4
  %127 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %125, i32 %126
  %128 = load i32, i32* %11, align 4
  %129 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %127, i32 0, i32 %128
  %130 = getelementptr inbounds [576 x i32], [576 x i32]* %129, i32 0, i32 0
  store i32* %130, i32** %18, align 4
  %131 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  %132 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %200

; <label>:135:                                    ; preds = %102
  store i32 0, i32* %12, align 4
  br label %136

; <label>:136:                                    ; preds = %164, %135
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 6
  br i1 %138, label %139, label %167

; <label>:139:                                    ; preds = %136
  store i32 0, i32* %13, align 4
  br label %140

; <label>:140:                                    ; preds = %160, %139
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %163

; <label>:143:                                    ; preds = %140
  %144 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %145 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %144, align 4
  %146 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %146, i32 %147
  %149 = load i32, i32* %11, align 4
  %150 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %148, i32 0, i32 %149
  %151 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %150, i32 0, i32 1
  %152 = load i32, i32* %12, align 4
  %153 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %151, i32 0, i32 %152
  %154 = load i32, i32* %13, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %153, i32 0, i32 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %145, i32 %156, i32 %157)
  %159 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %158, %struct.BF_PartHolder** %159, align 4
  br label %160

; <label>:160:                                    ; preds = %143
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %140

; <label>:163:                                    ; preds = %140
  br label %164

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %136

; <label>:167:                                    ; preds = %136
  store i32 6, i32* %12, align 4
  br label %168

; <label>:168:                                    ; preds = %196, %167
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 12
  br i1 %170, label %171, label %199

; <label>:171:                                    ; preds = %168
  store i32 0, i32* %13, align 4
  br label %172

; <label>:172:                                    ; preds = %192, %171
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %195

; <label>:175:                                    ; preds = %172
  %176 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %177 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %176, align 4
  %178 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %179 = load i32, i32* %10, align 4
  %180 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %178, i32 %179
  %181 = load i32, i32* %11, align 4
  %182 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %180, i32 0, i32 %181
  %183 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %182, i32 0, i32 1
  %184 = load i32, i32* %12, align 4
  %185 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %183, i32 0, i32 %184
  %186 = load i32, i32* %13, align 4
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %185, i32 0, i32 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %177, i32 %188, i32 %189)
  %191 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %190, %struct.BF_PartHolder** %191, align 4
  br label %192

; <label>:192:                                    ; preds = %175
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %172

; <label>:195:                                    ; preds = %172
  br label %196

; <label>:196:                                    ; preds = %195
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %168

; <label>:199:                                    ; preds = %168
  br label %337

; <label>:200:                                    ; preds = %102
  %201 = load i32, i32* %10, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %211, label %203

; <label>:203:                                    ; preds = %200
  %204 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %205 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %204, i32 0, i32 3
  %206 = load i32, i32* %11, align 4
  %207 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %205, i32 0, i32 %206
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %234

; <label>:211:                                    ; preds = %203, %200
  store i32 0, i32* %12, align 4
  br label %212

; <label>:212:                                    ; preds = %230, %211
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 6
  br i1 %214, label %215, label %233

; <label>:215:                                    ; preds = %212
  %216 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %217 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %216, align 4
  %218 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %219 = load i32, i32* %10, align 4
  %220 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %218, i32 %219
  %221 = load i32, i32* %11, align 4
  %222 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %220, i32 0, i32 %221
  %223 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %222, i32 0, i32 0
  %224 = load i32, i32* %12, align 4
  %225 = getelementptr inbounds [22 x i32], [22 x i32]* %223, i32 0, i32 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %16, align 4
  %228 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %217, i32 %226, i32 %227)
  %229 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %228, %struct.BF_PartHolder** %229, align 4
  br label %230

; <label>:230:                                    ; preds = %215
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %212

; <label>:233:                                    ; preds = %212
  br label %234

; <label>:234:                                    ; preds = %233, %203
  %235 = load i32, i32* %10, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %245, label %237

; <label>:237:                                    ; preds = %234
  %238 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %239 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %238, i32 0, i32 3
  %240 = load i32, i32* %11, align 4
  %241 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i32 0, i32 %240
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %268

; <label>:245:                                    ; preds = %237, %234
  store i32 6, i32* %12, align 4
  br label %246

; <label>:246:                                    ; preds = %264, %245
  %247 = load i32, i32* %12, align 4
  %248 = icmp slt i32 %247, 11
  br i1 %248, label %249, label %267

; <label>:249:                                    ; preds = %246
  %250 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %251 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %250, align 4
  %252 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %253 = load i32, i32* %10, align 4
  %254 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %252, i32 %253
  %255 = load i32, i32* %11, align 4
  %256 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %254, i32 0, i32 %255
  %257 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %256, i32 0, i32 0
  %258 = load i32, i32* %12, align 4
  %259 = getelementptr inbounds [22 x i32], [22 x i32]* %257, i32 0, i32 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %16, align 4
  %262 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %251, i32 %260, i32 %261)
  %263 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %262, %struct.BF_PartHolder** %263, align 4
  br label %264

; <label>:264:                                    ; preds = %249
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %12, align 4
  br label %246

; <label>:267:                                    ; preds = %246
  br label %268

; <label>:268:                                    ; preds = %267, %237
  %269 = load i32, i32* %10, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %279, label %271

; <label>:271:                                    ; preds = %268
  %272 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %273 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %272, i32 0, i32 3
  %274 = load i32, i32* %11, align 4
  %275 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %273, i32 0, i32 %274
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %302

; <label>:279:                                    ; preds = %271, %268
  store i32 11, i32* %12, align 4
  br label %280

; <label>:280:                                    ; preds = %298, %279
  %281 = load i32, i32* %12, align 4
  %282 = icmp slt i32 %281, 16
  br i1 %282, label %283, label %301

; <label>:283:                                    ; preds = %280
  %284 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %285 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %284, align 4
  %286 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %287 = load i32, i32* %10, align 4
  %288 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %286, i32 %287
  %289 = load i32, i32* %11, align 4
  %290 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %288, i32 0, i32 %289
  %291 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %290, i32 0, i32 0
  %292 = load i32, i32* %12, align 4
  %293 = getelementptr inbounds [22 x i32], [22 x i32]* %291, i32 0, i32 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %17, align 4
  %296 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %285, i32 %294, i32 %295)
  %297 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %296, %struct.BF_PartHolder** %297, align 4
  br label %298

; <label>:298:                                    ; preds = %283
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %280

; <label>:301:                                    ; preds = %280
  br label %302

; <label>:302:                                    ; preds = %301, %271
  %303 = load i32, i32* %10, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %313, label %305

; <label>:305:                                    ; preds = %302
  %306 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %307 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %306, i32 0, i32 3
  %308 = load i32, i32* %11, align 4
  %309 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %307, i32 0, i32 %308
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %336

; <label>:313:                                    ; preds = %305, %302
  store i32 16, i32* %12, align 4
  br label %314

; <label>:314:                                    ; preds = %332, %313
  %315 = load i32, i32* %12, align 4
  %316 = icmp slt i32 %315, 21
  br i1 %316, label %317, label %335

; <label>:317:                                    ; preds = %314
  %318 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  %319 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %318, align 4
  %320 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %321 = load i32, i32* %10, align 4
  %322 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %320, i32 %321
  %323 = load i32, i32* %11, align 4
  %324 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %322, i32 0, i32 %323
  %325 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %324, i32 0, i32 0
  %326 = load i32, i32* %12, align 4
  %327 = getelementptr inbounds [22 x i32], [22 x i32]* %325, i32 0, i32 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %17, align 4
  %330 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %319, i32 %328, i32 %329)
  %331 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %14, align 4
  store %struct.BF_PartHolder* %330, %struct.BF_PartHolder** %331, align 4
  br label %332

; <label>:332:                                    ; preds = %317
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %12, align 4
  br label %314

; <label>:335:                                    ; preds = %314
  br label %336

; <label>:336:                                    ; preds = %335, %305
  br label %337

; <label>:337:                                    ; preds = %336, %199
  %338 = load i32, i32* %10, align 4
  %339 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i32 %338
  %340 = load i32, i32* %11, align 4
  %341 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %339, i32 0, i32 %340
  %342 = load i32*, i32** %18, align 4
  %343 = load %struct.gr_info*, %struct.gr_info** %15, align 4
  call arm_aapcscc void @Huffmancodebits(%struct.BF_PartHolder** %341, i32* %342, %struct.gr_info* %343)
  br label %344

; <label>:344:                                    ; preds = %337
  %345 = load i32, i32* %11, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %11, align 4
  br label %96

; <label>:347:                                    ; preds = %96
  br label %348

; <label>:348:                                    ; preds = %347
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %10, align 4
  br label %92

; <label>:351:                                    ; preds = %92
  br label %502

; <label>:352:                                    ; preds = %86
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %353

; <label>:353:                                    ; preds = %498, %352
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %356 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %355, i32 0, i32 46
  %357 = load i32, i32* %356, align 4
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %501

; <label>:359:                                    ; preds = %353
  %360 = load i32, i32* %10, align 4
  %361 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i32 %360
  %362 = load i32, i32* %11, align 4
  %363 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %361, i32 0, i32 %362
  store %struct.BF_PartHolder** %363, %struct.BF_PartHolder*** %19, align 4
  %364 = load %struct.III_side_info_t*, %struct.III_side_info_t** %7, align 4
  %365 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %364, i32 0, i32 4
  %366 = load i32, i32* %10, align 4
  %367 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %365, i32 0, i32 %366
  %368 = getelementptr inbounds %struct.anon, %struct.anon* %367, i32 0, i32 0
  %369 = load i32, i32* %11, align 4
  %370 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %368, i32 0, i32 %369
  %371 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %370, i32 0, i32 0
  store %struct.gr_info* %371, %struct.gr_info** %20, align 4
  %372 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %6, align 4
  %373 = load i32, i32* %10, align 4
  %374 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %372, i32 %373
  %375 = load i32, i32* %11, align 4
  %376 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %374, i32 0, i32 %375
  %377 = getelementptr inbounds [576 x i32], [576 x i32]* %376, i32 0, i32 0
  store i32* %377, i32** %21, align 4
  %378 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %379 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %378, i32 0, i32 19
  %380 = load i32*, i32** %379, align 4
  %381 = icmp ne i32* %380, null
  br i1 %381, label %383, label %382

; <label>:382:                                    ; preds = %359
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.encodeMainData, i32 0, i32 0))
  br label %383

; <label>:383:                                    ; preds = %382, %359
  %384 = phi i1 [ true, %359 ], [ false, %382 ]
  %385 = zext i1 %384 to i32
  %386 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %387 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %390, label %446

; <label>:390:                                    ; preds = %383
  store i32 0, i32* %12, align 4
  store i32 0, i32* %22, align 4
  br label %391

; <label>:391:                                    ; preds = %442, %390
  %392 = load i32, i32* %22, align 4
  %393 = icmp slt i32 %392, 4
  br i1 %393, label %394, label %445

; <label>:394:                                    ; preds = %391
  %395 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %396 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %395, i32 0, i32 19
  %397 = load i32*, i32** %396, align 4
  %398 = load i32, i32* %22, align 4
  %399 = getelementptr inbounds i32, i32* %397, i32 %398
  %400 = load i32, i32* %399, align 4
  %401 = udiv i32 %400, 3
  store i32 %401, i32* %23, align 4
  %402 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %403 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %402, i32 0, i32 20
  %404 = load i32, i32* %22, align 4
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %403, i32 0, i32 %404
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %407

; <label>:407:                                    ; preds = %436, %394
  %408 = load i32, i32* %9, align 4
  %409 = load i32, i32* %23, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %441

; <label>:411:                                    ; preds = %407
  store i32 0, i32* %13, align 4
  br label %412

; <label>:412:                                    ; preds = %432, %411
  %413 = load i32, i32* %13, align 4
  %414 = icmp slt i32 %413, 3
  br i1 %414, label %415, label %435

; <label>:415:                                    ; preds = %412
  %416 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %19, align 4
  %417 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %416, align 4
  %418 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %419 = load i32, i32* %10, align 4
  %420 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %418, i32 %419
  %421 = load i32, i32* %11, align 4
  %422 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %420, i32 0, i32 %421
  %423 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %422, i32 0, i32 1
  %424 = load i32, i32* %12, align 4
  %425 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %423, i32 0, i32 %424
  %426 = load i32, i32* %13, align 4
  %427 = getelementptr inbounds [3 x i32], [3 x i32]* %425, i32 0, i32 %426
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* %24, align 4
  %430 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %417, i32 %428, i32 %429)
  %431 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %19, align 4
  store %struct.BF_PartHolder* %430, %struct.BF_PartHolder** %431, align 4
  br label %432

; <label>:432:                                    ; preds = %415
  %433 = load i32, i32* %13, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %13, align 4
  br label %412

; <label>:435:                                    ; preds = %412
  br label %436

; <label>:436:                                    ; preds = %435
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %12, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %12, align 4
  br label %407

; <label>:441:                                    ; preds = %407
  br label %442

; <label>:442:                                    ; preds = %441
  %443 = load i32, i32* %22, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %22, align 4
  br label %391

; <label>:445:                                    ; preds = %391
  br label %491

; <label>:446:                                    ; preds = %383
  store i32 0, i32* %12, align 4
  store i32 0, i32* %22, align 4
  br label %447

; <label>:447:                                    ; preds = %487, %446
  %448 = load i32, i32* %22, align 4
  %449 = icmp slt i32 %448, 4
  br i1 %449, label %450, label %490

; <label>:450:                                    ; preds = %447
  %451 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %452 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %451, i32 0, i32 19
  %453 = load i32*, i32** %452, align 4
  %454 = load i32, i32* %22, align 4
  %455 = getelementptr inbounds i32, i32* %453, i32 %454
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* %25, align 4
  %457 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %458 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %457, i32 0, i32 20
  %459 = load i32, i32* %22, align 4
  %460 = getelementptr inbounds [4 x i32], [4 x i32]* %458, i32 0, i32 %459
  %461 = load i32, i32* %460, align 4
  store i32 %461, i32* %26, align 4
  store i32 0, i32* %9, align 4
  br label %462

; <label>:462:                                    ; preds = %481, %450
  %463 = load i32, i32* %9, align 4
  %464 = load i32, i32* %25, align 4
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %466, label %486

; <label>:466:                                    ; preds = %462
  %467 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %19, align 4
  %468 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %467, align 4
  %469 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %8, align 4
  %470 = load i32, i32* %10, align 4
  %471 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %469, i32 %470
  %472 = load i32, i32* %11, align 4
  %473 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %471, i32 0, i32 %472
  %474 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %473, i32 0, i32 0
  %475 = load i32, i32* %12, align 4
  %476 = getelementptr inbounds [22 x i32], [22 x i32]* %474, i32 0, i32 %475
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* %26, align 4
  %479 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %468, i32 %477, i32 %478)
  %480 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %19, align 4
  store %struct.BF_PartHolder* %479, %struct.BF_PartHolder** %480, align 4
  br label %481

; <label>:481:                                    ; preds = %466
  %482 = load i32, i32* %9, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %9, align 4
  %484 = load i32, i32* %12, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %12, align 4
  br label %462

; <label>:486:                                    ; preds = %462
  br label %487

; <label>:487:                                    ; preds = %486
  %488 = load i32, i32* %22, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %22, align 4
  br label %447

; <label>:490:                                    ; preds = %447
  br label %491

; <label>:491:                                    ; preds = %490, %445
  %492 = load i32, i32* %10, align 4
  %493 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i32 %492
  %494 = load i32, i32* %11, align 4
  %495 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %493, i32 0, i32 %494
  %496 = load i32*, i32** %21, align 4
  %497 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  call arm_aapcscc void @Huffmancodebits(%struct.BF_PartHolder** %495, i32* %496, %struct.gr_info* %497)
  br label %498

; <label>:498:                                    ; preds = %491
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %11, align 4
  br label %353

; <label>:501:                                    ; preds = %353
  br label %502

; <label>:502:                                    ; preds = %501, %351
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @drain_into_ancillary_data(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %6, 32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 4
  %11 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %10, i32 0, i32 1
  %12 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %11, align 4
  %13 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %14

; <label>:14:                                     ; preds = %21, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %14
  %19 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 4
  %20 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %19, i32 0, i32 32)
  store %struct.BF_PartHolder* %20, %struct.BF_PartHolder** @userFrameDataPH, align 4
  br label %21

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %14

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %24
  %28 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %28, i32 0, i32 %29)
  store %struct.BF_PartHolder* %30, %struct.BF_PartHolder** @userFrameDataPH, align 4
  br label %31

; <label>:31:                                     ; preds = %27, %24
  ret void
}

declare arm_aapcscc void @BF_BitstreamFrame(%struct.BF_FrameData*, %struct.BF_FrameResults*) #1

; Function Attrs: nounwind
define arm_aapcscc void @III_FlushBitstream() #0 {
  %1 = load i32, i32* @PartHoldersInitialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 4
  %5 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 4
  call arm_aapcscc void @BF_FlushBitstream(%struct.BF_FrameData* %4, %struct.BF_FrameResults* %5)
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

declare arm_aapcscc void @BF_FlushBitstream(%struct.BF_FrameData*, %struct.BF_FrameResults*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @abs_and_sign(i32*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  store i32* %0, i32** %3, align 4
  %4 = load i32*, i32** %3, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

; <label>:8:                                      ; preds = %1
  %9 = load i32*, i32** %3, align 4
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  store i32 1, i32* %2, align 4
  br label %12

; <label>:12:                                     ; preds = %8, %7
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

; Function Attrs: nounwind
define arm_aapcscc i32 @L3_huffman_coder_count1(%struct.BF_PartHolder**, %struct.huffcodetab*, i32, i32, i32, i32) #0 {
  %7 = alloca %struct.BF_PartHolder**, align 4
  %8 = alloca %struct.huffcodetab*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store %struct.BF_PartHolder** %0, %struct.BF_PartHolder*** %7, align 4
  store %struct.huffcodetab* %1, %struct.huffcodetab** %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %20, align 4
  %21 = call arm_aapcscc i32 @abs_and_sign(i32* %9)
  store i32 %21, i32* %14, align 4
  %22 = call arm_aapcscc i32 @abs_and_sign(i32* %10)
  store i32 %22, i32* %15, align 4
  %23 = call arm_aapcscc i32 @abs_and_sign(i32* %11)
  store i32 %23, i32* %16, align 4
  %24 = call arm_aapcscc i32 @abs_and_sign(i32* %12)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 3
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 2
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 1
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load %struct.huffcodetab*, %struct.huffcodetab** %8, align 4
  %36 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 4
  %38 = load i32, i32* %18, align 4
  %39 = getelementptr inbounds i32, i32* %37, i32 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.huffcodetab*, %struct.huffcodetab** %8, align 4
  %42 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 4
  %44 = load i32, i32* %18, align 4
  %45 = getelementptr inbounds i8, i8* %43, i32 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %19, align 4
  %48 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %7, align 4
  %49 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %49, i32 %50, i32 %51)
  %53 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %7, align 4
  store %struct.BF_PartHolder* %52, %struct.BF_PartHolder** %53, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %6
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %20, align 4
  br label %60

; <label>:60:                                     ; preds = %56, %6
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %18, align 4
  %65 = mul i32 2, %64
  %66 = load i32, i32* %15, align 4
  %67 = add i32 %65, %66
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %20, align 4
  br label %70

; <label>:70:                                     ; preds = %63, %60
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %18, align 4
  %75 = mul i32 2, %74
  %76 = load i32, i32* %16, align 4
  %77 = add i32 %75, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %20, align 4
  br label %80

; <label>:80:                                     ; preds = %73, %70
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = mul i32 2, %84
  %86 = load i32, i32* %17, align 4
  %87 = add i32 %85, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %20, align 4
  br label %90

; <label>:90:                                     ; preds = %83, %80
  %91 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %7, align 4
  %92 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %91, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %20, align 4
  %95 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %92, i32 %93, i32 %94)
  %96 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %7, align 4
  store %struct.BF_PartHolder* %95, %struct.BF_PartHolder** %96, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %97, %98
  ret i32 %99
}

declare arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder*, i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @HuffmanCode(i32, i32, i32, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 4
  %13 = alloca i32*, align 4
  %14 = alloca i32*, align 4
  %15 = alloca i32*, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.huffcodetab*, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 4
  store i32* %4, i32** %13, align 4
  store i32* %5, i32** %14, align 4
  store i32* %6, i32** %15, align 4
  %23 = load i32*, i32** %14, align 4
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %15, align 4
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %12, align 4
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %13, align 4
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %7
  store i32 0, i32* %8, align 4
  br label %216

; <label>:30:                                     ; preds = %7
  %31 = call arm_aapcscc i32 @abs_and_sign(i32* %10)
  store i32 %31, i32* %16, align 4
  %32 = call arm_aapcscc i32 @abs_and_sign(i32* %11)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %33
  store %struct.huffcodetab* %34, %struct.huffcodetab** %22, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 15
  br i1 %36, label %37, label %146

; <label>:37:                                     ; preds = %30
  %38 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %39 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 14
  br i1 %42, label %43, label %55

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 15
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %48 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ule i32 %46, %49
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %43
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 797, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.HuffmanCode, i32 0, i32 0))
  br label %52

; <label>:52:                                     ; preds = %51, %43
  %53 = phi i1 [ true, %43 ], [ false, %51 ]
  %54 = zext i1 %53 to i32
  store i32 15, i32* %10, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %37
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 14
  br i1 %57, label %58, label %70

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 15
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %63 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ule i32 %61, %64
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %58
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 803, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.HuffmanCode, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %66, %58
  %68 = phi i1 [ true, %58 ], [ false, %66 ]
  %69 = zext i1 %68 to i32
  store i32 15, i32* %11, align 4
  br label %70

; <label>:70:                                     ; preds = %67, %55
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 16
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %21, align 4
  %75 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %76 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 4
  %78 = load i32, i32* %21, align 4
  %79 = getelementptr inbounds i32, i32* %77, i32 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 4
  store i32 %80, i32* %81, align 4
  %82 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %83 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 4
  %85 = load i32, i32* %21, align 4
  %86 = getelementptr inbounds i8, i8* %84, i32 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32*, i32** %14, align 4
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 14
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %70
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %13, align 4
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32*, i32** %15, align 4
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

; <label>:101:                                    ; preds = %92, %70
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

; <label>:104:                                    ; preds = %101
  %105 = load i32*, i32** %13, align 4
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %13, align 4
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %15, align 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

; <label>:115:                                    ; preds = %104, %101
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 14
  br i1 %117, label %118, label %131

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %20, align 4
  %120 = load i32*, i32** %13, align 4
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, %119
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load i32*, i32** %13, align 4
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32*, i32** %15, align 4
  %129 = load i32, i32* %128, align 4
  %130 = add i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %131

; <label>:131:                                    ; preds = %118, %115
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

; <label>:134:                                    ; preds = %131
  %135 = load i32*, i32** %13, align 4
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %13, align 4
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load i32*, i32** %15, align 4
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

; <label>:145:                                    ; preds = %134, %131
  br label %196

; <label>:146:                                    ; preds = %30
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 %147, 16
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %21, align 4
  %151 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %152 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 4
  %154 = load i32, i32* %21, align 4
  %155 = getelementptr inbounds i32, i32* %153, i32 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %12, align 4
  store i32 %156, i32* %157, align 4
  %158 = load %struct.huffcodetab*, %struct.huffcodetab** %22, align 4
  %159 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 4
  %161 = load i32, i32* %21, align 4
  %162 = getelementptr inbounds i8, i8* %160, i32 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32*, i32** %14, align 4
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

; <label>:170:                                    ; preds = %146
  %171 = load i32*, i32** %12, align 4
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32*, i32** %12, align 4
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  %178 = load i32*, i32** %14, align 4
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  br label %181

; <label>:181:                                    ; preds = %170, %146
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

; <label>:184:                                    ; preds = %181
  %185 = load i32*, i32** %12, align 4
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32*, i32** %12, align 4
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %188
  store i32 %191, i32* %189, align 4
  %192 = load i32*, i32** %14, align 4
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

; <label>:195:                                    ; preds = %184, %181
  br label %196

; <label>:196:                                    ; preds = %195, %145
  %197 = load i32*, i32** %14, align 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp sle i32 %198, 32
  br i1 %199, label %201, label %200

; <label>:200:                                    ; preds = %196
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 851, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.HuffmanCode, i32 0, i32 0))
  br label %201

; <label>:201:                                    ; preds = %200, %196
  %202 = phi i1 [ true, %196 ], [ false, %200 ]
  %203 = zext i1 %202 to i32
  %204 = load i32*, i32** %15, align 4
  %205 = load i32, i32* %204, align 4
  %206 = icmp sle i32 %205, 32
  br i1 %206, label %208, label %207

; <label>:207:                                    ; preds = %201
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 852, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.HuffmanCode, i32 0, i32 0))
  br label %208

; <label>:208:                                    ; preds = %207, %201
  %209 = phi i1 [ true, %201 ], [ false, %207 ]
  %210 = zext i1 %209 to i32
  %211 = load i32*, i32** %14, align 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %15, align 4
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %212, %214
  store i32 %215, i32* %8, align 4
  br label %216

; <label>:216:                                    ; preds = %208, %29
  %217 = load i32, i32* %8, align 4
  ret i32 %217
}

; Function Attrs: nounwind
define internal arm_aapcscc void @Huffmancodebits(%struct.BF_PartHolder**, i32*, %struct.gr_info*) #0 {
  %4 = alloca %struct.BF_PartHolder**, align 4
  %5 = alloca i32*, align 4
  %6 = alloca %struct.gr_info*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [192 x [3 x i32]]*, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.BF_PartHolder** %0, %struct.BF_PartHolder*** %4, align 4
  store i32* %1, i32** %5, align 4
  store %struct.gr_info* %2, %struct.gr_info** %6, align 4
  store i32 0, i32* %22, align 4
  %34 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %35 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %36, 2
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %246

; <label>:40:                                     ; preds = %3
  %41 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %42 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %138, label %45

; <label>:45:                                     ; preds = %40
  %46 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %47 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %138

; <label>:50:                                     ; preds = %45
  %51 = load i32*, i32** %5, align 4
  %52 = bitcast i32* %51 to [192 x [3 x i32]]*
  store [192 x [3 x i32]]* %52, [192 x [3 x i32]]** %28, align 4
  store i32 12, i32* %7, align 4
  store i32 576, i32* %8, align 4
  store i32 0, i32* %23, align 4
  br label %53

; <label>:53:                                     ; preds = %134, %50
  %54 = load i32, i32* %23, align 4
  %55 = icmp slt i32 %54, 13
  br i1 %55, label %56, label %137

; <label>:56:                                     ; preds = %53
  store i32 100, i32* %29, align 4
  %57 = load i32, i32* %23, align 4
  %58 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %26, align 4
  %60 = load i32, i32* %23, align 4
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %27, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %56
  %68 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %69 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %68, i32 0, i32 8
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %29, align 4
  br label %77

; <label>:72:                                     ; preds = %56
  %73 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %74 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %73, i32 0, i32 8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %29, align 4
  br label %77

; <label>:77:                                     ; preds = %72, %67
  %78 = load i32, i32* %29, align 4
  %79 = icmp ult i32 %78, 32
  br i1 %79, label %81, label %80

; <label>:80:                                     ; preds = %77
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 532, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %81

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i1 [ true, %77 ], [ false, %80 ]
  %83 = zext i1 %82 to i32
  store i32 0, i32* %24, align 4
  br label %84

; <label>:84:                                     ; preds = %130, %81
  %85 = load i32, i32* %24, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %133

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %26, align 4
  store i32 %88, i32* %25, align 4
  br label %89

; <label>:89:                                     ; preds = %126, %87
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %27, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %129

; <label>:93:                                     ; preds = %89
  %94 = load [192 x [3 x i32]]*, [192 x [3 x i32]]** %28, align 4
  %95 = load i32, i32* %25, align 4
  %96 = getelementptr inbounds [192 x [3 x i32]], [192 x [3 x i32]]* %94, i32 0, i32 %95
  %97 = load i32, i32* %24, align 4
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %96, i32 0, i32 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  %100 = load [192 x [3 x i32]]*, [192 x [3 x i32]]** %28, align 4
  %101 = load i32, i32* %25, align 4
  %102 = add nsw i32 %101, 1
  %103 = getelementptr inbounds [192 x [3 x i32]], [192 x [3 x i32]]* %100, i32 0, i32 %102
  %104 = load i32, i32* %24, align 4
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %103, i32 0, i32 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call arm_aapcscc i32 @HuffmanCode(i32 %107, i32 %108, i32 %109, i32* %20, i32* %21, i32* %17, i32* %18)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %112 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %111, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %112, i32 %113, i32 %114)
  %116 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %115, %struct.BF_PartHolder** %116, align 4
  %117 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %118 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %117, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %118, i32 %119, i32 %120)
  %122 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %121, %struct.BF_PartHolder** %122, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %22, align 4
  br label %126

; <label>:126:                                    ; preds = %93
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %25, align 4
  br label %89

; <label>:129:                                    ; preds = %89
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load i32, i32* %24, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %24, align 4
  br label %84

; <label>:133:                                    ; preds = %84
  br label %134

; <label>:134:                                    ; preds = %133
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %23, align 4
  br label %53

; <label>:137:                                    ; preds = %53
  br label %245

; <label>:138:                                    ; preds = %45, %40
  store i32 100, i32* %30, align 4
  %139 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %140 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %138
  store i32 36, i32* %7, align 4
  store i32 576, i32* %8, align 4
  br label %173

; <label>:144:                                    ; preds = %138
  %145 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %146 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %30, align 4
  %149 = load i32, i32* %30, align 4
  %150 = icmp ult i32 %149, 23
  br i1 %150, label %152, label %151

; <label>:151:                                    ; preds = %144
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 605, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %152

; <label>:152:                                    ; preds = %151, %144
  %153 = phi i1 [ true, %144 ], [ false, %151 ]
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %30, align 4
  %156 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %7, align 4
  %158 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %159 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %158, i32 0, i32 11
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, 1
  %162 = load i32, i32* %30, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %30, align 4
  %164 = load i32, i32* %30, align 4
  %165 = icmp ult i32 %164, 23
  br i1 %165, label %167, label %166

; <label>:166:                                    ; preds = %152
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 608, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %167

; <label>:167:                                    ; preds = %166, %152
  %168 = phi i1 [ true, %152 ], [ false, %166 ]
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %30, align 4
  %171 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  br label %173

; <label>:173:                                    ; preds = %167, %143
  store i32 0, i32* %9, align 4
  br label %174

; <label>:174:                                    ; preds = %241, %173
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %244

; <label>:178:                                    ; preds = %174
  store i32 100, i32* %31, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %187

; <label>:182:                                    ; preds = %178
  %183 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %184 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %183, i32 0, i32 8
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %31, align 4
  br label %202

; <label>:187:                                    ; preds = %178
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %187
  %192 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %193 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %192, i32 0, i32 8
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %31, align 4
  br label %201

; <label>:196:                                    ; preds = %187
  %197 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %198 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %197, i32 0, i32 8
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %31, align 4
  br label %201

; <label>:201:                                    ; preds = %196, %191
  br label %202

; <label>:202:                                    ; preds = %201, %182
  %203 = load i32, i32* %31, align 4
  %204 = icmp ult i32 %203, 32
  br i1 %204, label %206, label %205

; <label>:205:                                    ; preds = %202
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 629, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %206

; <label>:206:                                    ; preds = %205, %202
  %207 = phi i1 [ true, %202 ], [ false, %205 ]
  %208 = zext i1 %207 to i32
  %209 = load i32*, i32** %5, align 4
  %210 = load i32, i32* %9, align 4
  %211 = getelementptr inbounds i32, i32* %209, i32 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %14, align 4
  %213 = load i32*, i32** %5, align 4
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  %216 = getelementptr inbounds i32, i32* %213, i32 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %31, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %240

; <label>:220:                                    ; preds = %206
  %221 = load i32, i32* %31, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call arm_aapcscc i32 @HuffmanCode(i32 %221, i32 %222, i32 %223, i32* %20, i32* %21, i32* %17, i32* %18)
  store i32 %224, i32* %16, align 4
  %225 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %226 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %225, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %226, i32 %227, i32 %228)
  %230 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %229, %struct.BF_PartHolder** %230, align 4
  %231 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %232 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %231, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %18, align 4
  %235 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %232, i32 %233, i32 %234)
  %236 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %235, %struct.BF_PartHolder** %236, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %22, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %22, align 4
  br label %240

; <label>:240:                                    ; preds = %220, %206
  br label %241

; <label>:241:                                    ; preds = %240
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %9, align 4
  br label %174

; <label>:244:                                    ; preds = %174
  br label %245

; <label>:245:                                    ; preds = %244, %137
  br label %246

; <label>:246:                                    ; preds = %245, %3
  %247 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %248 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 4
  %250 = icmp ult i32 %249, 2
  br i1 %250, label %252, label %251

; <label>:251:                                    ; preds = %246
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 649, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %252

; <label>:252:                                    ; preds = %251, %246
  %253 = phi i1 [ true, %246 ], [ false, %251 ]
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %257 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = mul i32 %258, 4
  %260 = add i32 %255, %259
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp sle i32 %261, 576
  br i1 %262, label %264, label %263

; <label>:263:                                    ; preds = %252
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 652, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %264

; <label>:264:                                    ; preds = %263, %252
  %265 = phi i1 [ true, %252 ], [ false, %263 ]
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %9, align 4
  br label %268

; <label>:268:                                    ; preds = %305, %264
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %308

; <label>:272:                                    ; preds = %268
  %273 = load i32*, i32** %5, align 4
  %274 = load i32, i32* %9, align 4
  %275 = getelementptr inbounds i32, i32* %273, i32 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %12, align 4
  %277 = load i32*, i32** %5, align 4
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  %280 = getelementptr inbounds i32, i32* %277, i32 %279
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %13, align 4
  %282 = load i32*, i32** %5, align 4
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 2
  %285 = getelementptr inbounds i32, i32* %282, i32 %284
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %14, align 4
  %287 = load i32*, i32** %5, align 4
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 3
  %290 = getelementptr inbounds i32, i32* %287, i32 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %15, align 4
  %292 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %293 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %294 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %293, i32 0, i32 14
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, 32
  %297 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i32 %296
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %15, align 4
  %302 = call arm_aapcscc i32 @L3_huffman_coder_count1(%struct.BF_PartHolder** %292, %struct.huffcodetab* %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* %22, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %22, align 4
  br label %305

; <label>:305:                                    ; preds = %272
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 4
  store i32 %307, i32* %9, align 4
  br label %268

; <label>:308:                                    ; preds = %268
  %309 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %310 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %313 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %312, i32 0, i32 15
  %314 = load i32, i32* %313, align 4
  %315 = sub i32 %311, %314
  %316 = load i32, i32* %22, align 4
  %317 = sub i32 %315, %316
  store i32 %317, i32* %19, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %351

; <label>:319:                                    ; preds = %308
  %320 = load i32, i32* %19, align 4
  %321 = sdiv i32 %320, 32
  store i32 %321, i32* %32, align 4
  %322 = load i32, i32* %19, align 4
  %323 = srem i32 %322, 32
  store i32 %323, i32* %33, align 4
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %325 = load i32, i32* %19, align 4
  %326 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 %325)
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %328 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %327, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %329

; <label>:329:                                    ; preds = %333, %319
  %330 = load i32, i32* %32, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %32, align 4
  %332 = icmp ne i32 %330, 0
  br i1 %332, label %333, label %338

; <label>:333:                                    ; preds = %329
  %334 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %335 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %334, align 4
  %336 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %335, i32 -1, i32 32)
  %337 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %336, %struct.BF_PartHolder** %337, align 4
  br label %329

; <label>:338:                                    ; preds = %329
  %339 = load i32, i32* %33, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

; <label>:341:                                    ; preds = %338
  %342 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  %343 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %342, align 4
  %344 = load i32, i32* %33, align 4
  %345 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %343, i32 -1, i32 %344)
  %346 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %4, align 4
  store %struct.BF_PartHolder* %345, %struct.BF_PartHolder** %346, align 4
  br label %347

; <label>:347:                                    ; preds = %341, %338
  %348 = load i32, i32* %19, align 4
  %349 = load i32, i32* %22, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %22, align 4
  br label %351

; <label>:351:                                    ; preds = %347, %308
  %352 = load i32, i32* %22, align 4
  %353 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %354 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %357 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %356, i32 0, i32 15
  %358 = load i32, i32* %357, align 4
  %359 = sub i32 %355, %358
  %360 = icmp eq i32 %352, %359
  br i1 %360, label %362, label %361

; <label>:361:                                    ; preds = %351
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 683, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.Huffmancodebits, i32 0, i32 0))
  br label %362

; <label>:362:                                    ; preds = %361, %351
  %363 = phi i1 [ true, %351 ], [ false, %361 ]
  %364 = zext i1 %363 to i32
  ret void
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
define internal arm_aapcscc %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder*, i32, i32) #0 {
  %4 = alloca %struct.BF_PartHolder*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %33, %3
  %11 = load i32, i32* %7, align 4
  %12 = lshr i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @crc, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* @crc, align 4
  %17 = load i32, i32* @crc, align 4
  %18 = and i32 %17, 65536
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = xor i32 %21, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %14
  %31 = load i32, i32* @crc, align 4
  %32 = xor i32 %31, 32773
  store i32 %32, i32* @crc, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %14
  br label %10

; <label>:34:                                     ; preds = %10
  %35 = load i32, i32* @crc, align 4
  %36 = and i32 %35, 65535
  store i32 %36, i32* @crc, align 4
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %37, i32 %38, i32 %39)
  ret %struct.BF_PartHolder* %40
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
