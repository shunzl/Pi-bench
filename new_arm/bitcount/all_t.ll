; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%union.anon = type { i32 }
%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1
@bits.1 = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@main.pBitCntFunc = internal global [7 x i32 (i32)*] [i32 (i32)* @bit_count, i32 (i32)* @bitcount, i32 (i32)* @ntbl_bitcnt, i32 (i32)* @ntbl_bitcount, i32 (i32)* @BW_btbl_bitcount, i32 (i32)* @AR_btbl_bitcount, i32 (i32)* @bit_shifter], align 4
@main.text = internal global [7 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)], align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"01\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i8* @alloc_bit_array(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %4, i32 0
  %insertElmt1 = insertelement <4 x i32> %insertElmt, i32 %4, i32 1
  %insertElmt2 = insertelement <4 x i32> %insertElmt1, i32 %4, i32 2
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %4, i32 3
  store <4 x i32> %insertElmt3, <4 x i32>* %allocaVec, align 16
  %5 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop = add <4 x i32> %5, <i32 8, i32 8, i32 8, i32 8>
  %6 = add i32 %4, 8
  %Vop4 = sub <4 x i32> %Vop, <i32 1, i32 1, i32 1, i32 1>
  %7 = sub i32 %6, 1
  %8 = udiv i32 %7, 8
  %9 = call arm_aapcscc i8* @calloc(i32 %8, i32 1)
  store i8* %9, i8** %3, align 4
  %10 = load i8*, i8** %3, align 4
  ret i8* %10
}

