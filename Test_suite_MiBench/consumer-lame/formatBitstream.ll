; ModuleID = 'formatBitstream.c'
source_filename = "formatBitstream.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.side_info_link = type { %struct.side_info_link*, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, %struct.BF_PartHolder*, %struct.BF_PartHolder*, [2 x %struct.BF_PartHolder*], [2 x [2 x %struct.BF_PartHolder*]] }
%struct.BF_PartHolder = type { i32, %struct.BF_BitstreamPart* }
%struct.BF_BitstreamPart = type { i32, %struct.BF_BitstreamElement* }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct._IO_FILE = type opaque
%struct.BF_FrameData = type { i32, i32, i32, %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart*, [2 x %struct.BF_BitstreamPart*], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], %struct.BF_BitstreamPart* }
%struct.BF_FrameResults = type { i32, i32, i32 }

@BitCount = internal global i32 0, align 4
@ThisFrameSize = internal global i32 0, align 4
@BitsRemaining = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"frameInfo->nGranules <= MAX_GRANULES\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"formatBitstream.c\00", align 1
@__func__.BF_BitstreamFrame = private unnamed_addr constant [18 x i8] c"BF_BitstreamFrame\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"frameInfo->nChannels <= MAX_CHANNELS\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(BitsRemaining % 8) == 0\00", align 1
@forwardFrameLength = internal global i32 0, align 4
@forwardSILength = internal global i32 0, align 4
@elements = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"newPH\00", align 1
@__func__.BF_newPartHolder = private unnamed_addr constant [17 x i8] c"BF_newPartHolder\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"newPH->part\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"newPH->part->element\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@__func__.writePartMainData = private unnamed_addr constant [18 x i8] c"writePartMainData\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"nbits <= 32\00", align 1
@__func__.WriteMainDataBits = private unnamed_addr constant [18 x i8] c"WriteMainDataBits\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BitCount <= ThisFrameSize\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"BitsRemaining >= 0\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"(BitCount + BitsRemaining) == ThisFrameSize\00", align 1
@__func__.writePartSideInfo = private unnamed_addr constant [18 x i8] c"writePartSideInfo\00", align 1
@side_queue_free = internal global %struct.side_info_link* null, align 4
@side_queue_head = internal global %struct.side_info_link* null, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@__func__.get_side_info = private unnamed_addr constant [14 x i8] c"get_side_info\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @InitFormatBitStream() #0 {
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_BitstreamFrame(%struct.BF_FrameData*, %struct.BF_FrameResults*) #0 {
  %3 = alloca %struct.BF_FrameData*, align 4
  %4 = alloca %struct.BF_FrameResults*, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 4
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 4
  %5 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %6 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp sle i32 %7, 2
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %2
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BF_BitstreamFrame, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = phi i1 [ true, %2 ], [ false, %9 ]
  %12 = zext i1 %11 to i32
  %13 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %14 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 2
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %10
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BF_BitstreamFrame, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %17, %10
  %19 = phi i1 [ true, %10 ], [ false, %17 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %22 = call arm_aapcscc i32 @store_side_info(%struct.BF_FrameData* %21)
  %23 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %24 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %26 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %27 = call arm_aapcscc i32 @main_data(%struct.BF_FrameData* %25, %struct.BF_FrameResults* %26)
  %28 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %29 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @BitsRemaining, align 4
  %31 = srem i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %18
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BF_BitstreamFrame, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %33, %18
  %35 = phi i1 [ true, %18 ], [ false, %33 ]
  %36 = zext i1 %35 to i32
  %37 = call arm_aapcscc i32 @side_queue_elements(i32* @forwardFrameLength, i32* @forwardSILength)
  store i32 %37, i32* @elements, align 4
  %38 = load i32, i32* @BitsRemaining, align 4
  %39 = sdiv i32 %38, 8
  %40 = load i32, i32* @forwardFrameLength, align 4
  %41 = sdiv i32 %40, 8
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* @forwardSILength, align 4
  %44 = sdiv i32 %43, 8
  %45 = sub nsw i32 %42, %44
  %46 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %47 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  ret void
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @store_side_info(%struct.BF_FrameData*) #0 {
  %2 = alloca %struct.BF_FrameData*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.side_info_link*, align 4
  %6 = alloca %struct.side_info_link*, align 4
  %7 = alloca i32, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %2, align 4
  %8 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 4
  store %struct.side_info_link* %8, %struct.side_info_link** %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %10 = icmp eq %struct.side_info_link* %9, null
  br i1 %10, label %11, label %103

; <label>:11:                                     ; preds = %1
  %12 = call arm_aapcscc i8* @calloc(i32 1, i32 52)
  %13 = bitcast i8* %12 to %struct.side_info_link*
  store %struct.side_info_link* %13, %struct.side_info_link** %5, align 4
  %14 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %15 = icmp eq %struct.side_info_link* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %18 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:19:                                     ; preds = %11
  %20 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %21 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %20, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %21, align 4
  %22 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %23 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %22, i32 0, i32 3
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %23, align 4
  %25 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %26)
  %28 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %29 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %29, i32 0, i32 4
  store %struct.BF_PartHolder* %27, %struct.BF_PartHolder** %30, align 4
  %31 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %32 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %31, i32 0, i32 4
  %33 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %32, align 4
  %34 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %35)
  %37 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %38 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %38, i32 0, i32 5
  store %struct.BF_PartHolder* %36, %struct.BF_PartHolder** %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %60, %19
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %43 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %63

; <label>:46:                                     ; preds = %40
  %47 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %48 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %47, i32 0, i32 5
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %48, i32 0, i32 %49
  %51 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %50, align 4
  %52 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %53)
  %55 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %56 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %56, i32 0, i32 6
  %58 = load i32, i32* %3, align 4
  %59 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %57, i32 0, i32 %58
  store %struct.BF_PartHolder* %54, %struct.BF_PartHolder** %59, align 4
  br label %60

; <label>:60:                                     ; preds = %46
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %40

; <label>:63:                                     ; preds = %40
  store i32 0, i32* %4, align 4
  br label %64

; <label>:64:                                     ; preds = %99, %63
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %67 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %102

; <label>:70:                                     ; preds = %64
  store i32 0, i32* %3, align 4
  br label %71

; <label>:71:                                     ; preds = %95, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %74 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %98

; <label>:77:                                     ; preds = %71
  %78 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %79 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %78, i32 0, i32 6
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %79, i32 0, i32 %80
  %82 = load i32, i32* %3, align 4
  %83 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %81, i32 0, i32 %82
  %84 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %83, align 4
  %85 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %86)
  %88 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %89 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %89, i32 0, i32 7
  %91 = load i32, i32* %4, align 4
  %92 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %90, i32 0, i32 %91
  %93 = load i32, i32* %3, align 4
  %94 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %92, i32 0, i32 %93
  store %struct.BF_PartHolder* %87, %struct.BF_PartHolder** %94, align 4
  br label %95

; <label>:95:                                     ; preds = %77
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %71

; <label>:98:                                     ; preds = %71
  br label %99

; <label>:99:                                     ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %64

; <label>:102:                                    ; preds = %64
  br label %110

; <label>:103:                                    ; preds = %1
  %104 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %105 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %104, i32 0, i32 0
  %106 = load %struct.side_info_link*, %struct.side_info_link** %105, align 4
  store %struct.side_info_link* %106, %struct.side_info_link** @side_queue_free, align 4
  %107 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %108 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %107, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %108, align 4
  %109 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  store %struct.side_info_link* %109, %struct.side_info_link** %5, align 4
  br label %110

; <label>:110:                                    ; preds = %103, %102
  %111 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %112 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %115 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %118 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %121 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 4
  %123 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %124 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %127 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %130 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %130, i32 0, i32 4
  %132 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %131, align 4
  %133 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %134 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %133, i32 0, i32 3
  %135 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %134, align 4
  %136 = call arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %132, %struct.BF_BitstreamPart* %135)
  %137 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %138 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %138, i32 0, i32 4
  store %struct.BF_PartHolder* %136, %struct.BF_PartHolder** %139, align 4
  %140 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %141 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %141, i32 0, i32 5
  %143 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %142, align 4
  %144 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %145 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %144, i32 0, i32 4
  %146 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %145, align 4
  %147 = call arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %143, %struct.BF_BitstreamPart* %146)
  %148 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %149 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %149, i32 0, i32 5
  store %struct.BF_PartHolder* %147, %struct.BF_PartHolder** %150, align 4
  %151 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %152 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %151, i32 0, i32 3
  %153 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %152, align 4
  %154 = call arm_aapcscc i32 @BF_PartLength(%struct.BF_BitstreamPart* %153)
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %158 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %157, i32 0, i32 4
  %159 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %158, align 4
  %160 = call arm_aapcscc i32 @BF_PartLength(%struct.BF_BitstreamPart* %159)
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %163

; <label>:163:                                    ; preds = %195, %110
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %166 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %198

; <label>:169:                                    ; preds = %163
  %170 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %171 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %171, i32 0, i32 6
  %173 = load i32, i32* %3, align 4
  %174 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %172, i32 0, i32 %173
  %175 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %174, align 4
  %176 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %177 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %176, i32 0, i32 5
  %178 = load i32, i32* %3, align 4
  %179 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %177, i32 0, i32 %178
  %180 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %179, align 4
  %181 = call arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %175, %struct.BF_BitstreamPart* %180)
  %182 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %183 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %183, i32 0, i32 6
  %185 = load i32, i32* %3, align 4
  %186 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %184, i32 0, i32 %185
  store %struct.BF_PartHolder* %181, %struct.BF_PartHolder** %186, align 4
  %187 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %188 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %187, i32 0, i32 5
  %189 = load i32, i32* %3, align 4
  %190 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %188, i32 0, i32 %189
  %191 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %190, align 4
  %192 = call arm_aapcscc i32 @BF_PartLength(%struct.BF_BitstreamPart* %191)
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