declare arm_aapcscc i8* @calloc(i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @getbit(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %5, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %5, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %5, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %6 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = sdiv <4 x i32> %6, <i32 8, i32 8, i32 8, i32 8>
  %7 = sdiv i32 %5, 8
  %8 = load i8*, i8** %3, align 4
  %9 = getelementptr inbounds i8, i8* %8, i32 %7
  store i8* %9, i8** %3, align 4
  %10 = load i8*, i8** %3, align 4
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %13, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %13, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %13, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %15 = srem i32 %13, 8
  %16 = shl i32 1, %15
  store i32 %12, i32* %CastInst
  %17 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %17, i32 0
  %insertCast9 = insertelement <4 x i32> %insertCast, i32 %17, i32 1
  %insertCast10 = insertelement <4 x i32> %insertCast9, i32 %17, i32 2
  %insertCast11 = insertelement <4 x i32> %insertCast10, i32 %17, i32 3
  store <4 x i32> %insertCast11, <4 x i32>* %CastInstVec, align 4
  %18 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %19 = and i32 %12, %16
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: nounwind
define arm_aapcscc void @setbit(i8*, i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %4 = alloca i8*, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %7, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %7, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %7, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %7, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec4, align 16
  %8 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop = sdiv <4 x i32> %8, <i32 8, i32 8, i32 8, i32 8>
  %9 = sdiv i32 %7, 8
  %10 = load i8*, i8** %4, align 4
  %11 = getelementptr inbounds i8, i8* %10, i32 %9
  store i8* %11, i8** %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %15, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %15, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %15, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %15, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %16 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %17 = srem i32 %15, 8
  %18 = shl i32 1, %17
  %19 = load i8*, i8** %4, align 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %CastInst
  %22 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %22, i32 0
  %insertCast13 = insertelement <4 x i32> %insertCast, i32 %22, i32 1
  %insertCast14 = insertelement <4 x i32> %insertCast13, i32 %22, i32 2
  %insertCast15 = insertelement <4 x i32> %insertCast14, i32 %22, i32 3
  store <4 x i32> %insertCast15, <4 x i32>* %CastInstVec, align 4
  %23 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %24 = or i32 %21, %18
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %19, align 1
  br label %39

; <label>:26:                                     ; preds = %3
  %27 = load i32, i32* %5, align 4
  %insertElmt16 = insertelement <4 x i32> undef, i32 %27, i32 0
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %27, i32 1
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %27, i32 2
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %27, i32 3
  store <4 x i32> %insertElmt19, <4 x i32>* %allocaVec4, align 16
  %28 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %29 = srem i32 %27, 8
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i8*, i8** %4, align 4
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %CastInst1
  %35 = load i32, i32* %CastInst1, align 4
  %insertCast20 = insertelement <4 x i32> undef, i32 %35, i32 0
  %insertCast21 = insertelement <4 x i32> %insertCast20, i32 %35, i32 1
  %insertCast22 = insertelement <4 x i32> %insertCast21, i32 %35, i32 2
  %insertCast23 = insertelement <4 x i32> %insertCast22, i32 %35, i32 3
  store <4 x i32> %insertCast23, <4 x i32>* %CastInstVec2, align 4
  %36 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %37 = and i32 %34, %31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %32, align 1
  br label %39

; <label>:39:                                     ; preds = %26, %14
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @flipbit(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %5, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %5, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %5, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %6 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = sdiv <4 x i32> %6, <i32 8, i32 8, i32 8, i32 8>
  %7 = sdiv i32 %5, 8
  %8 = load i8*, i8** %3, align 4
  %9 = getelementptr inbounds i8, i8* %8, i32 %7
  store i8* %9, i8** %3, align 4
  %10 = load i32, i32* %4, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %10, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %10, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %10, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %11 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %12 = srem i32 %10, 8
  %13 = shl i32 1, %12
  %14 = load i8*, i8** %3, align 4
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %CastInst
  %17 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %17, i32 0
  %insertCast9 = insertelement <4 x i32> %insertCast, i32 %17, i32 1
  %insertCast10 = insertelement <4 x i32> %insertCast9, i32 %17, i32 2
  %insertCast11 = insertelement <4 x i32> %insertCast10, i32 %17, i32 3
  store <4 x i32> %insertCast11, <4 x i32>* %CastInstVec, align 4
  %18 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %19 = xor i32 %16, %13
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %14, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bit_count(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %32

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %29, %6
  %8 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %8, i32 0
  %insertElmt5 = insertelement <4 x i32> %insertElmt, i32 %8, i32 1
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %8, i32 2
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %8, i32 3
  store <4 x i32> %insertElmt7, <4 x i32>* %allocaVec4, align 16
  %9 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop = add <4 x i32> %9, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec4
  %10 = load <4 x i32>, <4 x i32>* %allocaVec4, align 4
  %extractE = extractelement <4 x i32> %10, i64 0
  %extractE8 = extractelement <4 x i32> %10, i64 1
  %extractE9 = extractelement <4 x i32> %10, i64 2
  %sum = add i32 %extractE, %extractE8
  %sum10 = add i32 %sum, %extractE9
  %11 = add nsw i32 %8, 1
  %Fmul = mul i32 %11, 3
  store i32 %11, i32* %Recovery
  %Fcmp = icmp ne i32 %sum10, %Fmul
  br i1 %Fcmp, label %12, label %16

; <label>:12:                                     ; preds = %7
  %remThree = sdiv i32 %sum10, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %13, label %14

; <label>:13:                                     ; preds = %12
  store i32 %11, i32* %Recovery, align 4
  br label %15

; <label>:14:                                     ; preds = %12
  store i32 %extractE, i32* %Recovery, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %13
  br label %16

; <label>:16:                                     ; preds = %7, %15
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %2, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %18, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %18, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %18, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec3, align 16
  %19 = load i32, i32* %2, align 4
  %insertElmt15 = insertelement <4 x i32> undef, i32 %19, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %19, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %19, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %19, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec3, align 16
  %20 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop19 = sub <4 x i32> %20, <i32 1, i32 1, i32 1, i32 1>
  %21 = sub nsw i32 %19, 1
  %22 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop20 = and <4 x i32> %22, %Vop19
  store <4 x i32> %Vop20, <4 x i32>* %allocaVec3
  %23 = load <4 x i32>, <4 x i32>* %allocaVec3, align 4
  %extractE22 = extractelement <4 x i32> %23, i64 0
  %extractE23 = extractelement <4 x i32> %23, i64 1
  %extractE24 = extractelement <4 x i32> %23, i64 2
  %sum25 = add i32 %extractE22, %extractE23
  %sum26 = add i32 %sum25, %extractE24
  %24 = and i32 %18, %21
  %Fmul21 = mul i32 %24, 3
  store i32 %24, i32* %Recovery1
  %Fcmp27 = icmp ne i32 %sum26, %Fmul21
  br i1 %Fcmp27, label %25, label %29

; <label>:25:                                     ; preds = %17
  %remThree28 = sdiv i32 %sum26, %extractE22
  %FcmpThree29 = icmp ne i32 %remThree28, 3
  br i1 %FcmpThree29, label %26, label %27

; <label>:26:                                     ; preds = %25
  store i32 %24, i32* %Recovery1, align 4
  br label %28

; <label>:27:                                     ; preds = %25
  store i32 %extractE22, i32* %Recovery1, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %17, %28
  %ReplaceInst30 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst30, i32* %2, align 4
  %30 = icmp ne i32 0, %24
  br i1 %30, label %7, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %31, %1
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bitcount(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %3, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %3, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %3, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %3, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %4 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = and <4 x i32> %4, <i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766>
  %5 = and i32 %3, -1431655766
  %Vop5 = lshr <4 x i32> %Vop, <i32 1, i32 1, i32 1, i32 1>
  %6 = lshr i32 %5, 1
  %7 = load i32, i32* %2, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %7, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %7, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %7, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %7, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec1, align 16
  %8 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop10 = and <4 x i32> %8, <i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765>
  %9 = and i32 %7, 1431655765
  %Vop11 = add <4 x i32> %Vop5, %Vop10
  store <4 x i32> %Vop11, <4 x i32>* %allocaVec1
  %10 = add i32 %6, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop12 = and <4 x i32> %12, <i32 -858993460, i32 -858993460, i32 -858993460, i32 -858993460>
  %13 = and i32 %11, -858993460
  %Vop13 = lshr <4 x i32> %Vop12, <i32 2, i32 2, i32 2, i32 2>
  %14 = lshr i32 %13, 2
  %15 = load i32, i32* %2, align 4
  %16 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop14 = and <4 x i32> %16, <i32 858993459, i32 858993459, i32 858993459, i32 858993459>
  %17 = and i32 %15, 858993459
  %Vop15 = add <4 x i32> %Vop13, %Vop14
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec1
  %18 = add i32 %14, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop16 = and <4 x i32> %20, <i32 -252645136, i32 -252645136, i32 -252645136, i32 -252645136>
  %21 = and i32 %19, -252645136
  %Vop17 = lshr <4 x i32> %Vop16, <i32 4, i32 4, i32 4, i32 4>
  %22 = lshr i32 %21, 4
  %23 = load i32, i32* %2, align 4
  %24 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop18 = and <4 x i32> %24, <i32 252645135, i32 252645135, i32 252645135, i32 252645135>
  %25 = and i32 %23, 252645135
  %Vop19 = add <4 x i32> %Vop17, %Vop18
  store <4 x i32> %Vop19, <4 x i32>* %allocaVec1
  %26 = add i32 %22, %25
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop20 = and <4 x i32> %28, <i32 -16711936, i32 -16711936, i32 -16711936, i32 -16711936>
  %29 = and i32 %27, -16711936
  %Vop21 = lshr <4 x i32> %Vop20, <i32 8, i32 8, i32 8, i32 8>
  %30 = lshr i32 %29, 8
  %31 = load i32, i32* %2, align 4
  %32 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop22 = and <4 x i32> %32, <i32 16711935, i32 16711935, i32 16711935, i32 16711935>
  %33 = and i32 %31, 16711935
  %Vop23 = add <4 x i32> %Vop21, %Vop22
  store <4 x i32> %Vop23, <4 x i32>* %allocaVec1
  %34 = add i32 %30, %33
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop24 = and <4 x i32> %36, <i32 -65536, i32 -65536, i32 -65536, i32 -65536>
  %37 = and i32 %35, -65536
  %Vop25 = lshr <4 x i32> %Vop24, <i32 16, i32 16, i32 16, i32 16>
  %38 = lshr i32 %37, 16
  %39 = load i32, i32* %2, align 4
  %40 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop26 = and <4 x i32> %40, <i32 65535, i32 65535, i32 65535, i32 65535>
  %41 = and i32 %39, 65535
  %Vop27 = add <4 x i32> %Vop25, %Vop26
  store <4 x i32> %Vop27, <4 x i32>* %allocaVec1
  %42 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %42, i64 0
  %extractE28 = extractelement <4 x i32> %42, i64 1
  %extractE29 = extractelement <4 x i32> %42, i64 2
  %sum = add i32 %extractE, %extractE28
  %sum30 = add i32 %sum, %extractE29
  %43 = add i32 %38, %41
  %Fmul = mul i32 %43, 3
  store i32 %43, i32* %Recovery
  %Fcmp = icmp ne i32 %sum30, %Fmul
  br i1 %Fcmp, label %44, label %48

; <label>:44:                                     ; preds = %1
  %remThree = sdiv i32 %sum30, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %45, label %46

; <label>:45:                                     ; preds = %44
  store i32 %43, i32* %Recovery, align 4
  br label %47

; <label>:46:                                     ; preds = %44
  store i32 %extractE, i32* %Recovery, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %1, %47
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcount(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec15 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %allocaVec16 = alloca <4 x i32>, align 16
  %CastInst3 = alloca i32, align 4
  %CastInstVec4 = alloca <4 x i32>, align 16
  %allocaVec17 = alloca <4 x i32>, align 16
  %CastInst5 = alloca i32, align 4
  %CastInstVec6 = alloca <4 x i32>, align 16
  %allocaVec18 = alloca <4 x i32>, align 16
  %CastInst7 = alloca i32, align 4
  %CastInstVec8 = alloca <4 x i32>, align 16
  %allocaVec19 = alloca <4 x i32>, align 16
  %CastInst9 = alloca i32, align 4
  %CastInstVec10 = alloca <4 x i32>, align 16
  %allocaVec20 = alloca <4 x i32>, align 16
  %CastInst11 = alloca i32, align 4
  %CastInstVec12 = alloca <4 x i32>, align 16
  %allocaVec21 = alloca <4 x i32>, align 16
  %CastInst13 = alloca i32, align 4
  %CastInstVec14 = alloca <4 x i32>, align 16
  %allocaVec22 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %3, i32 0
  %insertElmt23 = insertelement <4 x i32> %insertElmt, i32 %3, i32 1
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %3, i32 2
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %3, i32 3
  store <4 x i32> %insertElmt25, <4 x i32>* %allocaVec22, align 16
  %4 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop = and <4 x i32> %4, <i32 15, i32 15, i32 15, i32 15>
  %5 = and i32 %3, 15
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load i32, i32* %2, align 4
  %insertElmt26 = insertelement <4 x i32> undef, i32 %9, i32 0
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %9, i32 1
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %9, i32 2
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %9, i32 3
  store <4 x i32> %insertElmt29, <4 x i32>* %allocaVec22, align 16
  %10 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop30 = and <4 x i32> %10, <i32 240, i32 240, i32 240, i32 240>
  %11 = and i32 %9, 240
  %Vop31 = lshr <4 x i32> %Vop30, <i32 4, i32 4, i32 4, i32 4>
  %12 = lshr i32 %11, 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %8, i32* %CastInst
  %16 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %16, i32 0
  %insertCast32 = insertelement <4 x i32> %insertCast, i32 %16, i32 1
  %insertCast33 = insertelement <4 x i32> %insertCast32, i32 %16, i32 2
  %insertCast34 = insertelement <4 x i32> %insertCast33, i32 %16, i32 3
  store <4 x i32> %insertCast34, <4 x i32>* %CastInstVec, align 4
  %17 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  store i32 %15, i32* %CastInst1
  %18 = load i32, i32* %CastInst1, align 4
  %insertCast35 = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertCast36 = insertelement <4 x i32> %insertCast35, i32 %18, i32 1
  %insertCast37 = insertelement <4 x i32> %insertCast36, i32 %18, i32 2
  %insertCast38 = insertelement <4 x i32> %insertCast37, i32 %18, i32 3
  store <4 x i32> %insertCast38, <4 x i32>* %CastInstVec2, align 4
  %19 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %Vop39 = add <4 x i32> %17, %19
  %20 = add nsw i32 %8, %15
  %21 = load i32, i32* %2, align 4
  %insertElmt40 = insertelement <4 x i32> undef, i32 %21, i32 0
  %insertElmt41 = insertelement <4 x i32> %insertElmt40, i32 %21, i32 1
  %insertElmt42 = insertelement <4 x i32> %insertElmt41, i32 %21, i32 2
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %21, i32 3
  store <4 x i32> %insertElmt43, <4 x i32>* %allocaVec22, align 16
  %22 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop44 = and <4 x i32> %22, <i32 3840, i32 3840, i32 3840, i32 3840>
  %23 = and i32 %21, 3840
  %Vop45 = lshr <4 x i32> %Vop44, <i32 8, i32 8, i32 8, i32 8>
  %24 = lshr i32 %23, 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %CastInst3
  %28 = load i32, i32* %CastInst3, align 4
  %insertCast46 = insertelement <4 x i32> undef, i32 %28, i32 0
  %insertCast47 = insertelement <4 x i32> %insertCast46, i32 %28, i32 1
  %insertCast48 = insertelement <4 x i32> %insertCast47, i32 %28, i32 2
  %insertCast49 = insertelement <4 x i32> %insertCast48, i32 %28, i32 3
  store <4 x i32> %insertCast49, <4 x i32>* %CastInstVec4, align 4
  %29 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop50 = add <4 x i32> %Vop39, %29
  %30 = add nsw i32 %20, %27
  %31 = load i32, i32* %2, align 4
  %insertElmt51 = insertelement <4 x i32> undef, i32 %31, i32 0
  %insertElmt52 = insertelement <4 x i32> %insertElmt51, i32 %31, i32 1
  %insertElmt53 = insertelement <4 x i32> %insertElmt52, i32 %31, i32 2
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %31, i32 3
  store <4 x i32> %insertElmt54, <4 x i32>* %allocaVec22, align 16
  %32 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop55 = and <4 x i32> %32, <i32 61440, i32 61440, i32 61440, i32 61440>
  %33 = and i32 %31, 61440
  %Vop56 = lshr <4 x i32> %Vop55, <i32 12, i32 12, i32 12, i32 12>
  %34 = lshr i32 %33, 12
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %CastInst5
  %38 = load i32, i32* %CastInst5, align 4
  %insertCast57 = insertelement <4 x i32> undef, i32 %38, i32 0
  %insertCast58 = insertelement <4 x i32> %insertCast57, i32 %38, i32 1
  %insertCast59 = insertelement <4 x i32> %insertCast58, i32 %38, i32 2
  %insertCast60 = insertelement <4 x i32> %insertCast59, i32 %38, i32 3
  store <4 x i32> %insertCast60, <4 x i32>* %CastInstVec6, align 4
  %39 = load <4 x i32>, <4 x i32>* %CastInstVec6, align 4
  %Vop61 = add <4 x i32> %Vop50, %39
  %40 = add nsw i32 %30, %37
  %41 = load i32, i32* %2, align 4
  %insertElmt62 = insertelement <4 x i32> undef, i32 %41, i32 0
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %41, i32 1
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %41, i32 2
  %insertElmt65 = insertelement <4 x i32> %insertElmt64, i32 %41, i32 3
  store <4 x i32> %insertElmt65, <4 x i32>* %allocaVec22, align 16
  %42 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop66 = and <4 x i32> %42, <i32 983040, i32 983040, i32 983040, i32 983040>
  %43 = and i32 %41, 983040
  %Vop67 = lshr <4 x i32> %Vop66, <i32 16, i32 16, i32 16, i32 16>
  %44 = lshr i32 %43, 16
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %CastInst7
  %48 = load i32, i32* %CastInst7, align 4
  %insertCast68 = insertelement <4 x i32> undef, i32 %48, i32 0
  %insertCast69 = insertelement <4 x i32> %insertCast68, i32 %48, i32 1
  %insertCast70 = insertelement <4 x i32> %insertCast69, i32 %48, i32 2
  %insertCast71 = insertelement <4 x i32> %insertCast70, i32 %48, i32 3
  store <4 x i32> %insertCast71, <4 x i32>* %CastInstVec8, align 4
  %49 = load <4 x i32>, <4 x i32>* %CastInstVec8, align 4
  %Vop72 = add <4 x i32> %Vop61, %49
  %50 = add nsw i32 %40, %47
  %51 = load i32, i32* %2, align 4
  %insertElmt73 = insertelement <4 x i32> undef, i32 %51, i32 0
  %insertElmt74 = insertelement <4 x i32> %insertElmt73, i32 %51, i32 1
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %51, i32 2
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %51, i32 3
  store <4 x i32> %insertElmt76, <4 x i32>* %allocaVec22, align 16
  %52 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop77 = and <4 x i32> %52, <i32 15728640, i32 15728640, i32 15728640, i32 15728640>
  %53 = and i32 %51, 15728640
  %Vop78 = lshr <4 x i32> %Vop77, <i32 20, i32 20, i32 20, i32 20>
  %54 = lshr i32 %53, 20
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %CastInst9
  %58 = load i32, i32* %CastInst9, align 4
  %insertCast79 = insertelement <4 x i32> undef, i32 %58, i32 0
  %insertCast80 = insertelement <4 x i32> %insertCast79, i32 %58, i32 1
  %insertCast81 = insertelement <4 x i32> %insertCast80, i32 %58, i32 2
  %insertCast82 = insertelement <4 x i32> %insertCast81, i32 %58, i32 3
  store <4 x i32> %insertCast82, <4 x i32>* %CastInstVec10, align 4
  %59 = load <4 x i32>, <4 x i32>* %CastInstVec10, align 4
  %Vop83 = add <4 x i32> %Vop72, %59
  %60 = add nsw i32 %50, %57
  %61 = load i32, i32* %2, align 4
  %insertElmt84 = insertelement <4 x i32> undef, i32 %61, i32 0
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %61, i32 1
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %61, i32 2
  %insertElmt87 = insertelement <4 x i32> %insertElmt86, i32 %61, i32 3
  store <4 x i32> %insertElmt87, <4 x i32>* %allocaVec22, align 16
  %62 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop88 = and <4 x i32> %62, <i32 251658240, i32 251658240, i32 251658240, i32 251658240>
  %63 = and i32 %61, 251658240
  %Vop89 = lshr <4 x i32> %Vop88, <i32 24, i32 24, i32 24, i32 24>
  %64 = lshr i32 %63, 24
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %CastInst11
  %68 = load i32, i32* %CastInst11, align 4
  %insertCast90 = insertelement <4 x i32> undef, i32 %68, i32 0
  %insertCast91 = insertelement <4 x i32> %insertCast90, i32 %68, i32 1
  %insertCast92 = insertelement <4 x i32> %insertCast91, i32 %68, i32 2
  %insertCast93 = insertelement <4 x i32> %insertCast92, i32 %68, i32 3
  store <4 x i32> %insertCast93, <4 x i32>* %CastInstVec12, align 4
  %69 = load <4 x i32>, <4 x i32>* %CastInstVec12, align 4
  %Vop94 = add <4 x i32> %Vop83, %69
  %70 = add nsw i32 %60, %67
  %71 = load i32, i32* %2, align 4
  %insertElmt95 = insertelement <4 x i32> undef, i32 %71, i32 0
  %insertElmt96 = insertelement <4 x i32> %insertElmt95, i32 %71, i32 1
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %71, i32 2
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %71, i32 3
  store <4 x i32> %insertElmt98, <4 x i32>* %allocaVec22, align 16
  %72 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop99 = and <4 x i32> %72, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
  %73 = and i32 %71, -268435456
  %Vop100 = lshr <4 x i32> %Vop99, <i32 28, i32 28, i32 28, i32 28>
  %74 = lshr i32 %73, 28
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  store i32 %77, i32* %CastInst13
  %78 = load i32, i32* %CastInst13, align 4
  %insertCast101 = insertelement <4 x i32> undef, i32 %78, i32 0
  %insertCast102 = insertelement <4 x i32> %insertCast101, i32 %78, i32 1
  %insertCast103 = insertelement <4 x i32> %insertCast102, i32 %78, i32 2
  %insertCast104 = insertelement <4 x i32> %insertCast103, i32 %78, i32 3
  store <4 x i32> %insertCast104, <4 x i32>* %CastInstVec14, align 4
  %79 = load <4 x i32>, <4 x i32>* %CastInstVec14, align 4
  %Vop105 = add <4 x i32> %Vop94, %79
  %80 = add nsw i32 %70, %77
  ret i32 %80
}

; Function Attrs: nounwind
define arm_aapcscc i32 @BW_btbl_bitcount(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec7 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %allocaVec8 = alloca <4 x i32>, align 16
  %CastInst3 = alloca i32, align 4
  %CastInstVec4 = alloca <4 x i32>, align 16
  %allocaVec9 = alloca <4 x i32>, align 16
  %CastInst5 = alloca i32, align 4
  %CastInstVec6 = alloca <4 x i32>, align 16
  %allocaVec10 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.anon* %3 to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %union.anon* %3 to [4 x i8]*
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = bitcast %union.anon* %3 to [4 x i8]*
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %12, i32* %CastInst
  %20 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %20, i32 0
  %insertCast11 = insertelement <4 x i32> %insertCast, i32 %20, i32 1
  %insertCast12 = insertelement <4 x i32> %insertCast11, i32 %20, i32 2
  %insertCast13 = insertelement <4 x i32> %insertCast12, i32 %20, i32 3
  store <4 x i32> %insertCast13, <4 x i32>* %CastInstVec, align 4
  %21 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  store i32 %19, i32* %CastInst1
  %22 = load i32, i32* %CastInst1, align 4
  %insertCast14 = insertelement <4 x i32> undef, i32 %22, i32 0
  %insertCast15 = insertelement <4 x i32> %insertCast14, i32 %22, i32 1
  %insertCast16 = insertelement <4 x i32> %insertCast15, i32 %22, i32 2
  %insertCast17 = insertelement <4 x i32> %insertCast16, i32 %22, i32 3
  store <4 x i32> %insertCast17, <4 x i32>* %CastInstVec2, align 4
  %23 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %Vop = add <4 x i32> %21, %23
  %24 = add nsw i32 %12, %19
  %25 = bitcast %union.anon* %3 to [4 x i8]*
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i32 0, i32 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %CastInst3
  %32 = load i32, i32* %CastInst3, align 4
  %insertCast18 = insertelement <4 x i32> undef, i32 %32, i32 0
  %insertCast19 = insertelement <4 x i32> %insertCast18, i32 %32, i32 1
  %insertCast20 = insertelement <4 x i32> %insertCast19, i32 %32, i32 2
  %insertCast21 = insertelement <4 x i32> %insertCast20, i32 %32, i32 3
  store <4 x i32> %insertCast21, <4 x i32>* %CastInstVec4, align 4
  %33 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop22 = add <4 x i32> %Vop, %33
  %34 = add nsw i32 %24, %31
  %35 = bitcast %union.anon* %3 to [4 x i8]*
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %CastInst5
  %42 = load i32, i32* %CastInst5, align 4
  %insertCast23 = insertelement <4 x i32> undef, i32 %42, i32 0
  %insertCast24 = insertelement <4 x i32> %insertCast23, i32 %42, i32 1
  %insertCast25 = insertelement <4 x i32> %insertCast24, i32 %42, i32 2
  %insertCast26 = insertelement <4 x i32> %insertCast25, i32 %42, i32 3
  store <4 x i32> %insertCast26, <4 x i32>* %CastInstVec6, align 4
  %43 = load <4 x i32>, <4 x i32>* %CastInstVec6, align 4
  %Vop27 = add <4 x i32> %Vop22, %43
  %44 = add nsw i32 %34, %41
  ret i32 %44
}

; Function Attrs: nounwind
define arm_aapcscc i32 @AR_btbl_bitcount(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec6 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %allocaVec7 = alloca <4 x i32>, align 16
  %CastInst3 = alloca i32, align 4
  %CastInstVec4 = alloca <4 x i32>, align 16
  %allocaVec8 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast i32* %2 to i8*
  store i8* %5, i8** %3, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 4
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 4
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 4
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %20, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt, i32 %20, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %20, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %20, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec9, align 16
  %21 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  store i32 %19, i32* %CastInst
  %22 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %22, i32 0
  %insertCast13 = insertelement <4 x i32> %insertCast, i32 %22, i32 1
  %insertCast14 = insertelement <4 x i32> %insertCast13, i32 %22, i32 2
  %insertCast15 = insertelement <4 x i32> %insertCast14, i32 %22, i32 3
  store <4 x i32> %insertCast15, <4 x i32>* %CastInstVec, align 4
  %23 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = add <4 x i32> %21, %23
  store <4 x i32> %Vop, <4 x i32>* %allocaVec9
  %24 = add nsw i32 %20, %19
  store i32 %24, i32* %4, align 4
  %25 = load i8*, i8** %3, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 4
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  store i32 %31, i32* %CastInst1
  %34 = load i32, i32* %CastInst1, align 4
  %insertCast16 = insertelement <4 x i32> undef, i32 %34, i32 0
  %insertCast17 = insertelement <4 x i32> %insertCast16, i32 %34, i32 1
  %insertCast18 = insertelement <4 x i32> %insertCast17, i32 %34, i32 2
  %insertCast19 = insertelement <4 x i32> %insertCast18, i32 %34, i32 3
  store <4 x i32> %insertCast19, <4 x i32>* %CastInstVec2, align 4
  %35 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %Vop20 = add <4 x i32> %33, %35
  store <4 x i32> %Vop20, <4 x i32>* %allocaVec9
  %36 = add nsw i32 %32, %31
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** %3, align 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  store i32 %42, i32* %CastInst3
  %45 = load i32, i32* %CastInst3, align 4
  %insertCast21 = insertelement <4 x i32> undef, i32 %45, i32 0
  %insertCast22 = insertelement <4 x i32> %insertCast21, i32 %45, i32 1
  %insertCast23 = insertelement <4 x i32> %insertCast22, i32 %45, i32 2
  %insertCast24 = insertelement <4 x i32> %insertCast23, i32 %45, i32 3
  store <4 x i32> %insertCast24, <4 x i32>* %CastInstVec4, align 4
  %46 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop25 = add <4 x i32> %44, %46
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec9
  %47 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE = extractelement <4 x i32> %47, i64 0
  %extractE26 = extractelement <4 x i32> %47, i64 1
  %extractE27 = extractelement <4 x i32> %47, i64 2
  %sum = add i32 %extractE, %extractE26
  %sum28 = add i32 %sum, %extractE27
  %48 = add nsw i32 %43, %42
  %Fmul = mul i32 %48, 3
  store i32 %48, i32* %Recovery
  %Fcmp = icmp ne i32 %sum28, %Fmul
  br i1 %Fcmp, label %49, label %53

; <label>:49:                                     ; preds = %1
  %remThree = sdiv i32 %sum28, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %50, label %51

; <label>:50:                                     ; preds = %49
  store i32 %48, i32* %Recovery, align 4
  br label %52

; <label>:51:                                     ; preds = %49
  store i32 %extractE, i32* %Recovery, align 4
  br label %52

; <label>:52:                                     ; preds = %51, %50
  br label %53

; <label>:53:                                     ; preds = %1, %52
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcnt(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %4, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %4, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %4, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %4, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec4, align 16
  %5 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop = and <4 x i32> %5, <i32 15, i32 15, i32 15, i32 15>
  %6 = and i32 %4, 15
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i32 0, i32 %6
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %10, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %10, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %10, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %11 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = ashr <4 x i32> %11, <i32 4, i32 4, i32 4, i32 4>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %12 = load <4 x i32>, <4 x i32>* %allocaVec4, align 4
  %extractE = extractelement <4 x i32> %12, i64 0
  %extractE14 = extractelement <4 x i32> %12, i64 1
  %extractE15 = extractelement <4 x i32> %12, i64 2
  %sum = add i32 %extractE, %extractE14
  %sum16 = add i32 %sum, %extractE15
  %13 = ashr i32 %10, 4
  %Fmul = mul i32 %13, 3
  store i32 %13, i32* %Recovery
  %Fcmp = icmp ne i32 %sum16, %Fmul
  br i1 %Fcmp, label %14, label %18

; <label>:14:                                     ; preds = %1
  %remThree = sdiv i32 %sum16, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %15, label %16

; <label>:15:                                     ; preds = %14
  store i32 %13, i32* %Recovery, align 4
  br label %17

; <label>:16:                                     ; preds = %14
  store i32 %extractE, i32* %Recovery, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %15
  br label %18

; <label>:18:                                     ; preds = %1, %17
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %2, align 4
  %19 = icmp ne i32 0, %13
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %18
  %21 = load i32, i32* %2, align 4
  %22 = call arm_aapcscc i32 @ntbl_bitcnt(i32 %21)
  %23 = load i32, i32* %3, align 4
  %insertElmt17 = insertelement <4 x i32> undef, i32 %23, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %23, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %23, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %23, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec5, align 16
  %24 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  store i32 %22, i32* %CallInst
  %25 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %25, i32 0
  %insertCall21 = insertelement <4 x i32> %insertCall, i32 %25, i32 1
  %insertCall22 = insertelement <4 x i32> %insertCall21, i32 %25, i32 2
  %insertCall23 = insertelement <4 x i32> %insertCall22, i32 %25, i32 3
  store <4 x i32> %insertCall23, <4 x i32>* %CallInstVec, align 4
  %26 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop24 = add <4 x i32> %24, %26
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec5
  %27 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE26 = extractelement <4 x i32> %27, i64 0
  %extractE27 = extractelement <4 x i32> %27, i64 1
  %extractE28 = extractelement <4 x i32> %27, i64 2
  %sum29 = add i32 %extractE26, %extractE27
  %sum30 = add i32 %sum29, %extractE28
  %28 = add nsw i32 %23, %22
  %Fmul25 = mul i32 %28, 3
  store i32 %28, i32* %Recovery1
  %Fcmp31 = icmp ne i32 %sum30, %Fmul25
  br i1 %Fcmp31, label %29, label %33

; <label>:29:                                     ; preds = %20
  %remThree32 = sdiv i32 %sum30, %extractE26
  %FcmpThree33 = icmp ne i32 %remThree32, 3
  br i1 %FcmpThree33, label %30, label %31

; <label>:30:                                     ; preds = %29
  store i32 %28, i32* %Recovery1, align 4
  br label %32

; <label>:31:                                     ; preds = %29
  store i32 %extractE26, i32* %Recovery1, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %30
  br label %33

; <label>:33:                                     ; preds = %20, %32
  %ReplaceInst34 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst34, i32* %3, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind
define arm_aapcscc i32 @btbl_bitcnt(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec5 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = zext i8 %6 to i32
  store i32 %7, i32* %CastInst
  %8 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %8, i32 0
  %insertCast7 = insertelement <4 x i32> %insertCast, i32 %8, i32 1
  %insertCast8 = insertelement <4 x i32> %insertCast7, i32 %8, i32 2
  %insertCast9 = insertelement <4 x i32> %insertCast8, i32 %8, i32 3
  store <4 x i32> %insertCast9, <4 x i32>* %CastInstVec, align 4
  %9 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = and <4 x i32> %9, <i32 255, i32 255, i32 255, i32 255>
  %10 = and i32 %7, 255
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i32 0, i32 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %14, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt, i32 %14, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %14, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %14, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec5, align 16
  %15 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop13 = ashr <4 x i32> %15, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec5
  %16 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %16, i64 0
  %extractE14 = extractelement <4 x i32> %16, i64 1
  %extractE15 = extractelement <4 x i32> %16, i64 2
  %sum = add i32 %extractE, %extractE14
  %sum16 = add i32 %sum, %extractE15
  %17 = ashr i32 %14, 8
  %Fmul = mul i32 %17, 3
  store i32 %17, i32* %Recovery
  %Fcmp = icmp ne i32 %sum16, %Fmul
  br i1 %Fcmp, label %18, label %22

; <label>:18:                                     ; preds = %1
  %remThree = sdiv i32 %sum16, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %19, label %20

; <label>:19:                                     ; preds = %18
  store i32 %17, i32* %Recovery, align 4
  br label %21

; <label>:20:                                     ; preds = %18
  store i32 %extractE, i32* %Recovery, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %19
  br label %22

; <label>:22:                                     ; preds = %1, %21
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %2, align 4
  %23 = icmp ne i32 0, %17
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %22
  %25 = load i32, i32* %2, align 4
  %26 = call arm_aapcscc i32 @btbl_bitcnt(i32 %25)
  %27 = load i32, i32* %3, align 4
  %insertElmt17 = insertelement <4 x i32> undef, i32 %27, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %27, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %27, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %27, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec6, align 16
  %28 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  store i32 %26, i32* %CallInst
  %29 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %29, i32 0
  %insertCall21 = insertelement <4 x i32> %insertCall, i32 %29, i32 1
  %insertCall22 = insertelement <4 x i32> %insertCall21, i32 %29, i32 2
  %insertCall23 = insertelement <4 x i32> %insertCall22, i32 %29, i32 3
  store <4 x i32> %insertCall23, <4 x i32>* %CallInstVec, align 4
  %30 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop24 = add <4 x i32> %28, %30
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec6
  %31 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE26 = extractelement <4 x i32> %31, i64 0
  %extractE27 = extractelement <4 x i32> %31, i64 1
  %extractE28 = extractelement <4 x i32> %31, i64 2
  %sum29 = add i32 %extractE26, %extractE27
  %sum30 = add i32 %sum29, %extractE28
  %32 = add nsw i32 %27, %26
  %Fmul25 = mul i32 %32, 3
  store i32 %32, i32* %Recovery1
  %Fcmp31 = icmp ne i32 %sum30, %Fmul25
  br i1 %Fcmp31, label %33, label %37

; <label>:33:                                     ; preds = %24
  %remThree32 = sdiv i32 %sum30, %extractE26
  %FcmpThree33 = icmp ne i32 %remThree32, 3
  br i1 %FcmpThree33, label %34, label %35

; <label>:34:                                     ; preds = %33
  store i32 %32, i32* %Recovery1, align 4
  br label %36

; <label>:35:                                     ; preds = %33
  store i32 %extractE26, i32* %Recovery1, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %34
  br label %37

; <label>:37:                                     ; preds = %24, %36
  %ReplaceInst34 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst34, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec7 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 8
  %allocaVec8 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec9 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec10 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec11 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec15 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec16 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec17 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %allocaVec18 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec19 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec20 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec21 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec22 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec24 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF>, <2 x double>* %allocaVec16
  store double 0x7FEFFFFFFFFFFFFF, double* %9, align 8
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec17
  store double 0.000000e+00, double* %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %22 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #3
  unreachable

; <label>:23:                                     ; preds = %2
  %24 = load i8**, i8*** %5, align 4
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  %26 = load i8*, i8** %25, align 4
  %27 = call arm_aapcscc i32 @atoi(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = call arm_aapcscc i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec18
  store i32 0, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %121, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %122

; <label>:32:                                     ; preds = %29
  %33 = call arm_aapcscc i32 @clock()
  store i32 %33, i32* %6, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec22
  store i32 0, i32* %15, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec21
  store i32 0, i32* %14, align 4
  %34 = call arm_aapcscc i32 @rand()
  store i32 %34, i32* %16, align 4
  br label %35

; <label>:35:                                     ; preds = %74, %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %75

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds [7 x i32 (i32)*], [7 x i32 (i32)*]* @main.pBitCntFunc, i32 0, i32 %40
  %42 = load i32 (i32)*, i32 (i32)** %41, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call arm_aapcscc i32 %42(i32 %43)
  %45 = load i32, i32* %15, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %45, i32 0
  %insertElmt25 = insertelement <4 x i32> %insertElmt, i32 %45, i32 1
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %45, i32 2
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %45, i32 3
  store <4 x i32> %insertElmt27, <4 x i32>* %allocaVec22, align 16
  %46 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  store i32 %44, i32* %CallInst
  %47 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %47, i32 0
  %insertCall28 = insertelement <4 x i32> %insertCall, i32 %47, i32 1
  %insertCall29 = insertelement <4 x i32> %insertCall28, i32 %47, i32 2
  %insertCall30 = insertelement <4 x i32> %insertCall29, i32 %47, i32 3
  store <4 x i32> %insertCall30, <4 x i32>* %CallInstVec, align 4
  %48 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop = add <4 x i32> %46, %48
  store <4 x i32> %Vop, <4 x i32>* %allocaVec22
  %49 = load <4 x i32>, <4 x i32>* %allocaVec22, align 4
  %extractE = extractelement <4 x i32> %49, i64 0
  %extractE31 = extractelement <4 x i32> %49, i64 1
  %extractE32 = extractelement <4 x i32> %49, i64 2
  %sum = add i32 %extractE, %extractE31
  %sum33 = add i32 %sum, %extractE32
  %50 = add nsw i32 %45, %44
  %Fmul = mul i32 %50, 3
  store i32 %50, i32* %Recovery
  %Fcmp = icmp ne i32 %sum33, %Fmul
  br i1 %Fcmp, label %51, label %55

; <label>:51:                                     ; preds = %39
  %remThree = sdiv i32 %sum33, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %52, label %53

; <label>:52:                                     ; preds = %51
  store i32 %50, i32* %Recovery, align 4
  br label %54

; <label>:53:                                     ; preds = %51
  store i32 %extractE, i32* %Recovery, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %52
  br label %55

; <label>:55:                                     ; preds = %39, %54
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %15, align 4
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %14, align 4
  %insertElmt34 = insertelement <4 x i32> undef, i32 %57, i32 0
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %57, i32 1
  %insertElmt36 = insertelement <4 x i32> %insertElmt35, i32 %57, i32 2
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %57, i32 3
  store <4 x i32> %insertElmt37, <4 x i32>* %allocaVec21, align 16
  %58 = load <4 x i32>, <4 x i32>* %allocaVec21, align 16
  %Vop38 = add <4 x i32> %58, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec21
  %59 = load <4 x i32>, <4 x i32>* %allocaVec21, align 4
  %extractE40 = extractelement <4 x i32> %59, i64 0
  %extractE41 = extractelement <4 x i32> %59, i64 1
  %extractE42 = extractelement <4 x i32> %59, i64 2
  %sum43 = add i32 %extractE40, %extractE41
  %sum44 = add i32 %sum43, %extractE42
  %60 = add nsw i32 %57, 1
  %Fmul39 = mul i32 %60, 3
  store i32 %60, i32* %Recovery1
  %Fcmp45 = icmp ne i32 %sum44, %Fmul39
  br i1 %Fcmp45, label %61, label %65

; <label>:61:                                     ; preds = %56
  %remThree87 = sdiv i32 %sum44, %extractE40
  %FcmpThree88 = icmp ne i32 %remThree87, 3
  br i1 %FcmpThree88, label %62, label %63

; <label>:62:                                     ; preds = %61
  store i32 %60, i32* %Recovery1, align 4
  br label %64

; <label>:63:                                     ; preds = %61
  store i32 %extractE40, i32* %Recovery1, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %62
  br label %65

; <label>:65:                                     ; preds = %56, %64
  %ReplaceInst95 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst95, i32* %14, align 4
  %66 = load i32, i32* %16, align 4
  %insertElmt46 = insertelement <4 x i32> undef, i32 %66, i32 0
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %66, i32 1
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %66, i32 2
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %66, i32 3
  store <4 x i32> %insertElmt49, <4 x i32>* %allocaVec23, align 16
  %67 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop50 = add <4 x i32> %67, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %Vop50, <4 x i32>* %allocaVec23
  %68 = load <4 x i32>, <4 x i32>* %allocaVec23, align 4
  %extractE52 = extractelement <4 x i32> %68, i64 0
  %extractE53 = extractelement <4 x i32> %68, i64 1
  %extractE54 = extractelement <4 x i32> %68, i64 2
  %sum55 = add i32 %extractE52, %extractE53
  %sum56 = add i32 %sum55, %extractE54
  %69 = add nsw i32 %66, 13
  %Fmul51 = mul i32 %69, 3
  store i32 %69, i32* %Recovery2
  %Fcmp57 = icmp ne i32 %sum56, %Fmul51
  br i1 %Fcmp57, label %70, label %74

; <label>:70:                                     ; preds = %65
  %remThree89 = sdiv i32 %sum56, %extractE52
  %FcmpThree90 = icmp ne i32 %remThree89, 3
  br i1 %FcmpThree90, label %71, label %72

; <label>:71:                                     ; preds = %70
  store i32 %69, i32* %Recovery2, align 4
  br label %73

; <label>:72:                                     ; preds = %70
  store i32 %extractE52, i32* %Recovery2, align 4
  br label %73

; <label>:73:                                     ; preds = %72, %71
  br label %74

; <label>:74:                                     ; preds = %65, %73
  %ReplaceInst96 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst96, i32* %16, align 4
  br label %35

; <label>:75:                                     ; preds = %35
  %76 = call arm_aapcscc i32 @clock()
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %insertElmt58 = insertelement <4 x i32> undef, i32 %77, i32 0
  %insertElmt59 = insertelement <4 x i32> %insertElmt58, i32 %77, i32 1
  %insertElmt60 = insertelement <4 x i32> %insertElmt59, i32 %77, i32 2
  %insertElmt61 = insertelement <4 x i32> %insertElmt60, i32 %77, i32 3
  store <4 x i32> %insertElmt61, <4 x i32>* %allocaVec14, align 16
  %78 = load i32, i32* %6, align 4
  %insertElmt62 = insertelement <4 x i32> undef, i32 %78, i32 0
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %78, i32 1
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %78, i32 2
  %insertElmt65 = insertelement <4 x i32> %insertElmt64, i32 %78, i32 3
  store <4 x i32> %insertElmt65, <4 x i32>* %allocaVec13, align 16
  %79 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %80 = load <4 x i32>, <4 x i32>* %allocaVec13, align 16
  %Vop66 = sub <4 x i32> %79, %80
  %81 = sub nsw i32 %77, %78
  %82 = sitofp i32 %81 to double
  store double %82, double* %CastInst
  %83 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %83, i32 0
  %insertCast67 = insertelement <2 x double> %insertCast, double %83, i32 1
  store <2 x double> %insertCast67, <2 x double>* %CastInstVec, align 4
  %84 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop68 = fdiv <2 x double> %84, <double 1.000000e+06, double 1.000000e+06>
  store <2 x double> %Vop68, <2 x double>* %allocaVec15
  %85 = load <2 x double>, <2 x double>* %allocaVec15, align 4
  %extractE70 = extractelement <2 x double> %85, i64 0
  %extractE71 = extractelement <2 x double> %85, i64 1
  %sum72 = fadd double %extractE70, %extractE71
  %sum73 = fadd double %sum72, %extractE71
  %86 = fdiv double %82, 1.000000e+06
  %Fmul69 = fmul double %86, 3.000000e+00
  store double %86, double* %Recovery3
  %Fcmp74 = fcmp une double %sum73, %Fmul69
  br i1 %Fcmp74, label %87, label %91

; <label>:87:                                     ; preds = %75
  %remThree91 = fdiv double %sum73, %extractE70
  %FcmpThree92 = fcmp une double %remThree91, 3.000000e+00
  br i1 %FcmpThree92, label %88, label %89

; <label>:88:                                     ; preds = %87
  store double %86, double* %Recovery3, align 8
  br label %90

; <label>:89:                                     ; preds = %87
  store double %extractE70, double* %Recovery3, align 8
  br label %90

; <label>:90:                                     ; preds = %89, %88
  br label %91

; <label>:91:                                     ; preds = %75, %90
  %ReplaceInst97 = load double, double* %Recovery3, align 8
  store double %ReplaceInst97, double* %8, align 8
  %92 = load double, double* %8, align 8
  %93 = load double, double* %9, align 8
  %94 = fcmp olt double %92, %93
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %91
  %96 = load double, double* %8, align 8
  store double %96, double* %9, align 8
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %12, align 4
  br label %98

; <label>:98:                                     ; preds = %95, %91
  %99 = load double, double* %8, align 8
  %100 = load double, double* %10, align 8
  %101 = fcmp ogt double %99, %100
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %98
  %103 = load double, double* %8, align 8
  store double %103, double* %10, align 8
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %13, align 4
  br label %105

; <label>:105:                                    ; preds = %102, %98
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %106
  %108 = load i8*, i8** %107, align 4
  %109 = load double, double* %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %108, double %109, i32 %110)
  br label %112

; <label>:112:                                    ; preds = %105
  %113 = load i32, i32* %11, align 4
  %insertElmt75 = insertelement <4 x i32> undef, i32 %113, i32 0
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %113, i32 1
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %113, i32 2
  %insertElmt78 = insertelement <4 x i32> %insertElmt77, i32 %113, i32 3
  store <4 x i32> %insertElmt78, <4 x i32>* %allocaVec18, align 16
  %114 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop79 = add <4 x i32> %114, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop79, <4 x i32>* %allocaVec18
  %115 = load <4 x i32>, <4 x i32>* %allocaVec18, align 4
  %extractE81 = extractelement <4 x i32> %115, i64 0
  %extractE82 = extractelement <4 x i32> %115, i64 1
  %extractE83 = extractelement <4 x i32> %115, i64 2
  %sum84 = add i32 %extractE81, %extractE82
  %sum85 = add i32 %sum84, %extractE83
  %116 = add nsw i32 %113, 1
  %Fmul80 = mul i32 %116, 3
  store i32 %116, i32* %Recovery4
  %Fcmp86 = icmp ne i32 %sum85, %Fmul80
  br i1 %Fcmp86, label %117, label %121

; <label>:117:                                    ; preds = %112
  %remThree93 = sdiv i32 %sum85, %extractE81
  %FcmpThree94 = icmp ne i32 %remThree93, 3
  br i1 %FcmpThree94, label %118, label %119

; <label>:118:                                    ; preds = %117
  store i32 %116, i32* %Recovery4, align 4
  br label %120

; <label>:119:                                    ; preds = %117
  store i32 %extractE81, i32* %Recovery4, align 4
  br label %120

; <label>:120:                                    ; preds = %119, %118
  br label %121

; <label>:121:                                    ; preds = %112, %120
  %ReplaceInst98 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst98, i32* %11, align 4
  br label %29

; <label>:122:                                    ; preds = %29
  %123 = load i32, i32* %12, align 4
  %124 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %123
  %125 = load i8*, i8** %124, align 4
  %126 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %125)
  %127 = load i32, i32* %13, align 4
  %128 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %127
  %129 = load i8*, i8** %128, align 4
  %130 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %129)
  ret i32 0
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @atoi(i8*) #1

declare arm_aapcscc i32 @puts(i8*) #1

declare arm_aapcscc i32 @clock() #1

declare arm_aapcscc i32 @rand() #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define internal arm_aapcscc i32 @bit_shifter(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %44, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 32
  br label %11

; <label>:11:                                     ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %45

; <label>:13:                                     ; preds = %11
  %14 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %14, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt, i32 %14, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %14, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %14, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec5, align 16
  %15 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop = and <4 x i32> %15, <i32 1, i32 1, i32 1, i32 1>
  %16 = and i32 %14, 1
  %17 = load i32, i32* %4, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %17, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %17, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %17, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %17, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec7, align 16
  %18 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop15 = add <4 x i32> %18, %Vop
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec7
  %19 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %19, i64 0
  %extractE16 = extractelement <4 x i32> %19, i64 1
  %extractE17 = extractelement <4 x i32> %19, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %20 = add nsw i32 %17, %16
  %Fmul = mul i32 %20, 3
  store i32 %20, i32* %Recovery
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %21, label %25

; <label>:21:                                     ; preds = %13
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %22, label %23

; <label>:22:                                     ; preds = %21
  store i32 %20, i32* %Recovery, align 4
  br label %24

; <label>:23:                                     ; preds = %21
  store i32 %extractE, i32* %Recovery, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %22
  br label %25

; <label>:25:                                     ; preds = %13, %24
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %3, align 4
  %insertElmt19 = insertelement <4 x i32> undef, i32 %27, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %27, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %27, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %27, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec6, align 16
  %28 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop23 = add <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop23, <4 x i32>* %allocaVec6
  %29 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE25 = extractelement <4 x i32> %29, i64 0
  %extractE26 = extractelement <4 x i32> %29, i64 1
  %extractE27 = extractelement <4 x i32> %29, i64 2
  %sum28 = add i32 %extractE25, %extractE26
  %sum29 = add i32 %sum28, %extractE27
  %30 = add nsw i32 %27, 1
  %Fmul24 = mul i32 %30, 3
  store i32 %30, i32* %Recovery1
  %Fcmp30 = icmp ne i32 %sum29, %Fmul24
  br i1 %Fcmp30, label %31, label %35

; <label>:31:                                     ; preds = %26
  %remThree43 = sdiv i32 %sum29, %extractE25
  %FcmpThree44 = icmp ne i32 %remThree43, 3
  br i1 %FcmpThree44, label %32, label %33

; <label>:32:                                     ; preds = %31
  store i32 %30, i32* %Recovery1, align 4
  br label %34

; <label>:33:                                     ; preds = %31
  store i32 %extractE25, i32* %Recovery1, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %32
  br label %35

; <label>:35:                                     ; preds = %26, %34
  %ReplaceInst47 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst47, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %insertElmt31 = insertelement <4 x i32> undef, i32 %36, i32 0
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %36, i32 1
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %36, i32 2
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %36, i32 3
  store <4 x i32> %insertElmt34, <4 x i32>* %allocaVec5, align 16
  %37 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop35 = ashr <4 x i32> %37, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop35, <4 x i32>* %allocaVec5
  %38 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE37 = extractelement <4 x i32> %38, i64 0
  %extractE38 = extractelement <4 x i32> %38, i64 1
  %extractE39 = extractelement <4 x i32> %38, i64 2
  %sum40 = add i32 %extractE37, %extractE38
  %sum41 = add i32 %sum40, %extractE39
  %39 = ashr i32 %36, 1
  %Fmul36 = mul i32 %39, 3
  store i32 %39, i32* %Recovery2
  %Fcmp42 = icmp ne i32 %sum41, %Fmul36
  br i1 %Fcmp42, label %40, label %44

; <label>:40:                                     ; preds = %35
  %remThree45 = sdiv i32 %sum41, %extractE37
  %FcmpThree46 = icmp ne i32 %remThree45, 3
  br i1 %FcmpThree46, label %41, label %42

; <label>:41:                                     ; preds = %40
  store i32 %39, i32* %Recovery2, align 4
  br label %43

; <label>:42:                                     ; preds = %40
  store i32 %extractE37, i32* %Recovery2, align 4
  br label %43

; <label>:43:                                     ; preds = %42, %41
  br label %44

; <label>:44:                                     ; preds = %35, %43
  %ReplaceInst48 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst48, i32* %2, align 4
  br label %5

; <label>:45:                                     ; preds = %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: nounwind
define arm_aapcscc %struct.bfile* @bfopen(i8*, i8*) #0 {
  %3 = alloca %struct.bfile*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca %struct.bfile*, align 4
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  %7 = call arm_aapcscc i8* @malloc(i32 8)
  %8 = bitcast i8* %7 to %struct.bfile*
  store %struct.bfile* %8, %struct.bfile** %6, align 4
  %9 = load %struct.bfile*, %struct.bfile** %6, align 4
  %10 = icmp eq %struct.bfile* null, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store %struct.bfile* null, %struct.bfile** %3, align 4
  br label %31

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 4
  %14 = load i8*, i8** %5, align 4
  %15 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %13, i8* %14)
  %16 = load %struct.bfile*, %struct.bfile** %6, align 4
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 0
  store %struct._IO_FILE* %15, %struct._IO_FILE** %17, align 4
  %18 = load %struct.bfile*, %struct.bfile** %6, align 4
  %19 = getelementptr inbounds %struct.bfile, %struct.bfile* %18, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 4
  %21 = icmp eq %struct._IO_FILE* null, %20
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %12
  %23 = load %struct.bfile*, %struct.bfile** %6, align 4
  %24 = bitcast %struct.bfile* %23 to i8*
  call arm_aapcscc void @free(i8* %24)
  store %struct.bfile* null, %struct.bfile** %3, align 4
  br label %31

; <label>:25:                                     ; preds = %12
  %26 = load %struct.bfile*, %struct.bfile** %6, align 4
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 2
  store i8 0, i8* %27, align 1
  %28 = load %struct.bfile*, %struct.bfile** %6, align 4
  %29 = getelementptr inbounds %struct.bfile, %struct.bfile* %28, i32 0, i32 4
  store i8 0, i8* %29, align 1
  %30 = load %struct.bfile*, %struct.bfile** %6, align 4
  store %struct.bfile* %30, %struct.bfile** %3, align 4
  br label %31

; <label>:31:                                     ; preds = %25, %22, %11
  %32 = load %struct.bfile*, %struct.bfile** %3, align 4
  ret %struct.bfile* %32
}

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc void @free(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @bfread(%struct.bfile*) #0 {
  %allocaVec = alloca <4 x i8>, align 16
  %Recovery = alloca i8, align 1
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %2 = alloca %struct.bfile*, align 4
  store %struct.bfile* %0, %struct.bfile** %2, align 4
  %3 = load %struct.bfile*, %struct.bfile** %2, align 4
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bfile*, %struct.bfile** %2, align 4
  %10 = getelementptr inbounds %struct.bfile, %struct.bfile* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 4
  %12 = call arm_aapcscc i32 @fgetc(%struct._IO_FILE* %11)
  %13 = trunc i32 %12 to i8
  %14 = load %struct.bfile*, %struct.bfile** %2, align 4
  %15 = getelementptr inbounds %struct.bfile, %struct.bfile* %14, i32 0, i32 1
  store i8 %13, i8* %15, align 4
  %16 = load %struct.bfile*, %struct.bfile** %2, align 4
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 2
  store i8 8, i8* %17, align 1
  br label %18

; <label>:18:                                     ; preds = %8, %1
  %19 = load %struct.bfile*, %struct.bfile** %2, align 4
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = add i8 %21, -1
  store i8 %22, i8* %20, align 1
  %23 = load %struct.bfile*, %struct.bfile** %2, align 4
  %24 = getelementptr inbounds %struct.bfile, %struct.bfile* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = load %struct.bfile*, %struct.bfile** %2, align 4
  %28 = getelementptr inbounds %struct.bfile, %struct.bfile* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare arm_aapcscc i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @bfwrite(i32, %struct.bfile*) #0 {
  %allocaVec = alloca <4 x i8>, align 16
  %Recovery = alloca i8, align 1
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %allocaVec5 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfile*, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bfile* %1, %struct.bfile** %4, align 4
  %5 = load %struct.bfile*, %struct.bfile** %4, align 4
  %6 = getelementptr inbounds %struct.bfile, %struct.bfile* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 8, %8
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %2
  %11 = load %struct.bfile*, %struct.bfile** %4, align 4
  %12 = getelementptr inbounds %struct.bfile, %struct.bfile* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 2
  %14 = zext i8 %13 to i32
  %15 = load %struct.bfile*, %struct.bfile** %4, align 4
  %16 = getelementptr inbounds %struct.bfile, %struct.bfile* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 4
  %18 = call arm_aapcscc i32 @fputc(i32 %14, %struct._IO_FILE* %17)
  %19 = load %struct.bfile*, %struct.bfile** %4, align 4
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 4
  store i8 0, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %10, %2
  %22 = load %struct.bfile*, %struct.bfile** %4, align 4
  %23 = getelementptr inbounds %struct.bfile, %struct.bfile* %22, i32 0, i32 4
  %24 = load i8, i8* %23, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* %23, align 1
  %26 = load %struct.bfile*, %struct.bfile** %4, align 4
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 2
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 1
  %34 = load %struct.bfile*, %struct.bfile** %4, align 4
  %35 = getelementptr inbounds %struct.bfile, %struct.bfile* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 2
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 2
  ret void
}

declare arm_aapcscc i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @bfclose(%struct.bfile*) #0 {
  %2 = alloca %struct.bfile*, align 4
  store %struct.bfile* %0, %struct.bfile** %2, align 4
  %3 = load %struct.bfile*, %struct.bfile** %2, align 4
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4
  %6 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %5)
  %7 = load %struct.bfile*, %struct.bfile** %2, align 4
  %8 = bitcast %struct.bfile* %7 to i8*
  call arm_aapcscc void @free(i8* %8)
  ret void
}

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @bitstring(i8*, i32, i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %11, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt, i32 %11, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %11, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %11, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec5, align 16
  %12 = load i32, i32* %7, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %12, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %12, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %12, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec4, align 16
  %13 = load i32, i32* %7, align 4
  %insertElmt15 = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %13, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %13, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %13, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec4, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop = ashr <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %15 = ashr i32 %13, 2
  %16 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop19 = add <4 x i32> %16, %Vop
  %17 = add nsw i32 %12, %15
  %18 = load i32, i32* %7, align 4
  %insertElmt20 = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %18, i32 1
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %18, i32 2
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %18, i32 3
  store <4 x i32> %insertElmt23, <4 x i32>* %allocaVec4, align 16
  %19 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %20 = srem i32 %18, 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i32 0, i32 1
  %23 = sub nsw i32 %17, %22
  %24 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  store <4 x i32> %Vop19, <4 x i32>* %allocaVec7
  %25 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %25, i64 0
  %extractE24 = extractelement <4 x i32> %25, i64 1
  %extractE25 = extractelement <4 x i32> %25, i64 2
  %sum = add i32 %extractE, %extractE24
  %sum26 = add i32 %sum, %extractE25
  %26 = sub nsw i32 %11, %23
  %Fmul = mul i32 %26, 3
  store i32 %26, i32* %Recovery
  %Fcmp = icmp ne i32 %sum26, %Fmul
  br i1 %Fcmp, label %27, label %31

; <label>:27:                                     ; preds = %4
  %remThree = sdiv i32 %sum26, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %28, label %29

; <label>:28:                                     ; preds = %27
  store i32 %26, i32* %Recovery, align 4
  br label %30

; <label>:29:                                     ; preds = %27
  store i32 %extractE, i32* %Recovery, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %31

; <label>:31:                                     ; preds = %4, %30
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %10, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %9, align 4
  br label %32

; <label>:32:                                     ; preds = %48, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %5, align 4
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 4
  store i8 32, i8* %37, align 1
  br label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %9, align 4
  %insertElmt27 = insertelement <4 x i32> undef, i32 %40, i32 0
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %40, i32 1
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %40, i32 2
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %40, i32 3
  store <4 x i32> %insertElmt30, <4 x i32>* %allocaVec6, align 16
  %41 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop31 = add <4 x i32> %41, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop31, <4 x i32>* %allocaVec6
  %42 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE33 = extractelement <4 x i32> %42, i64 0
  %extractE34 = extractelement <4 x i32> %42, i64 1
  %extractE35 = extractelement <4 x i32> %42, i64 2
  %sum36 = add i32 %extractE33, %extractE34
  %sum37 = add i32 %sum36, %extractE35
  %43 = add nsw i32 %40, 1
  %Fmul32 = mul i32 %43, 3
  store i32 %43, i32* %Recovery1
  %Fcmp38 = icmp ne i32 %sum37, %Fmul32
  br i1 %Fcmp38, label %44, label %48

; <label>:44:                                     ; preds = %39
  %remThree51 = sdiv i32 %sum37, %extractE33
  %FcmpThree52 = icmp ne i32 %remThree51, 3
  br i1 %FcmpThree52, label %45, label %46

; <label>:45:                                     ; preds = %44
  store i32 %43, i32* %Recovery1, align 4
  br label %47

; <label>:46:                                     ; preds = %44
  store i32 %extractE33, i32* %Recovery1, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %39, %47
  %ReplaceInst53 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst53, i32* %9, align 4
  br label %32

; <label>:49:                                     ; preds = %32
  br label %50

; <label>:50:                                     ; preds = %76, %49
  %51 = load i32, i32* %7, align 4
  %insertElmt39 = insertelement <4 x i32> undef, i32 %51, i32 0
  %insertElmt40 = insertelement <4 x i32> %insertElmt39, i32 %51, i32 1
  %insertElmt41 = insertelement <4 x i32> %insertElmt40, i32 %51, i32 2
  %insertElmt42 = insertelement <4 x i32> %insertElmt41, i32 %51, i32 3
  store <4 x i32> %insertElmt42, <4 x i32>* %allocaVec4, align 16
  %52 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop43 = add <4 x i32> %52, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec4
  %53 = add nsw i32 %51, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %77

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %6, align 4
  %insertElmt44 = insertelement <4 x i32> undef, i32 %56, i32 0
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %56, i32 1
  %insertElmt46 = insertelement <4 x i32> %insertElmt45, i32 %56, i32 2
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %56, i32 3
  store <4 x i32> %insertElmt47, <4 x i32>* %allocaVec3, align 16
  %57 = load i32, i32* %7, align 4
  %58 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %59 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop48 = ashr <4 x i32> %58, %59
  %60 = ashr i32 %56, %57
  %Vop49 = and <4 x i32> %Vop48, <i32 1, i32 1, i32 1, i32 1>
  %61 = and i32 %60, 1
  %Vop50 = add <4 x i32> %Vop49, <i32 48, i32 48, i32 48, i32 48>
  %62 = add nsw i32 %61, 48
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 4
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 4
  store i8 %63, i8* %64, align 1
  %66 = load i32, i32* %7, align 4
  %67 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %68 = srem i32 %66, 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

; <label>:70:                                     ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %5, align 4
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 4
  store i8 32, i8* %74, align 1
  br label %76

; <label>:76:                                     ; preds = %73, %70, %55
  br label %50

; <label>:77:                                     ; preds = %50
  %78 = load i8*, i8** %5, align 4
  store i8 0, i8* %78, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bstr_i(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %2 = alloca i8*, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec3
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %43, %1
  %6 = load i8*, i8** %2, align 4
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** %2, align 4
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %2, align 4
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = call arm_aapcscc i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %16)
  %18 = icmp ne i8* %17, null
  br label %19

; <label>:19:                                     ; preds = %13, %8, %5
  %20 = phi i1 [ false, %8 ], [ false, %5 ], [ %18, %13 ]
  br i1 %20, label %21, label %44

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %2, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 4
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %CastInst
  %26 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %26, i32 0
  %insertCast4 = insertelement <4 x i32> %insertCast, i32 %26, i32 1
  %insertCast5 = insertelement <4 x i32> %insertCast4, i32 %26, i32 2
  %insertCast6 = insertelement <4 x i32> %insertCast5, i32 %26, i32 3
  store <4 x i32> %insertCast6, <4 x i32>* %CastInstVec, align 4
  %27 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = sub <4 x i32> %27, <i32 48, i32 48, i32 48, i32 48>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %28 = sub nsw i32 %25, 48
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %29, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt, i32 %29, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %29, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %29, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec3, align 16
  %30 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop10 = shl <4 x i32> %30, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop10, <4 x i32>* %allocaVec3
  %31 = shl i32 %29, 1
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop11 = and <4 x i32> %33, <i32 1, i32 1, i32 1, i32 1>
  %34 = and i32 %32, 1
  %35 = load i32, i32* %4, align 4
  %36 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop12 = or <4 x i32> %36, %Vop11
  store <4 x i32> %Vop12, <4 x i32>* %allocaVec3
  %37 = load <4 x i32>, <4 x i32>* %allocaVec3, align 4
  %extractE = extractelement <4 x i32> %37, i64 0
  %extractE13 = extractelement <4 x i32> %37, i64 1
  %extractE14 = extractelement <4 x i32> %37, i64 2
  %sum = add i32 %extractE, %extractE13
  %sum15 = add i32 %sum, %extractE14
  %38 = or i32 %35, %34
  %Fmul = mul i32 %38, 3
  store i32 %38, i32* %Recovery
  %Fcmp = icmp ne i32 %sum15, %Fmul
  br i1 %Fcmp, label %39, label %43

; <label>:39:                                     ; preds = %21
  %remThree = sdiv i32 %sum15, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %40, label %41

; <label>:40:                                     ; preds = %39
  store i32 %38, i32* %Recovery, align 4
  br label %42

; <label>:41:                                     ; preds = %39
  store i32 %extractE, i32* %Recovery, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %21, %42
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  br label %5

; <label>:44:                                     ; preds = %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare arm_aapcscc i8* @strchr(i8*, i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