; <label>:195:                                    ; preds = %169
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  br label %163

; <label>:198:                                    ; preds = %163
  store i32 0, i32* %4, align 4
  br label %199

; <label>:199:                                    ; preds = %250, %198
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %202 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %253

; <label>:205:                                    ; preds = %199
  store i32 0, i32* %3, align 4
  br label %206

; <label>:206:                                    ; preds = %246, %205
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %209 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %249

; <label>:212:                                    ; preds = %206
  %213 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %214 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %214, i32 0, i32 7
  %216 = load i32, i32* %4, align 4
  %217 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %215, i32 0, i32 %216
  %218 = load i32, i32* %3, align 4
  %219 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %217, i32 0, i32 %218
  %220 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %219, align 4
  %221 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %222 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %221, i32 0, i32 6
  %223 = load i32, i32* %4, align 4
  %224 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %222, i32 0, i32 %223
  %225 = load i32, i32* %3, align 4
  %226 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %224, i32 0, i32 %225
  %227 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %226, align 4
  %228 = call arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %220, %struct.BF_BitstreamPart* %227)
  %229 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %230 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %230, i32 0, i32 7
  %232 = load i32, i32* %4, align 4
  %233 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %231, i32 0, i32 %232
  %234 = load i32, i32* %3, align 4
  %235 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %233, i32 0, i32 %234
  store %struct.BF_PartHolder* %228, %struct.BF_PartHolder** %235, align 4
  %236 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 4
  %237 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %236, i32 0, i32 6
  %238 = load i32, i32* %4, align 4
  %239 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %237, i32 0, i32 %238
  %240 = load i32, i32* %3, align 4
  %241 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %239, i32 0, i32 %240
  %242 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %241, align 4
  %243 = call arm_aapcscc i32 @BF_PartLength(%struct.BF_BitstreamPart* %242)
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %7, align 4
  br label %246

; <label>:246:                                    ; preds = %212
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %3, align 4
  br label %206

; <label>:249:                                    ; preds = %206
  br label %250

; <label>:250:                                    ; preds = %249
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %199

; <label>:253:                                    ; preds = %199
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %256 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 4
  %258 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 4
  store %struct.side_info_link* %258, %struct.side_info_link** %6, align 4
  %259 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %260 = icmp eq %struct.side_info_link* %259, null
  br i1 %260, label %261, label %263

; <label>:261:                                    ; preds = %253
  %262 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  store %struct.side_info_link* %262, %struct.side_info_link** @side_queue_head, align 4
  br label %277

; <label>:263:                                    ; preds = %253
  br label %264

; <label>:264:                                    ; preds = %269, %263
  %265 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %266 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %265, i32 0, i32 0
  %267 = load %struct.side_info_link*, %struct.side_info_link** %266, align 4
  %268 = icmp ne %struct.side_info_link* %267, null
  br i1 %268, label %269, label %273

; <label>:269:                                    ; preds = %264
  %270 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %271 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %270, i32 0, i32 0
  %272 = load %struct.side_info_link*, %struct.side_info_link** %271, align 4
  store %struct.side_info_link* %272, %struct.side_info_link** %6, align 4
  br label %264

; <label>:273:                                    ; preds = %264
  %274 = load %struct.side_info_link*, %struct.side_info_link** %5, align 4
  %275 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %276 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %275, i32 0, i32 0
  store %struct.side_info_link* %274, %struct.side_info_link** %276, align 4
  br label %277

; <label>:277:                                    ; preds = %273, %261
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @main_data(%struct.BF_FrameData*, %struct.BF_FrameResults*) #0 {
  %3 = alloca %struct.BF_FrameData*, align 4
  %4 = alloca %struct.BF_FrameResults*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 4
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 4
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartMainData, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %10 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %65, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %14 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %68

; <label>:17:                                     ; preds = %11
  store i32 0, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %61, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %21 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %64

; <label>:24:                                     ; preds = %18
  %25 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 4
  %26 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %27 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %26, i32 0, i32 7
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %27, i32 0, i32 %28
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %29, i32 0, i32 %30
  %32 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %31, align 4
  %33 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %34 = call arm_aapcscc i32 %25(%struct.BF_BitstreamPart* %32, %struct.BF_FrameResults* %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 4
  %38 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %39 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %38, i32 0, i32 8
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %39, i32 0, i32 %40
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %41, i32 0, i32 %42
  %44 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %43, align 4
  %45 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %46 = call arm_aapcscc i32 %37(%struct.BF_BitstreamPart* %44, %struct.BF_FrameResults* %45)
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 4
  %50 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %51 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %50, i32 0, i32 9
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %51, i32 0, i32 %52
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %53, i32 0, i32 %54
  %56 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %55, align 4
  %57 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %58 = call arm_aapcscc i32 %49(%struct.BF_BitstreamPart* %56, %struct.BF_FrameResults* %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

; <label>:61:                                     ; preds = %24
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %18

; <label>:64:                                     ; preds = %18
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %11

; <label>:68:                                     ; preds = %11
  %69 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 4
  %70 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 4
  %71 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %70, i32 0, i32 10
  %72 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %71, align 4
  %73 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %74 = call arm_aapcscc i32 %69(%struct.BF_BitstreamPart* %72, %struct.BF_FrameResults* %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @side_queue_elements(i32*, i32*) #0 {
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.side_info_link*, align 4
  store i32* %0, i32** %3, align 4
  store i32* %1, i32** %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 4
  store %struct.side_info_link* %9, %struct.side_info_link** %6, align 4
  br label %10

; <label>:10:                                     ; preds = %30, %2
  %11 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %12 = icmp ne %struct.side_info_link* %11, null
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %17 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 4
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %24 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

; <label>:30:                                     ; preds = %13
  %31 = load %struct.side_info_link*, %struct.side_info_link** %6, align 4
  %32 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %31, i32 0, i32 0
  %33 = load %struct.side_info_link*, %struct.side_info_link** %32, align 4
  store %struct.side_info_link* %33, %struct.side_info_link** %6, align 4
  br label %10

; <label>:34:                                     ; preds = %10
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_FlushBitstream(%struct.BF_FrameData*, %struct.BF_FrameResults*) #0 {
  %3 = alloca %struct.BF_FrameData*, align 4
  %4 = alloca %struct.BF_FrameResults*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 4
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 4
  %7 = load i32, i32* @elements, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @forwardFrameLength, align 4
  %11 = load i32, i32* @forwardSILength, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %19, %9
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %15
  %20 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  call arm_aapcscc void @WriteMainDataBits(i32 0, i32 32, %struct.BF_FrameResults* %20)
  br label %15

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 32
  %24 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  call arm_aapcscc void @WriteMainDataBits(i32 0, i32 %23, %struct.BF_FrameResults* %24)
  br label %25

; <label>:25:                                     ; preds = %21, %2
  %26 = load i32, i32* @forwardFrameLength, align 4
  %27 = load i32, i32* @forwardSILength, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %30 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @forwardSILength, align 4
  %32 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %33 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %35 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  call arm_aapcscc void @free_side_queues()
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @WriteMainDataBits(i32, i32, %struct.BF_FrameResults*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.BF_FrameResults*, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.BF_FrameResults* %2, %struct.BF_FrameResults** %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ule i32 %8, 32
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.WriteMainDataBits, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %3
  %12 = phi i1 [ true, %3 ], [ false, %10 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  br label %79

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* @BitCount, align 4
  %19 = load i32, i32* @ThisFrameSize, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %17
  %22 = call arm_aapcscc i32 @write_side_info()
  store i32 %22, i32* @BitCount, align 4
  %23 = load i32, i32* @ThisFrameSize, align 4
  %24 = load i32, i32* @BitCount, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* @BitsRemaining, align 4
  br label %26

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BitsRemaining, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %47

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @BitsRemaining, align 4
  %34 = sub i32 %32, %33
  %35 = lshr i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @BitsRemaining, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BitsRemaining, align 4
  call arm_aapcscc void @putMyBits(i32 %39, i32 %40)
  %41 = call arm_aapcscc i32 @write_side_info()
  store i32 %41, i32* @BitCount, align 4
  %42 = load i32, i32* @ThisFrameSize, align 4
  %43 = load i32, i32* @BitCount, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* @BitsRemaining, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  call arm_aapcscc void @putMyBits(i32 %45, i32 %46)
  br label %50

; <label>:47:                                     ; preds = %26
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  call arm_aapcscc void @putMyBits(i32 %48, i32 %49)
  br label %50

; <label>:50:                                     ; preds = %47, %30
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BitCount, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* @BitCount, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BitsRemaining, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* @BitsRemaining, align 4
  %57 = load i32, i32* @BitCount, align 4
  %58 = load i32, i32* @ThisFrameSize, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %50
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.WriteMainDataBits, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %60, %50
  %62 = phi i1 [ true, %50 ], [ false, %60 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @BitsRemaining, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %61
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.WriteMainDataBits, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %66, %61
  %68 = phi i1 [ true, %61 ], [ false, %66 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @BitCount, align 4
  %71 = load i32, i32* @BitsRemaining, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @ThisFrameSize, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %76, label %75

; <label>:75:                                     ; preds = %67
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.WriteMainDataBits, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %75, %67
  %77 = phi i1 [ true, %67 ], [ false, %75 ]
  %78 = zext i1 %77 to i32
  br label %79

; <label>:79:                                     ; preds = %76, %16
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @free_side_queues() #0 {
  %1 = alloca %struct.side_info_link*, align 4
  %2 = alloca %struct.side_info_link*, align 4
  %3 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 4
  store %struct.side_info_link* %3, %struct.side_info_link** %1, align 4
  br label %4

; <label>:4:                                      ; preds = %12, %0
  %5 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  %6 = icmp ne %struct.side_info_link* %5, null
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %4
  %8 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  %9 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %8, i32 0, i32 0
  %10 = load %struct.side_info_link*, %struct.side_info_link** %9, align 4
  store %struct.side_info_link* %10, %struct.side_info_link** %2, align 4
  %11 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  call arm_aapcscc void @free_side_info_link(%struct.side_info_link* %11)
  br label %12

; <label>:12:                                     ; preds = %7
  %13 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  store %struct.side_info_link* %13, %struct.side_info_link** %1, align 4
  br label %4

; <label>:14:                                     ; preds = %4
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_head, align 4
  %15 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 4
  store %struct.side_info_link* %15, %struct.side_info_link** %1, align 4
  br label %16

; <label>:16:                                     ; preds = %24, %14
  %17 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  %18 = icmp ne %struct.side_info_link* %17, null
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %16
  %20 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  %21 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %20, i32 0, i32 0
  %22 = load %struct.side_info_link*, %struct.side_info_link** %21, align 4
  store %struct.side_info_link* %22, %struct.side_info_link** %2, align 4
  %23 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  call arm_aapcscc void @free_side_info_link(%struct.side_info_link* %23)
  br label %24

; <label>:24:                                     ; preds = %19
  %25 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  store %struct.side_info_link* %25, %struct.side_info_link** %1, align 4
  br label %16

; <label>:26:                                     ; preds = %16
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_free, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @BF_PartLength(%struct.BF_BitstreamPart*) #0 {
  %2 = alloca %struct.BF_BitstreamPart*, align 4
  %3 = alloca %struct.BF_BitstreamElement*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %2, align 4
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 4
  %7 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 1
  %8 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %7, align 4
  store %struct.BF_BitstreamElement* %8, %struct.BF_BitstreamElement** %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %22, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 4
  %12 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %9
  %16 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %3, align 4
  %17 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 4
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %3, align 4
  %26 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %25, i32 1
  store %struct.BF_BitstreamElement* %26, %struct.BF_BitstreamElement** %3, align 4
  br label %9

; <label>:27:                                     ; preds = %9
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BF_PartHolder*, align 4
  store i32 %0, i32* %2, align 4
  %4 = call arm_aapcscc i8* @calloc(i32 1, i32 8)
  %5 = bitcast i8* %4 to %struct.BF_PartHolder*
  store %struct.BF_PartHolder* %5, %struct.BF_PartHolder** %3, align 4
  %6 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %7 = icmp ne %struct.BF_PartHolder* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %1
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BF_newPartHolder, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = phi i1 [ true, %1 ], [ false, %8 ]
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %14 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call arm_aapcscc i8* @calloc(i32 1, i32 8)
  %16 = bitcast i8* %15 to %struct.BF_BitstreamPart*
  %17 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %18 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %17, i32 0, i32 1
  store %struct.BF_BitstreamPart* %16, %struct.BF_BitstreamPart** %18, align 4
  %19 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %20 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %19, i32 0, i32 1
  %21 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %20, align 4
  %22 = icmp ne %struct.BF_BitstreamPart* %21, null
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %9
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 446, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BF_newPartHolder, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %23, %9
  %25 = phi i1 [ true, %9 ], [ false, %23 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call arm_aapcscc i8* @calloc(i32 %27, i32 8)
  %29 = bitcast i8* %28 to %struct.BF_BitstreamElement*
  %30 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %31 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %30, i32 0, i32 1
  %32 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %31, align 4
  %33 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %32, i32 0, i32 1
  store %struct.BF_BitstreamElement* %29, %struct.BF_BitstreamElement** %33, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

; <label>:36:                                     ; preds = %24
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %38 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %37, i32 0, i32 1
  %39 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %38, align 4
  %40 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %39, i32 0, i32 1
  %41 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %40, align 4
  %42 = icmp ne %struct.BF_BitstreamElement* %41, null
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %36
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 448, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BF_newPartHolder, i32 0, i32 0))
  br label %44

; <label>:44:                                     ; preds = %43, %36
  %45 = phi i1 [ true, %36 ], [ false, %43 ]
  %46 = zext i1 %45 to i32
  br label %47

; <label>:47:                                     ; preds = %44, %24
  %48 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %49 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %48, i32 0, i32 1
  %50 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %49, align 4
  %51 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  ret %struct.BF_PartHolder* %52
}

declare arm_aapcscc i8* @calloc(i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_NewHolderFromBitstreamPart(%struct.BF_BitstreamPart*) #0 {
  %2 = alloca %struct.BF_BitstreamPart*, align 4
  %3 = alloca %struct.BF_PartHolder*, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %2, align 4
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 4
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %6)
  store %struct.BF_PartHolder* %7, %struct.BF_PartHolder** %3, align 4
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %9 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 4
  %10 = call arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %8, %struct.BF_BitstreamPart* %9)
  ret %struct.BF_PartHolder* %10
}

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder*, %struct.BF_BitstreamPart*) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 4
  %4 = alloca %struct.BF_BitstreamPart*, align 4
  %5 = alloca %struct.BF_BitstreamElement*, align 4
  %6 = alloca i32, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 4
  store %struct.BF_BitstreamPart* %1, %struct.BF_BitstreamPart** %4, align 4
  %7 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %8 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %7, i32 0, i32 1
  %9 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %8, align 4
  %10 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %26, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 4
  %14 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %11
  %18 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 4
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %18, i32 0, i32 1
  %20 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %20, i32 %21
  store %struct.BF_BitstreamElement* %22, %struct.BF_BitstreamElement** %5, align 4
  %23 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %24 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %25 = call arm_aapcscc %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* %23, %struct.BF_BitstreamElement* %24)
  store %struct.BF_PartHolder* %25, %struct.BF_PartHolder** %3, align 4
  br label %26

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %11

; <label>:29:                                     ; preds = %11
  %30 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  ret %struct.BF_PartHolder* %30
}

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder*, %struct.BF_BitstreamElement*) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 4
  %4 = alloca %struct.BF_BitstreamElement*, align 4
  %5 = alloca %struct.BF_PartHolder*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 4
  store %struct.BF_BitstreamElement* %1, %struct.BF_BitstreamElement** %4, align 4
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  store %struct.BF_PartHolder* %8, %struct.BF_PartHolder** %5, align 4
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %10 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %9, i32 0, i32 1
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %10, align 4
  %12 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %17 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %2
  %21 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = call arm_aapcscc %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* %21, i32 %24)
  store %struct.BF_PartHolder* %25, %struct.BF_PartHolder** %5, align 4
  br label %26

; <label>:26:                                     ; preds = %20, %2
  %27 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 4
  %28 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %27, i32 0, i32 1
  %29 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %28, align 4
  %30 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %29, i32 0, i32 1
  %31 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %30, align 4
  %32 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 4
  %33 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %32, i32 0, i32 1
  %34 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %33, align 4
  %35 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %31, i32 %36
  %39 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %4, align 4
  %40 = bitcast %struct.BF_BitstreamElement* %38 to i8*
  %41 = bitcast %struct.BF_BitstreamElement* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 4
  ret %struct.BF_PartHolder* %42
}

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder*, i32) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BF_PartHolder*, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call arm_aapcscc %struct.BF_PartHolder* @BF_newPartHolder(i32 %8)
  store %struct.BF_PartHolder* %9, %struct.BF_PartHolder** %7, align 4
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %11 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %4, align 4
  br label %21

; <label>:17:                                     ; preds = %2
  %18 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %19 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

; <label>:21:                                     ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 4
  %25 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %24, i32 0, i32 1
  %26 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %25, align 4
  %27 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

; <label>:28:                                     ; preds = %49, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

; <label>:32:                                     ; preds = %28
  %33 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 4
  %34 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %33, i32 0, i32 1
  %35 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %34, align 4
  %36 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %35, i32 0, i32 1
  %37 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %37, i32 %38
  %40 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %41 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %40, i32 0, i32 1
  %42 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %41, align 4
  %43 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %42, i32 0, i32 1
  %44 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %44, i32 %45
  %47 = bitcast %struct.BF_BitstreamElement* %39 to i8*
  %48 = bitcast %struct.BF_BitstreamElement* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %47, i8* %48, i32 8, i32 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %32
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

; <label>:52:                                     ; preds = %28
  %53 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 4
  %54 = call arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %53)
  %55 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 4
  ret %struct.BF_PartHolder* %55
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder*) #0 {
  %2 = alloca %struct.BF_PartHolder*, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %2, align 4
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 4
  %4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i32 0, i32 1
  %5 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 4
  %6 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %5, i32 0, i32 1
  %7 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %6, align 4
  %8 = bitcast %struct.BF_BitstreamElement* %7 to i8*
  call arm_aapcscc void @free(i8* %8)
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 4
  %10 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %9, i32 0, i32 1
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %10, align 4
  %12 = bitcast %struct.BF_BitstreamPart* %11 to i8*
  call arm_aapcscc void @free(i8* %12)
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 4
  %14 = bitcast %struct.BF_PartHolder* %13 to i8*
  call arm_aapcscc void @free(i8* %14)
  ret %struct.BF_PartHolder* null
}

declare arm_aapcscc void @free(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder*, i32, i32) #0 {
  %4 = alloca %struct.BF_PartHolder*, align 4
  %5 = alloca %struct.BF_PartHolder*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.BF_BitstreamElement, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 1
  store i16 %12, i16* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %3
  %17 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 4
  %18 = call arm_aapcscc %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* %17, %struct.BF_BitstreamElement* %8)
  store %struct.BF_PartHolder* %18, %struct.BF_PartHolder** %4, align 4
  br label %21

; <label>:19:                                     ; preds = %3
  %20 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 4
  store %struct.BF_PartHolder* %20, %struct.BF_PartHolder** %4, align 4
  br label %21

; <label>:21:                                     ; preds = %19, %16
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %4, align 4
  ret %struct.BF_PartHolder* %22
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @writePartMainData(%struct.BF_BitstreamPart*, %struct.BF_FrameResults*) #0 {
  %3 = alloca %struct.BF_BitstreamPart*, align 4
  %4 = alloca %struct.BF_FrameResults*, align 4
  %5 = alloca %struct.BF_BitstreamElement*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %3, align 4
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  %9 = icmp ne %struct.BF_FrameResults* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.writePartMainData, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %2
  %12 = phi i1 [ true, %2 ], [ false, %10 ]
  %13 = zext i1 %12 to i32
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %15 = icmp ne %struct.BF_BitstreamPart* %14, null
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %11
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.writePartMainData, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %11
  %18 = phi i1 [ true, %11 ], [ false, %16 ]
  %19 = zext i1 %18 to i32
  %20 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %21 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %20, i32 0, i32 1
  %22 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %21, align 4
  store %struct.BF_BitstreamElement* %22, %struct.BF_BitstreamElement** %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

; <label>:23:                                     ; preds = %44, %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %26 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %49

; <label>:29:                                     ; preds = %23
  %30 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %31 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %34 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 4
  %36 = zext i16 %35 to i32
  %37 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 4
  call arm_aapcscc void @WriteMainDataBits(i32 %32, i32 %36, %struct.BF_FrameResults* %37)
  %38 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %39 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

; <label>:44:                                     ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %48 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %47, i32 1
  store %struct.BF_BitstreamElement* %48, %struct.BF_BitstreamElement** %5, align 4
  br label %23

; <label>:49:                                     ; preds = %23
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @write_side_info() #0 {
  %1 = alloca %struct.MYSideInfo*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 4
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartSideInfo, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 4
  store i32 0, i32* %2, align 4
  %6 = call arm_aapcscc %struct.MYSideInfo* @get_side_info()
  store %struct.MYSideInfo* %6, %struct.MYSideInfo** %1, align 4
  %7 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %8 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @ThisFrameSize, align 4
  %10 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 4
  %11 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %11, i32 0, i32 4
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %12, align 4
  %14 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %13, i32 0, i32 1
  %15 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %14, align 4
  %16 = call arm_aapcscc i32 %10(%struct.BF_BitstreamPart* %15, %struct.BF_FrameResults* null)
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 4
  %20 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %21 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %20, i32 0, i32 5
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %21, align 4
  %23 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %22, i32 0, i32 1
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %23, align 4
  %25 = call arm_aapcscc i32 %19(%struct.BF_BitstreamPart* %24, %struct.BF_FrameResults* null)
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %46, %0
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %31 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %28
  %35 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 4
  %36 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %37 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %36, i32 0, i32 6
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %37, i32 0, i32 %38
  %40 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %39, align 4
  %41 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %40, i32 0, i32 1
  %42 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %41, align 4
  %43 = call arm_aapcscc i32 %35(%struct.BF_BitstreamPart* %42, %struct.BF_FrameResults* null)
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %2, align 4
  br label %46

; <label>:46:                                     ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %28

; <label>:49:                                     ; preds = %28
  store i32 0, i32* %4, align 4
  br label %50

; <label>:50:                                     ; preds = %81, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %53 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %84

; <label>:56:                                     ; preds = %50
  store i32 0, i32* %3, align 4
  br label %57

; <label>:57:                                     ; preds = %77, %56
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %60 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %80

; <label>:63:                                     ; preds = %57
  %64 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 4
  %65 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 4
  %66 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %65, i32 0, i32 7
  %67 = load i32, i32* %4, align 4
  %68 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %66, i32 0, i32 %67
  %69 = load i32, i32* %3, align 4
  %70 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %68, i32 0, i32 %69
  %71 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %70, align 4
  %72 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %71, i32 0, i32 1
  %73 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %72, align 4
  %74 = call arm_aapcscc i32 %64(%struct.BF_BitstreamPart* %73, %struct.BF_FrameResults* null)
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %2, align 4
  br label %77

; <label>:77:                                     ; preds = %63
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %57

; <label>:80:                                     ; preds = %57
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %50

; <label>:84:                                     ; preds = %50
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare arm_aapcscc void @putMyBits(i32, i32) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @writePartSideInfo(%struct.BF_BitstreamPart*, %struct.BF_FrameResults*) #0 {
  %3 = alloca %struct.BF_BitstreamPart*, align 4
  %4 = alloca %struct.BF_FrameResults*, align 4
  %5 = alloca %struct.BF_BitstreamElement*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %3, align 4
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %9 = icmp ne %struct.BF_BitstreamPart* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.writePartSideInfo, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %2
  %12 = phi i1 [ true, %2 ], [ false, %10 ]
  %13 = zext i1 %12 to i32
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %15 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %14, i32 0, i32 1
  %16 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %15, align 4
  store %struct.BF_BitstreamElement* %16, %struct.BF_BitstreamElement** %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

; <label>:17:                                     ; preds = %37, %11
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 4
  %20 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %42

; <label>:23:                                     ; preds = %17
  %24 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %25 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %28 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 4
  %30 = zext i16 %29 to i32
  call arm_aapcscc void @putMyBits(i32 %26, i32 %30)
  %31 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %32 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 4
  %34 = zext i16 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

; <label>:37:                                     ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 4
  %41 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %40, i32 1
  store %struct.BF_BitstreamElement* %41, %struct.BF_BitstreamElement** %5, align 4
  br label %17

; <label>:42:                                     ; preds = %17
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

; Function Attrs: nounwind
define internal arm_aapcscc %struct.MYSideInfo* @get_side_info() #0 {
  %1 = alloca %struct.side_info_link*, align 4
  %2 = alloca %struct.side_info_link*, align 4
  %3 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 4
  store %struct.side_info_link* %3, %struct.side_info_link** %1, align 4
  %4 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 4
  store %struct.side_info_link* %4, %struct.side_info_link** %2, align 4
  %5 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %6 = icmp ne %struct.side_info_link* %5, null
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %0
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 384, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.get_side_info, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %7, %0
  %9 = phi i1 [ true, %0 ], [ false, %7 ]
  %10 = zext i1 %9 to i32
  %11 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %12 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %11, i32 0, i32 0
  %13 = load %struct.side_info_link*, %struct.side_info_link** %12, align 4
  store %struct.side_info_link* %13, %struct.side_info_link** @side_queue_head, align 4
  %14 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  store %struct.side_info_link* %14, %struct.side_info_link** @side_queue_free, align 4
  %15 = load %struct.side_info_link*, %struct.side_info_link** %1, align 4
  %16 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %17 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %16, i32 0, i32 0
  store %struct.side_info_link* %15, %struct.side_info_link** %17, align 4
  %18 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %19 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %18, i32 0, i32 1
  ret %struct.MYSideInfo* %19
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

; Function Attrs: nounwind
define internal arm_aapcscc void @free_side_info_link(%struct.side_info_link*) #0 {
  %2 = alloca %struct.side_info_link*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.side_info_link* %0, %struct.side_info_link** %2, align 4
  %5 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %6 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %6, i32 0, i32 4
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 4
  %9 = call arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %8)
  %10 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %11, i32 0, i32 4
  store %struct.BF_PartHolder* %9, %struct.BF_PartHolder** %12, align 4
  %13 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %14 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %14, i32 0, i32 5
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %15, align 4
  %17 = call arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %16)
  %18 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %19 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %19, i32 0, i32 5
  store %struct.BF_PartHolder* %17, %struct.BF_PartHolder** %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

; <label>:21:                                     ; preds = %41, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %24 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %21
  %29 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %30 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %30, i32 0, i32 6
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %31, i32 0, i32 %32
  %34 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %33, align 4
  %35 = call arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %34)
  %36 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %37 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %37, i32 0, i32 6
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %38, i32 0, i32 %39
  store %struct.BF_PartHolder* %35, %struct.BF_PartHolder** %40, align 4
  br label %41

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %21

; <label>:44:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

; <label>:45:                                     ; preds = %81, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %48 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %84

; <label>:52:                                     ; preds = %45
  store i32 0, i32* %4, align 4
  br label %53

; <label>:53:                                     ; preds = %77, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %56 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %80

; <label>:60:                                     ; preds = %53
  %61 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %62 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %62, i32 0, i32 7
  %64 = load i32, i32* %3, align 4
  %65 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %63, i32 0, i32 %64
  %66 = load i32, i32* %4, align 4
  %67 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %65, i32 0, i32 %66
  %68 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %67, align 4
  %69 = call arm_aapcscc %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %68)
  %70 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %71 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %71, i32 0, i32 7
  %73 = load i32, i32* %3, align 4
  %74 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %72, i32 0, i32 %73
  %75 = load i32, i32* %4, align 4
  %76 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %74, i32 0, i32 %75
  store %struct.BF_PartHolder* %69, %struct.BF_PartHolder** %76, align 4
  br label %77

; <label>:77:                                     ; preds = %60
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %53

; <label>:80:                                     ; preds = %53
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %45

; <label>:84:                                     ; preds = %45
  %85 = load %struct.side_info_link*, %struct.side_info_link** %2, align 4
  %86 = bitcast %struct.side_info_link* %85 to i8*
  call arm_aapcscc void @free(i8* %86)
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
