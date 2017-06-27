; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque
%union.anon = type { i64 }
%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@bits.1 = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@stderr = external constant %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@main.pBitCntFunc = internal global [7 x i32 (i64)*] [i32 (i64)* @bit_count, i32 (i64)* @bitcount, i32 (i64)* @ntbl_bitcnt, i32 (i64)* @ntbl_bitcount, i32 (i64)* @BW_btbl_bitcount, i32 (i64)* @AR_btbl_bitcount, i32 (i64)* @bit_shifter], align 16
@main.text = internal global [7 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)], align 16
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
define i8* @alloc_bit_array(i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %4, i32 0
  %insertElmt1 = insertelement <4 x i64> %insertElmt, i64 %4, i32 1
  %insertElmt2 = insertelement <4 x i64> %insertElmt1, i64 %4, i32 2
  %insertElmt3 = insertelement <4 x i64> %insertElmt2, i64 %4, i32 3
  store <4 x i64> %insertElmt3, <4 x i64>* %allocaVec, align 16
  %5 = load <4 x i64>, <4 x i64>* %allocaVec, align 16
  %Vop = add <4 x i64> %5, <i64 8, i64 8, i64 8, i64 8>
  %6 = add i64 %4, 8
  %Vop4 = sub <4 x i64> %Vop, <i64 1, i64 1, i64 1, i64 1>
  %7 = sub i64 %6, 1
  %8 = udiv i64 %7, 8
  %9 = call i8* @calloc(i64 %8, i64 1)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

declare i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
define i32 @getbit(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
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
  %8 = load i8*, i8** %3, align 8
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %14, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %14, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %14, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %14, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %15 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %16 = srem i32 %14, 8
  %17 = shl i32 1, %16
  store i32 %13, i32* %CastInst
  %18 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertCast9 = insertelement <4 x i32> %insertCast, i32 %18, i32 1
  %insertCast10 = insertelement <4 x i32> %insertCast9, i32 %18, i32 2
  %insertCast11 = insertelement <4 x i32> %insertCast10, i32 %18, i32 3
  store <4 x i32> %insertCast11, <4 x i32>* %CastInstVec, align 4
  %19 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %20 = and i32 %13, %17
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind
define void @setbit(i8*, i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %4 = alloca i8*, align 8
  %allocaVec4 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
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
  %10 = load i8*, i8** %4, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %5, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %16, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %16, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %16, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %16, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %17 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %18 = srem i32 %16, 8
  %19 = shl i32 1, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %CastInst
  %23 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %23, i32 0
  %insertCast13 = insertelement <4 x i32> %insertCast, i32 %23, i32 1
  %insertCast14 = insertelement <4 x i32> %insertCast13, i32 %23, i32 2
  %insertCast15 = insertelement <4 x i32> %insertCast14, i32 %23, i32 3
  store <4 x i32> %insertCast15, <4 x i32>* %CastInstVec, align 4
  %24 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %25 = or i32 %22, %19
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %20, align 1
  br label %40

; <label>:27:                                     ; preds = %3
  %28 = load i32, i32* %5, align 4
  %insertElmt16 = insertelement <4 x i32> undef, i32 %28, i32 0
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %28, i32 1
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %28, i32 2
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %28, i32 3
  store <4 x i32> %insertElmt19, <4 x i32>* %allocaVec4, align 16
  %29 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %30 = srem i32 %28, 8
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %CastInst1
  %36 = load i32, i32* %CastInst1, align 4
  %insertCast20 = insertelement <4 x i32> undef, i32 %36, i32 0
  %insertCast21 = insertelement <4 x i32> %insertCast20, i32 %36, i32 1
  %insertCast22 = insertelement <4 x i32> %insertCast21, i32 %36, i32 2
  %insertCast23 = insertelement <4 x i32> %insertCast22, i32 %36, i32 3
  store <4 x i32> %insertCast23, <4 x i32>* %CastInstVec2, align 4
  %37 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %38 = and i32 %35, %32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %33, align 1
  br label %40

; <label>:40:                                     ; preds = %27, %15
  ret void
}

; Function Attrs: nounwind
define void @flipbit(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
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
  %8 = load i8*, i8** %3, align 8
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %10, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %11, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %11, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %11, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %11, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %12 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %13 = srem i32 %11, 8
  %14 = shl i32 1, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %CastInst
  %18 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertCast9 = insertelement <4 x i32> %insertCast, i32 %18, i32 1
  %insertCast10 = insertelement <4 x i32> %insertCast9, i32 %18, i32 2
  %insertCast11 = insertelement <4 x i32> %insertCast10, i32 %18, i32 3
  store <4 x i32> %insertCast11, <4 x i32>* %CastInstVec, align 4
  %19 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %20 = xor i32 %17, %14
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %15, align 1
  ret void
}

; Function Attrs: nounwind
define i32 @bit_count(i64) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec3 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %allocaVec4 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
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
  %18 = load i64, i64* %2, align 8
  %insertElmt11 = insertelement <4 x i64> undef, i64 %18, i32 0
  %insertElmt12 = insertelement <4 x i64> %insertElmt11, i64 %18, i32 1
  %insertElmt13 = insertelement <4 x i64> %insertElmt12, i64 %18, i32 2
  %insertElmt14 = insertelement <4 x i64> %insertElmt13, i64 %18, i32 3
  store <4 x i64> %insertElmt14, <4 x i64>* %allocaVec3, align 16
  %19 = load i64, i64* %2, align 8
  %insertElmt15 = insertelement <4 x i64> undef, i64 %19, i32 0
  %insertElmt16 = insertelement <4 x i64> %insertElmt15, i64 %19, i32 1
  %insertElmt17 = insertelement <4 x i64> %insertElmt16, i64 %19, i32 2
  %insertElmt18 = insertelement <4 x i64> %insertElmt17, i64 %19, i32 3
  store <4 x i64> %insertElmt18, <4 x i64>* %allocaVec3, align 16
  %20 = load <4 x i64>, <4 x i64>* %allocaVec3, align 16
  %Vop19 = sub <4 x i64> %20, <i64 1, i64 1, i64 1, i64 1>
  %21 = sub nsw i64 %19, 1
  %22 = load <4 x i64>, <4 x i64>* %allocaVec3, align 16
  %Vop20 = and <4 x i64> %22, %Vop19
  store <4 x i64> %Vop20, <4 x i64>* %allocaVec3
  %23 = load <4 x i64>, <4 x i64>* %allocaVec3, align 4
  %extractE22 = extractelement <4 x i64> %23, i64 0
  %extractE23 = extractelement <4 x i64> %23, i64 1
  %extractE24 = extractelement <4 x i64> %23, i64 2
  %sum25 = add i64 %extractE22, %extractE23
  %sum26 = add i64 %sum25, %extractE24
  %24 = and i64 %18, %21
  %Fmul21 = mul i64 %24, 3
  store i64 %24, i64* %Recovery1
  %Fcmp27 = icmp ne i64 %sum26, %Fmul21
  br i1 %Fcmp27, label %25, label %29

; <label>:25:                                     ; preds = %17
  %remThree28 = sdiv i64 %sum26, %extractE22
  %FcmpThree29 = icmp ne i64 %remThree28, 3
  br i1 %FcmpThree29, label %26, label %27

; <label>:26:                                     ; preds = %25
  store i64 %24, i64* %Recovery1, align 8
  br label %28

; <label>:27:                                     ; preds = %25
  store i64 %extractE22, i64* %Recovery1, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %17, %28
  %ReplaceInst30 = load i64, i64* %Recovery1, align 8
  store i64 %ReplaceInst30, i64* %2, align 8
  %30 = icmp ne i64 0, %24
  br i1 %30, label %7, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %31, %1
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: nounwind
define i32 @bitcount(i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec1 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %3, i32 0
  %insertElmt2 = insertelement <4 x i64> %insertElmt, i64 %3, i32 1
  %insertElmt3 = insertelement <4 x i64> %insertElmt2, i64 %3, i32 2
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %3, i32 3
  store <4 x i64> %insertElmt4, <4 x i64>* %allocaVec1, align 16
  %4 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop = and <4 x i64> %4, <i64 2863311530, i64 2863311530, i64 2863311530, i64 2863311530>
  %5 = and i64 %3, 2863311530
  %Vop5 = ashr <4 x i64> %Vop, <i64 1, i64 1, i64 1, i64 1>
  %6 = ashr i64 %5, 1
  %7 = load i64, i64* %2, align 8
  %insertElmt6 = insertelement <4 x i64> undef, i64 %7, i32 0
  %insertElmt7 = insertelement <4 x i64> %insertElmt6, i64 %7, i32 1
  %insertElmt8 = insertelement <4 x i64> %insertElmt7, i64 %7, i32 2
  %insertElmt9 = insertelement <4 x i64> %insertElmt8, i64 %7, i32 3
  store <4 x i64> %insertElmt9, <4 x i64>* %allocaVec1, align 16
  %8 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop10 = and <4 x i64> %8, <i64 1431655765, i64 1431655765, i64 1431655765, i64 1431655765>
  %9 = and i64 %7, 1431655765
  %Vop11 = add <4 x i64> %Vop5, %Vop10
  store <4 x i64> %Vop11, <4 x i64>* %allocaVec1
  %10 = add nsw i64 %6, %9
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop12 = and <4 x i64> %12, <i64 3435973836, i64 3435973836, i64 3435973836, i64 3435973836>
  %13 = and i64 %11, 3435973836
  %Vop13 = ashr <4 x i64> %Vop12, <i64 2, i64 2, i64 2, i64 2>
  %14 = ashr i64 %13, 2
  %15 = load i64, i64* %2, align 8
  %16 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop14 = and <4 x i64> %16, <i64 858993459, i64 858993459, i64 858993459, i64 858993459>
  %17 = and i64 %15, 858993459
  %Vop15 = add <4 x i64> %Vop13, %Vop14
  store <4 x i64> %Vop15, <4 x i64>* %allocaVec1
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop16 = and <4 x i64> %20, <i64 4042322160, i64 4042322160, i64 4042322160, i64 4042322160>
  %21 = and i64 %19, 4042322160
  %Vop17 = ashr <4 x i64> %Vop16, <i64 4, i64 4, i64 4, i64 4>
  %22 = ashr i64 %21, 4
  %23 = load i64, i64* %2, align 8
  %24 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop18 = and <4 x i64> %24, <i64 252645135, i64 252645135, i64 252645135, i64 252645135>
  %25 = and i64 %23, 252645135
  %Vop19 = add <4 x i64> %Vop17, %Vop18
  store <4 x i64> %Vop19, <4 x i64>* %allocaVec1
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop20 = and <4 x i64> %28, <i64 4278255360, i64 4278255360, i64 4278255360, i64 4278255360>
  %29 = and i64 %27, 4278255360
  %Vop21 = ashr <4 x i64> %Vop20, <i64 8, i64 8, i64 8, i64 8>
  %30 = ashr i64 %29, 8
  %31 = load i64, i64* %2, align 8
  %32 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop22 = and <4 x i64> %32, <i64 16711935, i64 16711935, i64 16711935, i64 16711935>
  %33 = and i64 %31, 16711935
  %Vop23 = add <4 x i64> %Vop21, %Vop22
  store <4 x i64> %Vop23, <4 x i64>* %allocaVec1
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop24 = and <4 x i64> %36, <i64 4294901760, i64 4294901760, i64 4294901760, i64 4294901760>
  %37 = and i64 %35, 4294901760
  %Vop25 = ashr <4 x i64> %Vop24, <i64 16, i64 16, i64 16, i64 16>
  %38 = ashr i64 %37, 16
  %39 = load i64, i64* %2, align 8
  %40 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop26 = and <4 x i64> %40, <i64 65535, i64 65535, i64 65535, i64 65535>
  %41 = and i64 %39, 65535
  %Vop27 = add <4 x i64> %Vop25, %Vop26
  store <4 x i64> %Vop27, <4 x i64>* %allocaVec1
  %42 = load <4 x i64>, <4 x i64>* %allocaVec1, align 4
  %extractE = extractelement <4 x i64> %42, i64 0
  %extractE28 = extractelement <4 x i64> %42, i64 1
  %extractE29 = extractelement <4 x i64> %42, i64 2
  %sum = add i64 %extractE, %extractE28
  %sum30 = add i64 %sum, %extractE29
  %43 = add nsw i64 %38, %41
  %Fmul = mul i64 %43, 3
  store i64 %43, i64* %Recovery
  %Fcmp = icmp ne i64 %sum30, %Fmul
  br i1 %Fcmp, label %44, label %48

; <label>:44:                                     ; preds = %1
  %remThree = sdiv i64 %sum30, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %45, label %46

; <label>:45:                                     ; preds = %44
  store i64 %43, i64* %Recovery, align 8
  br label %47

; <label>:46:                                     ; preds = %44
  store i64 %extractE, i64* %Recovery, align 8
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %1, %47
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

; Function Attrs: nounwind
define i32 @ntbl_bitcount(i64) #0 {
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
  %allocaVec22 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %3, i32 0
  %insertElmt23 = insertelement <4 x i64> %insertElmt, i64 %3, i32 1
  %insertElmt24 = insertelement <4 x i64> %insertElmt23, i64 %3, i32 2
  %insertElmt25 = insertelement <4 x i64> %insertElmt24, i64 %3, i32 3
  store <4 x i64> %insertElmt25, <4 x i64>* %allocaVec22, align 16
  %4 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop = and <4 x i64> %4, <i64 15, i64 15, i64 15, i64 15>
  %5 = and i64 %3, 15
  %6 = trunc i64 %5 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i64, i64* %2, align 8
  %insertElmt26 = insertelement <4 x i64> undef, i64 %11, i32 0
  %insertElmt27 = insertelement <4 x i64> %insertElmt26, i64 %11, i32 1
  %insertElmt28 = insertelement <4 x i64> %insertElmt27, i64 %11, i32 2
  %insertElmt29 = insertelement <4 x i64> %insertElmt28, i64 %11, i32 3
  store <4 x i64> %insertElmt29, <4 x i64>* %allocaVec22, align 16
  %12 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop30 = and <4 x i64> %12, <i64 240, i64 240, i64 240, i64 240>
  %13 = and i64 %11, 240
  %Vop31 = lshr <4 x i64> %Vop30, <i64 4, i64 4, i64 4, i64 4>
  %14 = lshr i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %10, i32* %CastInst
  %20 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %20, i32 0
  %insertCast32 = insertelement <4 x i32> %insertCast, i32 %20, i32 1
  %insertCast33 = insertelement <4 x i32> %insertCast32, i32 %20, i32 2
  %insertCast34 = insertelement <4 x i32> %insertCast33, i32 %20, i32 3
  store <4 x i32> %insertCast34, <4 x i32>* %CastInstVec, align 4
  %21 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  store i32 %19, i32* %CastInst1
  %22 = load i32, i32* %CastInst1, align 4
  %insertCast35 = insertelement <4 x i32> undef, i32 %22, i32 0
  %insertCast36 = insertelement <4 x i32> %insertCast35, i32 %22, i32 1
  %insertCast37 = insertelement <4 x i32> %insertCast36, i32 %22, i32 2
  %insertCast38 = insertelement <4 x i32> %insertCast37, i32 %22, i32 3
  store <4 x i32> %insertCast38, <4 x i32>* %CastInstVec2, align 4
  %23 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %Vop39 = add <4 x i32> %21, %23
  %24 = add nsw i32 %10, %19
  %25 = load i64, i64* %2, align 8
  %insertElmt40 = insertelement <4 x i64> undef, i64 %25, i32 0
  %insertElmt41 = insertelement <4 x i64> %insertElmt40, i64 %25, i32 1
  %insertElmt42 = insertelement <4 x i64> %insertElmt41, i64 %25, i32 2
  %insertElmt43 = insertelement <4 x i64> %insertElmt42, i64 %25, i32 3
  store <4 x i64> %insertElmt43, <4 x i64>* %allocaVec22, align 16
  %26 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop44 = and <4 x i64> %26, <i64 3840, i64 3840, i64 3840, i64 3840>
  %27 = and i64 %25, 3840
  %Vop45 = lshr <4 x i64> %Vop44, <i64 8, i64 8, i64 8, i64 8>
  %28 = lshr i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %CastInst3
  %34 = load i32, i32* %CastInst3, align 4
  %insertCast46 = insertelement <4 x i32> undef, i32 %34, i32 0
  %insertCast47 = insertelement <4 x i32> %insertCast46, i32 %34, i32 1
  %insertCast48 = insertelement <4 x i32> %insertCast47, i32 %34, i32 2
  %insertCast49 = insertelement <4 x i32> %insertCast48, i32 %34, i32 3
  store <4 x i32> %insertCast49, <4 x i32>* %CastInstVec4, align 4
  %35 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop50 = add <4 x i32> %Vop39, %35
  %36 = add nsw i32 %24, %33
  %37 = load i64, i64* %2, align 8
  %insertElmt51 = insertelement <4 x i64> undef, i64 %37, i32 0
  %insertElmt52 = insertelement <4 x i64> %insertElmt51, i64 %37, i32 1
  %insertElmt53 = insertelement <4 x i64> %insertElmt52, i64 %37, i32 2
  %insertElmt54 = insertelement <4 x i64> %insertElmt53, i64 %37, i32 3
  store <4 x i64> %insertElmt54, <4 x i64>* %allocaVec22, align 16
  %38 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop55 = and <4 x i64> %38, <i64 61440, i64 61440, i64 61440, i64 61440>
  %39 = and i64 %37, 61440
  %Vop56 = lshr <4 x i64> %Vop55, <i64 12, i64 12, i64 12, i64 12>
  %40 = lshr i64 %39, 12
  %41 = trunc i64 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %CastInst5
  %46 = load i32, i32* %CastInst5, align 4
  %insertCast57 = insertelement <4 x i32> undef, i32 %46, i32 0
  %insertCast58 = insertelement <4 x i32> %insertCast57, i32 %46, i32 1
  %insertCast59 = insertelement <4 x i32> %insertCast58, i32 %46, i32 2
  %insertCast60 = insertelement <4 x i32> %insertCast59, i32 %46, i32 3
  store <4 x i32> %insertCast60, <4 x i32>* %CastInstVec6, align 4
  %47 = load <4 x i32>, <4 x i32>* %CastInstVec6, align 4
  %Vop61 = add <4 x i32> %Vop50, %47
  %48 = add nsw i32 %36, %45
  %49 = load i64, i64* %2, align 8
  %insertElmt62 = insertelement <4 x i64> undef, i64 %49, i32 0
  %insertElmt63 = insertelement <4 x i64> %insertElmt62, i64 %49, i32 1
  %insertElmt64 = insertelement <4 x i64> %insertElmt63, i64 %49, i32 2
  %insertElmt65 = insertelement <4 x i64> %insertElmt64, i64 %49, i32 3
  store <4 x i64> %insertElmt65, <4 x i64>* %allocaVec22, align 16
  %50 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop66 = and <4 x i64> %50, <i64 983040, i64 983040, i64 983040, i64 983040>
  %51 = and i64 %49, 983040
  %Vop67 = lshr <4 x i64> %Vop66, <i64 16, i64 16, i64 16, i64 16>
  %52 = lshr i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  store i32 %57, i32* %CastInst7
  %58 = load i32, i32* %CastInst7, align 4
  %insertCast68 = insertelement <4 x i32> undef, i32 %58, i32 0
  %insertCast69 = insertelement <4 x i32> %insertCast68, i32 %58, i32 1
  %insertCast70 = insertelement <4 x i32> %insertCast69, i32 %58, i32 2
  %insertCast71 = insertelement <4 x i32> %insertCast70, i32 %58, i32 3
  store <4 x i32> %insertCast71, <4 x i32>* %CastInstVec8, align 4
  %59 = load <4 x i32>, <4 x i32>* %CastInstVec8, align 4
  %Vop72 = add <4 x i32> %Vop61, %59
  %60 = add nsw i32 %48, %57
  %61 = load i64, i64* %2, align 8
  %insertElmt73 = insertelement <4 x i64> undef, i64 %61, i32 0
  %insertElmt74 = insertelement <4 x i64> %insertElmt73, i64 %61, i32 1
  %insertElmt75 = insertelement <4 x i64> %insertElmt74, i64 %61, i32 2
  %insertElmt76 = insertelement <4 x i64> %insertElmt75, i64 %61, i32 3
  store <4 x i64> %insertElmt76, <4 x i64>* %allocaVec22, align 16
  %62 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop77 = and <4 x i64> %62, <i64 15728640, i64 15728640, i64 15728640, i64 15728640>
  %63 = and i64 %61, 15728640
  %Vop78 = lshr <4 x i64> %Vop77, <i64 20, i64 20, i64 20, i64 20>
  %64 = lshr i64 %63, 20
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  store i32 %69, i32* %CastInst9
  %70 = load i32, i32* %CastInst9, align 4
  %insertCast79 = insertelement <4 x i32> undef, i32 %70, i32 0
  %insertCast80 = insertelement <4 x i32> %insertCast79, i32 %70, i32 1
  %insertCast81 = insertelement <4 x i32> %insertCast80, i32 %70, i32 2
  %insertCast82 = insertelement <4 x i32> %insertCast81, i32 %70, i32 3
  store <4 x i32> %insertCast82, <4 x i32>* %CastInstVec10, align 4
  %71 = load <4 x i32>, <4 x i32>* %CastInstVec10, align 4
  %Vop83 = add <4 x i32> %Vop72, %71
  %72 = add nsw i32 %60, %69
  %73 = load i64, i64* %2, align 8
  %insertElmt84 = insertelement <4 x i64> undef, i64 %73, i32 0
  %insertElmt85 = insertelement <4 x i64> %insertElmt84, i64 %73, i32 1
  %insertElmt86 = insertelement <4 x i64> %insertElmt85, i64 %73, i32 2
  %insertElmt87 = insertelement <4 x i64> %insertElmt86, i64 %73, i32 3
  store <4 x i64> %insertElmt87, <4 x i64>* %allocaVec22, align 16
  %74 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop88 = and <4 x i64> %74, <i64 251658240, i64 251658240, i64 251658240, i64 251658240>
  %75 = and i64 %73, 251658240
  %Vop89 = lshr <4 x i64> %Vop88, <i64 24, i64 24, i64 24, i64 24>
  %76 = lshr i64 %75, 24
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %CastInst11
  %82 = load i32, i32* %CastInst11, align 4
  %insertCast90 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertCast91 = insertelement <4 x i32> %insertCast90, i32 %82, i32 1
  %insertCast92 = insertelement <4 x i32> %insertCast91, i32 %82, i32 2
  %insertCast93 = insertelement <4 x i32> %insertCast92, i32 %82, i32 3
  store <4 x i32> %insertCast93, <4 x i32>* %CastInstVec12, align 4
  %83 = load <4 x i32>, <4 x i32>* %CastInstVec12, align 4
  %Vop94 = add <4 x i32> %Vop83, %83
  %84 = add nsw i32 %72, %81
  %85 = load i64, i64* %2, align 8
  %insertElmt95 = insertelement <4 x i64> undef, i64 %85, i32 0
  %insertElmt96 = insertelement <4 x i64> %insertElmt95, i64 %85, i32 1
  %insertElmt97 = insertelement <4 x i64> %insertElmt96, i64 %85, i32 2
  %insertElmt98 = insertelement <4 x i64> %insertElmt97, i64 %85, i32 3
  store <4 x i64> %insertElmt98, <4 x i64>* %allocaVec22, align 16
  %86 = load <4 x i64>, <4 x i64>* %allocaVec22, align 16
  %Vop99 = and <4 x i64> %86, <i64 4026531840, i64 4026531840, i64 4026531840, i64 4026531840>
  %87 = and i64 %85, 4026531840
  %Vop100 = lshr <4 x i64> %Vop99, <i64 28, i64 28, i64 28, i64 28>
  %88 = lshr i64 %87, 28
  %89 = trunc i64 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %CastInst13
  %94 = load i32, i32* %CastInst13, align 4
  %insertCast101 = insertelement <4 x i32> undef, i32 %94, i32 0
  %insertCast102 = insertelement <4 x i32> %insertCast101, i32 %94, i32 1
  %insertCast103 = insertelement <4 x i32> %insertCast102, i32 %94, i32 2
  %insertCast104 = insertelement <4 x i32> %insertCast103, i32 %94, i32 3
  store <4 x i32> %insertCast104, <4 x i32>* %CastInstVec14, align 4
  %95 = load <4 x i32>, <4 x i32>* %CastInstVec14, align 4
  %Vop105 = add <4 x i32> %Vop94, %95
  %96 = add nsw i32 %84, %93
  ret i32 %96
}

; Function Attrs: nounwind
define i32 @BW_btbl_bitcount(i64) #0 {
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
  %allocaVec10 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %3 = alloca %union.anon, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = bitcast %union.anon* %3 to i64*
  store i64 %4, i64* %5, align 8
  %6 = bitcast %union.anon* %3 to [4 x i8]*
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %8 = load i8, i8* %7, align 8
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = bitcast %union.anon* %3 to [4 x i8]*
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
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
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
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
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %35, i64 0, i64 2
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
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
define i32 @AR_btbl_bitcount(i64) #0 {
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
  %allocaVec8 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %allocaVec9 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = bitcast i64* %2 to i8*
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
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
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
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
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
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
define i32 @ntbl_bitcnt(i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %4, i32 0
  %insertElmt6 = insertelement <4 x i64> %insertElmt, i64 %4, i32 1
  %insertElmt7 = insertelement <4 x i64> %insertElmt6, i64 %4, i32 2
  %insertElmt8 = insertelement <4 x i64> %insertElmt7, i64 %4, i32 3
  store <4 x i64> %insertElmt8, <4 x i64>* %allocaVec4, align 16
  %5 = load <4 x i64>, <4 x i64>* %allocaVec4, align 16
  %Vop = and <4 x i64> %5, <i64 15, i64 15, i64 15, i64 15>
  %6 = and i64 %4, 15
  %7 = trunc i64 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* %2, align 8
  %insertElmt9 = insertelement <4 x i64> undef, i64 %12, i32 0
  %insertElmt10 = insertelement <4 x i64> %insertElmt9, i64 %12, i32 1
  %insertElmt11 = insertelement <4 x i64> %insertElmt10, i64 %12, i32 2
  %insertElmt12 = insertelement <4 x i64> %insertElmt11, i64 %12, i32 3
  store <4 x i64> %insertElmt12, <4 x i64>* %allocaVec4, align 16
  %13 = load <4 x i64>, <4 x i64>* %allocaVec4, align 16
  %Vop13 = ashr <4 x i64> %13, <i64 4, i64 4, i64 4, i64 4>
  store <4 x i64> %Vop13, <4 x i64>* %allocaVec4
  %14 = load <4 x i64>, <4 x i64>* %allocaVec4, align 4
  %extractE = extractelement <4 x i64> %14, i64 0
  %extractE14 = extractelement <4 x i64> %14, i64 1
  %extractE15 = extractelement <4 x i64> %14, i64 2
  %sum = add i64 %extractE, %extractE14
  %sum16 = add i64 %sum, %extractE15
  %15 = ashr i64 %12, 4
  %Fmul = mul i64 %15, 3
  store i64 %15, i64* %Recovery
  %Fcmp = icmp ne i64 %sum16, %Fmul
  br i1 %Fcmp, label %16, label %20

; <label>:16:                                     ; preds = %1
  %remThree = sdiv i64 %sum16, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %17, label %18

; <label>:17:                                     ; preds = %16
  store i64 %15, i64* %Recovery, align 8
  br label %19

; <label>:18:                                     ; preds = %16
  store i64 %extractE, i64* %Recovery, align 8
  br label %19

; <label>:19:                                     ; preds = %18, %17
  br label %20

; <label>:20:                                     ; preds = %1, %19
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %2, align 8
  %21 = icmp ne i64 0, %15
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %20
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @ntbl_bitcnt(i64 %23)
  %25 = load i32, i32* %3, align 4
  %insertElmt17 = insertelement <4 x i32> undef, i32 %25, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %25, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %25, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %25, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec5, align 16
  %26 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  store i32 %24, i32* %CallInst
  %27 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %27, i32 0
  %insertCall21 = insertelement <4 x i32> %insertCall, i32 %27, i32 1
  %insertCall22 = insertelement <4 x i32> %insertCall21, i32 %27, i32 2
  %insertCall23 = insertelement <4 x i32> %insertCall22, i32 %27, i32 3
  store <4 x i32> %insertCall23, <4 x i32>* %CallInstVec, align 4
  %28 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop24 = add <4 x i32> %26, %28
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec5
  %29 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE26 = extractelement <4 x i32> %29, i64 0
  %extractE27 = extractelement <4 x i32> %29, i64 1
  %extractE28 = extractelement <4 x i32> %29, i64 2
  %sum29 = add i32 %extractE26, %extractE27
  %sum30 = add i32 %sum29, %extractE28
  %30 = add nsw i32 %25, %24
  %Fmul25 = mul i32 %30, 3
  store i32 %30, i32* %Recovery1
  %Fcmp31 = icmp ne i32 %sum30, %Fmul25
  br i1 %Fcmp31, label %31, label %35

; <label>:31:                                     ; preds = %22
  %remThree32 = sdiv i32 %sum30, %extractE26
  %FcmpThree33 = icmp ne i32 %remThree32, 3
  br i1 %FcmpThree33, label %32, label %33

; <label>:32:                                     ; preds = %31
  store i32 %30, i32* %Recovery1, align 4
  br label %34

; <label>:33:                                     ; preds = %31
  store i32 %extractE26, i32* %Recovery1, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %32
  br label %35

; <label>:35:                                     ; preds = %22, %34
  %ReplaceInst34 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst34, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: nounwind
define i32 @btbl_bitcnt(i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec5 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %allocaVec6 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = bitcast i64* %2 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 8
  %7 = sext i8 %6 to i32
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
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %15, i32 0
  %insertElmt10 = insertelement <4 x i64> %insertElmt, i64 %15, i32 1
  %insertElmt11 = insertelement <4 x i64> %insertElmt10, i64 %15, i32 2
  %insertElmt12 = insertelement <4 x i64> %insertElmt11, i64 %15, i32 3
  store <4 x i64> %insertElmt12, <4 x i64>* %allocaVec5, align 16
  %16 = load <4 x i64>, <4 x i64>* %allocaVec5, align 16
  %Vop13 = ashr <4 x i64> %16, <i64 8, i64 8, i64 8, i64 8>
  store <4 x i64> %Vop13, <4 x i64>* %allocaVec5
  %17 = load <4 x i64>, <4 x i64>* %allocaVec5, align 4
  %extractE = extractelement <4 x i64> %17, i64 0
  %extractE14 = extractelement <4 x i64> %17, i64 1
  %extractE15 = extractelement <4 x i64> %17, i64 2
  %sum = add i64 %extractE, %extractE14
  %sum16 = add i64 %sum, %extractE15
  %18 = ashr i64 %15, 8
  %Fmul = mul i64 %18, 3
  store i64 %18, i64* %Recovery
  %Fcmp = icmp ne i64 %sum16, %Fmul
  br i1 %Fcmp, label %19, label %23

; <label>:19:                                     ; preds = %1
  %remThree = sdiv i64 %sum16, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %20, label %21

; <label>:20:                                     ; preds = %19
  store i64 %18, i64* %Recovery, align 8
  br label %22

; <label>:21:                                     ; preds = %19
  store i64 %extractE, i64* %Recovery, align 8
  br label %22

; <label>:22:                                     ; preds = %21, %20
  br label %23

; <label>:23:                                     ; preds = %1, %22
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %2, align 8
  %24 = icmp ne i64 0, %18
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %23
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @btbl_bitcnt(i64 %26)
  %28 = load i32, i32* %3, align 4
  %insertElmt17 = insertelement <4 x i32> undef, i32 %28, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %28, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %28, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %28, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec6, align 16
  %29 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  store i32 %27, i32* %CallInst
  %30 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %30, i32 0
  %insertCall21 = insertelement <4 x i32> %insertCall, i32 %30, i32 1
  %insertCall22 = insertelement <4 x i32> %insertCall21, i32 %30, i32 2
  %insertCall23 = insertelement <4 x i32> %insertCall22, i32 %30, i32 3
  store <4 x i32> %insertCall23, <4 x i32>* %CallInstVec, align 4
  %31 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop24 = add <4 x i32> %29, %31
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec6
  %32 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE26 = extractelement <4 x i32> %32, i64 0
  %extractE27 = extractelement <4 x i32> %32, i64 1
  %extractE28 = extractelement <4 x i32> %32, i64 2
  %sum29 = add i32 %extractE26, %extractE27
  %sum30 = add i32 %sum29, %extractE28
  %33 = add nsw i32 %28, %27
  %Fmul25 = mul i32 %33, 3
  store i32 %33, i32* %Recovery1
  %Fcmp31 = icmp ne i32 %sum30, %Fmul25
  br i1 %Fcmp31, label %34, label %38

; <label>:34:                                     ; preds = %25
  %remThree32 = sdiv i32 %sum30, %extractE26
  %FcmpThree33 = icmp ne i32 %remThree32, 3
  br i1 %FcmpThree33, label %35, label %36

; <label>:35:                                     ; preds = %34
  store i32 %33, i32* %Recovery1, align 4
  br label %37

; <label>:36:                                     ; preds = %34
  store i32 %extractE26, i32* %Recovery1, align 4
  br label %37

; <label>:37:                                     ; preds = %36, %35
  br label %38

; <label>:38:                                     ; preds = %25, %37
  %ReplaceInst34 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst34, i32* %3, align 4
  br label %39

; <label>:39:                                     ; preds = %38, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec7 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec8 = alloca <4 x i64>, align 16
  %Recovery2 = alloca i64, align 8
  %allocaVec9 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 8
  %allocaVec10 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec12 = alloca <2 x double>, align 16
  %CastInst5 = alloca double, align 4
  %CastInstVec6 = alloca <2 x double>, align 16
  %allocaVec13 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %allocaVec15 = alloca <4 x i64>, align 16
  %6 = alloca i64, align 8
  %allocaVec16 = alloca <4 x i64>, align 16
  %7 = alloca i64, align 8
  %allocaVec17 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec18 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec19 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %allocaVec20 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec21 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec22 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i64>, align 16
  %14 = alloca i64, align 8
  %allocaVec24 = alloca <4 x i64>, align 16
  %15 = alloca i64, align 8
  %allocaVec25 = alloca <4 x i64>, align 16
  %16 = alloca i64, align 8
  %allocaVec26 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec13
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF>, <2 x double>* %allocaVec18
  store double 0x7FEFFFFFFFFFFFFF, double* %9, align 8
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec19
  store double 0.000000e+00, double* %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 -1) #3
  unreachable

; <label>:23:                                     ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec20
  store i32 0, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %126, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %127

; <label>:32:                                     ; preds = %29
  %33 = call i64 @clock()
  store i64 %33, i64* %6, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec24
  store i64 0, i64* %15, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec23
  store i64 0, i64* %14, align 8
  %34 = call i32 @rand()
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  br label %36

; <label>:36:                                     ; preds = %78, %32
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %79

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [7 x i32 (i64)*], [7 x i32 (i64)*]* @main.pBitCntFunc, i64 0, i64 %43
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 %45(i64 %46)
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %15, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %49, i32 0
  %insertElmt27 = insertelement <4 x i64> %insertElmt, i64 %49, i32 1
  %insertElmt28 = insertelement <4 x i64> %insertElmt27, i64 %49, i32 2
  %insertElmt29 = insertelement <4 x i64> %insertElmt28, i64 %49, i32 3
  store <4 x i64> %insertElmt29, <4 x i64>* %allocaVec24, align 16
  %50 = load <4 x i64>, <4 x i64>* %allocaVec24, align 16
  store i64 %48, i64* %CastInst
  %51 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %51, i32 0
  %insertCast30 = insertelement <4 x i64> %insertCast, i64 %51, i32 1
  %insertCast31 = insertelement <4 x i64> %insertCast30, i64 %51, i32 2
  %insertCast32 = insertelement <4 x i64> %insertCast31, i64 %51, i32 3
  store <4 x i64> %insertCast32, <4 x i64>* %CastInstVec, align 4
  %52 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = add <4 x i64> %50, %52
  store <4 x i64> %Vop, <4 x i64>* %allocaVec24
  %53 = load <4 x i64>, <4 x i64>* %allocaVec24, align 4
  %extractE = extractelement <4 x i64> %53, i64 0
  %extractE33 = extractelement <4 x i64> %53, i64 1
  %extractE34 = extractelement <4 x i64> %53, i64 2
  %sum = add i64 %extractE, %extractE33
  %sum35 = add i64 %sum, %extractE34
  %54 = add nsw i64 %49, %48
  %Fmul = mul i64 %54, 3
  store i64 %54, i64* %Recovery
  %Fcmp = icmp ne i64 %sum35, %Fmul
  br i1 %Fcmp, label %55, label %59

; <label>:55:                                     ; preds = %41
  %remThree = sdiv i64 %sum35, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %56, label %57

; <label>:56:                                     ; preds = %55
  store i64 %54, i64* %Recovery, align 8
  br label %58

; <label>:57:                                     ; preds = %55
  store i64 %extractE, i64* %Recovery, align 8
  br label %58

; <label>:58:                                     ; preds = %57, %56
  br label %59

; <label>:59:                                     ; preds = %41, %58
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %15, align 8
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i64, i64* %14, align 8
  %insertElmt36 = insertelement <4 x i64> undef, i64 %61, i32 0
  %insertElmt37 = insertelement <4 x i64> %insertElmt36, i64 %61, i32 1
  %insertElmt38 = insertelement <4 x i64> %insertElmt37, i64 %61, i32 2
  %insertElmt39 = insertelement <4 x i64> %insertElmt38, i64 %61, i32 3
  store <4 x i64> %insertElmt39, <4 x i64>* %allocaVec23, align 16
  %62 = load <4 x i64>, <4 x i64>* %allocaVec23, align 16
  %Vop40 = add <4 x i64> %62, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop40, <4 x i64>* %allocaVec23
  %63 = load <4 x i64>, <4 x i64>* %allocaVec23, align 4
  %extractE42 = extractelement <4 x i64> %63, i64 0
  %extractE43 = extractelement <4 x i64> %63, i64 1
  %extractE44 = extractelement <4 x i64> %63, i64 2
  %sum45 = add i64 %extractE42, %extractE43
  %sum46 = add i64 %sum45, %extractE44
  %64 = add nsw i64 %61, 1
  %Fmul41 = mul i64 %64, 3
  store i64 %64, i64* %Recovery1
  %Fcmp47 = icmp ne i64 %sum46, %Fmul41
  br i1 %Fcmp47, label %65, label %69

; <label>:65:                                     ; preds = %60
  %remThree90 = sdiv i64 %sum46, %extractE42
  %FcmpThree91 = icmp ne i64 %remThree90, 3
  br i1 %FcmpThree91, label %66, label %67

; <label>:66:                                     ; preds = %65
  store i64 %64, i64* %Recovery1, align 8
  br label %68

; <label>:67:                                     ; preds = %65
  store i64 %extractE42, i64* %Recovery1, align 8
  br label %68

; <label>:68:                                     ; preds = %67, %66
  br label %69

; <label>:69:                                     ; preds = %60, %68
  %ReplaceInst98 = load i64, i64* %Recovery1, align 8
  store i64 %ReplaceInst98, i64* %14, align 8
  %70 = load i64, i64* %16, align 8
  %insertElmt48 = insertelement <4 x i64> undef, i64 %70, i32 0
  %insertElmt49 = insertelement <4 x i64> %insertElmt48, i64 %70, i32 1
  %insertElmt50 = insertelement <4 x i64> %insertElmt49, i64 %70, i32 2
  %insertElmt51 = insertelement <4 x i64> %insertElmt50, i64 %70, i32 3
  store <4 x i64> %insertElmt51, <4 x i64>* %allocaVec25, align 16
  %71 = load <4 x i64>, <4 x i64>* %allocaVec25, align 16
  %Vop52 = add <4 x i64> %71, <i64 13, i64 13, i64 13, i64 13>
  store <4 x i64> %Vop52, <4 x i64>* %allocaVec25
  %72 = load <4 x i64>, <4 x i64>* %allocaVec25, align 4
  %extractE54 = extractelement <4 x i64> %72, i64 0
  %extractE55 = extractelement <4 x i64> %72, i64 1
  %extractE56 = extractelement <4 x i64> %72, i64 2
  %sum57 = add i64 %extractE54, %extractE55
  %sum58 = add i64 %sum57, %extractE56
  %73 = add nsw i64 %70, 13
  %Fmul53 = mul i64 %73, 3
  store i64 %73, i64* %Recovery2
  %Fcmp59 = icmp ne i64 %sum58, %Fmul53
  br i1 %Fcmp59, label %74, label %78

; <label>:74:                                     ; preds = %69
  %remThree92 = sdiv i64 %sum58, %extractE54
  %FcmpThree93 = icmp ne i64 %remThree92, 3
  br i1 %FcmpThree93, label %75, label %76

; <label>:75:                                     ; preds = %74
  store i64 %73, i64* %Recovery2, align 8
  br label %77

; <label>:76:                                     ; preds = %74
  store i64 %extractE54, i64* %Recovery2, align 8
  br label %77

; <label>:77:                                     ; preds = %76, %75
  br label %78

; <label>:78:                                     ; preds = %69, %77
  %ReplaceInst99 = load i64, i64* %Recovery2, align 8
  store i64 %ReplaceInst99, i64* %16, align 8
  br label %36

; <label>:79:                                     ; preds = %36
  %80 = call i64 @clock()
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %insertElmt60 = insertelement <4 x i64> undef, i64 %81, i32 0
  %insertElmt61 = insertelement <4 x i64> %insertElmt60, i64 %81, i32 1
  %insertElmt62 = insertelement <4 x i64> %insertElmt61, i64 %81, i32 2
  %insertElmt63 = insertelement <4 x i64> %insertElmt62, i64 %81, i32 3
  store <4 x i64> %insertElmt63, <4 x i64>* %allocaVec16, align 16
  %82 = load i64, i64* %6, align 8
  %insertElmt64 = insertelement <4 x i64> undef, i64 %82, i32 0
  %insertElmt65 = insertelement <4 x i64> %insertElmt64, i64 %82, i32 1
  %insertElmt66 = insertelement <4 x i64> %insertElmt65, i64 %82, i32 2
  %insertElmt67 = insertelement <4 x i64> %insertElmt66, i64 %82, i32 3
  store <4 x i64> %insertElmt67, <4 x i64>* %allocaVec15, align 16
  %83 = load <4 x i64>, <4 x i64>* %allocaVec16, align 16
  %84 = load <4 x i64>, <4 x i64>* %allocaVec15, align 16
  %Vop68 = sub <4 x i64> %83, %84
  %85 = sub nsw i64 %81, %82
  %86 = sitofp i64 %85 to double
  store double %86, double* %CastInst5
  %87 = load double, double* %CastInst5, align 4
  %insertCast69 = insertelement <2 x double> undef, double %87, i32 0
  %insertCast70 = insertelement <2 x double> %insertCast69, double %87, i32 1
  store <2 x double> %insertCast70, <2 x double>* %CastInstVec6, align 4
  %88 = load <2 x double>, <2 x double>* %CastInstVec6, align 4
  %Vop71 = fdiv <2 x double> %88, <double 1.000000e+06, double 1.000000e+06>
  store <2 x double> %Vop71, <2 x double>* %allocaVec17
  %89 = load <2 x double>, <2 x double>* %allocaVec17, align 4
  %extractE73 = extractelement <2 x double> %89, i64 0
  %extractE74 = extractelement <2 x double> %89, i64 1
  %sum75 = fadd double %extractE73, %extractE74
  %sum76 = fadd double %sum75, %extractE74
  %90 = fdiv double %86, 1.000000e+06
  %Fmul72 = fmul double %90, 3.000000e+00
  store double %90, double* %Recovery3
  %Fcmp77 = fcmp une double %sum76, %Fmul72
  br i1 %Fcmp77, label %91, label %95

; <label>:91:                                     ; preds = %79
  %remThree94 = fdiv double %sum76, %extractE73
  %FcmpThree95 = fcmp une double %remThree94, 3.000000e+00
  br i1 %FcmpThree95, label %92, label %93

; <label>:92:                                     ; preds = %91
  store double %90, double* %Recovery3, align 8
  br label %94

; <label>:93:                                     ; preds = %91
  store double %extractE73, double* %Recovery3, align 8
  br label %94

; <label>:94:                                     ; preds = %93, %92
  br label %95

; <label>:95:                                     ; preds = %79, %94
  %ReplaceInst100 = load double, double* %Recovery3, align 8
  store double %ReplaceInst100, double* %8, align 8
  %96 = load double, double* %8, align 8
  %97 = load double, double* %9, align 8
  %98 = fcmp olt double %96, %97
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %95
  %100 = load double, double* %8, align 8
  store double %100, double* %9, align 8
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %12, align 4
  br label %102

; <label>:102:                                    ; preds = %99, %95
  %103 = load double, double* %8, align 8
  %104 = load double, double* %10, align 8
  %105 = fcmp ogt double %103, %104
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %102
  %107 = load double, double* %8, align 8
  store double %107, double* %10, align 8
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %13, align 4
  br label %109

; <label>:109:                                    ; preds = %106, %102
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load double, double* %8, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %113, double %114, i64 %115)
  br label %117

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* %11, align 4
  %insertElmt78 = insertelement <4 x i32> undef, i32 %118, i32 0
  %insertElmt79 = insertelement <4 x i32> %insertElmt78, i32 %118, i32 1
  %insertElmt80 = insertelement <4 x i32> %insertElmt79, i32 %118, i32 2
  %insertElmt81 = insertelement <4 x i32> %insertElmt80, i32 %118, i32 3
  store <4 x i32> %insertElmt81, <4 x i32>* %allocaVec20, align 16
  %119 = load <4 x i32>, <4 x i32>* %allocaVec20, align 16
  %Vop82 = add <4 x i32> %119, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop82, <4 x i32>* %allocaVec20
  %120 = load <4 x i32>, <4 x i32>* %allocaVec20, align 4
  %extractE84 = extractelement <4 x i32> %120, i64 0
  %extractE85 = extractelement <4 x i32> %120, i64 1
  %extractE86 = extractelement <4 x i32> %120, i64 2
  %sum87 = add i32 %extractE84, %extractE85
  %sum88 = add i32 %sum87, %extractE86
  %121 = add nsw i32 %118, 1
  %Fmul83 = mul i32 %121, 3
  store i32 %121, i32* %Recovery4
  %Fcmp89 = icmp ne i32 %sum88, %Fmul83
  br i1 %Fcmp89, label %122, label %126

; <label>:122:                                    ; preds = %117
  %remThree96 = sdiv i32 %sum88, %extractE84
  %FcmpThree97 = icmp ne i32 %remThree96, 3
  br i1 %FcmpThree97, label %123, label %124

; <label>:123:                                    ; preds = %122
  store i32 %121, i32* %Recovery4, align 4
  br label %125

; <label>:124:                                    ; preds = %122
  store i32 %extractE84, i32* %Recovery4, align 4
  br label %125

; <label>:125:                                    ; preds = %124, %123
  br label %126

; <label>:126:                                    ; preds = %117, %125
  %ReplaceInst101 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst101, i32* %11, align 4
  br label %29

; <label>:127:                                    ; preds = %29
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %131)
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %136)
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @atoi(i8*) #1

declare i32 @puts(i8*) #1

declare i64 @clock() #1

declare i32 @rand() #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define internal i32 @bit_shifter(i64) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i64>, align 16
  %Recovery2 = alloca i64, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec6 = alloca <4 x i64>, align 16
  %2 = alloca i64, align 8
  %allocaVec7 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %4, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %48, %1
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 64
  br label %12

; <label>:12:                                     ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ]
  br i1 %13, label %14, label %49

; <label>:14:                                     ; preds = %12
  %15 = load i64, i64* %2, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %15, i32 0
  %insertElmt9 = insertelement <4 x i64> %insertElmt, i64 %15, i32 1
  %insertElmt10 = insertelement <4 x i64> %insertElmt9, i64 %15, i32 2
  %insertElmt11 = insertelement <4 x i64> %insertElmt10, i64 %15, i32 3
  store <4 x i64> %insertElmt11, <4 x i64>* %allocaVec6, align 16
  %16 = load <4 x i64>, <4 x i64>* %allocaVec6, align 16
  %Vop = and <4 x i64> %16, <i64 1, i64 1, i64 1, i64 1>
  %17 = and i64 %15, 1
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %4, align 4
  %insertElmt12 = insertelement <4 x i32> undef, i32 %19, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %19, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %19, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %19, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec8, align 16
  %20 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  store i32 %18, i32* %CastInst
  %21 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %21, i32 0
  %insertCast16 = insertelement <4 x i32> %insertCast, i32 %21, i32 1
  %insertCast17 = insertelement <4 x i32> %insertCast16, i32 %21, i32 2
  %insertCast18 = insertelement <4 x i32> %insertCast17, i32 %21, i32 3
  store <4 x i32> %insertCast18, <4 x i32>* %CastInstVec, align 4
  %22 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop19 = add <4 x i32> %20, %22
  store <4 x i32> %Vop19, <4 x i32>* %allocaVec8
  %23 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %23, i64 0
  %extractE20 = extractelement <4 x i32> %23, i64 1
  %extractE21 = extractelement <4 x i32> %23, i64 2
  %sum = add i32 %extractE, %extractE20
  %sum22 = add i32 %sum, %extractE21
  %24 = add nsw i32 %19, %18
  %Fmul = mul i32 %24, 3
  store i32 %24, i32* %Recovery
  %Fcmp = icmp ne i32 %sum22, %Fmul
  br i1 %Fcmp, label %25, label %29

; <label>:25:                                     ; preds = %14
  %remThree = sdiv i32 %sum22, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %26, label %27

; <label>:26:                                     ; preds = %25
  store i32 %24, i32* %Recovery, align 4
  br label %28

; <label>:27:                                     ; preds = %25
  store i32 %extractE, i32* %Recovery, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %14, %28
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %3, align 4
  %insertElmt23 = insertelement <4 x i32> undef, i32 %31, i32 0
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %31, i32 1
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %31, i32 2
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %31, i32 3
  store <4 x i32> %insertElmt26, <4 x i32>* %allocaVec7, align 16
  %32 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop27 = add <4 x i32> %32, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop27, <4 x i32>* %allocaVec7
  %33 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE29 = extractelement <4 x i32> %33, i64 0
  %extractE30 = extractelement <4 x i32> %33, i64 1
  %extractE31 = extractelement <4 x i32> %33, i64 2
  %sum32 = add i32 %extractE29, %extractE30
  %sum33 = add i32 %sum32, %extractE31
  %34 = add nsw i32 %31, 1
  %Fmul28 = mul i32 %34, 3
  store i32 %34, i32* %Recovery1
  %Fcmp34 = icmp ne i32 %sum33, %Fmul28
  br i1 %Fcmp34, label %35, label %39

; <label>:35:                                     ; preds = %30
  %remThree47 = sdiv i32 %sum33, %extractE29
  %FcmpThree48 = icmp ne i32 %remThree47, 3
  br i1 %FcmpThree48, label %36, label %37

; <label>:36:                                     ; preds = %35
  store i32 %34, i32* %Recovery1, align 4
  br label %38

; <label>:37:                                     ; preds = %35
  store i32 %extractE29, i32* %Recovery1, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %36
  br label %39

; <label>:39:                                     ; preds = %30, %38
  %ReplaceInst51 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst51, i32* %3, align 4
  %40 = load i64, i64* %2, align 8
  %insertElmt35 = insertelement <4 x i64> undef, i64 %40, i32 0
  %insertElmt36 = insertelement <4 x i64> %insertElmt35, i64 %40, i32 1
  %insertElmt37 = insertelement <4 x i64> %insertElmt36, i64 %40, i32 2
  %insertElmt38 = insertelement <4 x i64> %insertElmt37, i64 %40, i32 3
  store <4 x i64> %insertElmt38, <4 x i64>* %allocaVec6, align 16
  %41 = load <4 x i64>, <4 x i64>* %allocaVec6, align 16
  %Vop39 = ashr <4 x i64> %41, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop39, <4 x i64>* %allocaVec6
  %42 = load <4 x i64>, <4 x i64>* %allocaVec6, align 4
  %extractE41 = extractelement <4 x i64> %42, i64 0
  %extractE42 = extractelement <4 x i64> %42, i64 1
  %extractE43 = extractelement <4 x i64> %42, i64 2
  %sum44 = add i64 %extractE41, %extractE42
  %sum45 = add i64 %sum44, %extractE43
  %43 = ashr i64 %40, 1
  %Fmul40 = mul i64 %43, 3
  store i64 %43, i64* %Recovery2
  %Fcmp46 = icmp ne i64 %sum45, %Fmul40
  br i1 %Fcmp46, label %44, label %48

; <label>:44:                                     ; preds = %39
  %remThree49 = sdiv i64 %sum45, %extractE41
  %FcmpThree50 = icmp ne i64 %remThree49, 3
  br i1 %FcmpThree50, label %45, label %46

; <label>:45:                                     ; preds = %44
  store i64 %43, i64* %Recovery2, align 8
  br label %47

; <label>:46:                                     ; preds = %44
  store i64 %extractE41, i64* %Recovery2, align 8
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %39, %47
  %ReplaceInst52 = load i64, i64* %Recovery2, align 8
  store i64 %ReplaceInst52, i64* %2, align 8
  br label %5

; <label>:49:                                     ; preds = %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define %struct.bfile* @bfopen(i8*, i8*) #0 {
  %3 = alloca %struct.bfile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfile*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i8* @malloc(i64 16)
  %8 = bitcast i8* %7 to %struct.bfile*
  store %struct.bfile* %8, %struct.bfile** %6, align 8
  %9 = load %struct.bfile*, %struct.bfile** %6, align 8
  %10 = icmp eq %struct.bfile* null, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store %struct.bfile* null, %struct.bfile** %3, align 8
  br label %31

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %13, i8* %14)
  %16 = load %struct.bfile*, %struct.bfile** %6, align 8
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 0
  store %struct._IO_FILE* %15, %struct._IO_FILE** %17, align 8
  %18 = load %struct.bfile*, %struct.bfile** %6, align 8
  %19 = getelementptr inbounds %struct.bfile, %struct.bfile* %18, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = icmp eq %struct._IO_FILE* null, %20
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %12
  %23 = load %struct.bfile*, %struct.bfile** %6, align 8
  %24 = bitcast %struct.bfile* %23 to i8*
  call void @free(i8* %24)
  store %struct.bfile* null, %struct.bfile** %3, align 8
  br label %31

; <label>:25:                                     ; preds = %12
  %26 = load %struct.bfile*, %struct.bfile** %6, align 8
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 2
  store i8 0, i8* %27, align 1
  %28 = load %struct.bfile*, %struct.bfile** %6, align 8
  %29 = getelementptr inbounds %struct.bfile, %struct.bfile* %28, i32 0, i32 4
  store i8 0, i8* %29, align 1
  %30 = load %struct.bfile*, %struct.bfile** %6, align 8
  store %struct.bfile* %30, %struct.bfile** %3, align 8
  br label %31

; <label>:31:                                     ; preds = %25, %22, %11
  %32 = load %struct.bfile*, %struct.bfile** %3, align 8
  ret %struct.bfile* %32
}

declare i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @free(i8*) #1

; Function Attrs: nounwind
define i32 @bfread(%struct.bfile*) #0 {
  %allocaVec = alloca <4 x i8>, align 16
  %Recovery = alloca i8, align 1
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %2 = alloca %struct.bfile*, align 8
  store %struct.bfile* %0, %struct.bfile** %2, align 8
  %3 = load %struct.bfile*, %struct.bfile** %2, align 8
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bfile*, %struct.bfile** %2, align 8
  %10 = getelementptr inbounds %struct.bfile, %struct.bfile* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @fgetc(%struct._IO_FILE* %11)
  %13 = trunc i32 %12 to i8
  %14 = load %struct.bfile*, %struct.bfile** %2, align 8
  %15 = getelementptr inbounds %struct.bfile, %struct.bfile* %14, i32 0, i32 1
  store i8 %13, i8* %15, align 8
  %16 = load %struct.bfile*, %struct.bfile** %2, align 8
  %17 = getelementptr inbounds %struct.bfile, %struct.bfile* %16, i32 0, i32 2
  store i8 8, i8* %17, align 1
  br label %18

; <label>:18:                                     ; preds = %8, %1
  %19 = load %struct.bfile*, %struct.bfile** %2, align 8
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = add i8 %21, -1
  store i8 %22, i8* %20, align 1
  %23 = load %struct.bfile*, %struct.bfile** %2, align 8
  %24 = getelementptr inbounds %struct.bfile, %struct.bfile* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = load %struct.bfile*, %struct.bfile** %2, align 8
  %28 = getelementptr inbounds %struct.bfile, %struct.bfile* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @bfwrite(i32, %struct.bfile*) #0 {
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
  %4 = alloca %struct.bfile*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bfile* %1, %struct.bfile** %4, align 8
  %5 = load %struct.bfile*, %struct.bfile** %4, align 8
  %6 = getelementptr inbounds %struct.bfile, %struct.bfile* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 8, %8
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %2
  %11 = load %struct.bfile*, %struct.bfile** %4, align 8
  %12 = getelementptr inbounds %struct.bfile, %struct.bfile* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 2
  %14 = sext i8 %13 to i32
  %15 = load %struct.bfile*, %struct.bfile** %4, align 8
  %16 = getelementptr inbounds %struct.bfile, %struct.bfile* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @fputc(i32 %14, %struct._IO_FILE* %17)
  %19 = load %struct.bfile*, %struct.bfile** %4, align 8
  %20 = getelementptr inbounds %struct.bfile, %struct.bfile* %19, i32 0, i32 4
  store i8 0, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %10, %2
  %22 = load %struct.bfile*, %struct.bfile** %4, align 8
  %23 = getelementptr inbounds %struct.bfile, %struct.bfile* %22, i32 0, i32 4
  %24 = load i8, i8* %23, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* %23, align 1
  %26 = load %struct.bfile*, %struct.bfile** %4, align 8
  %27 = getelementptr inbounds %struct.bfile, %struct.bfile* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 2
  %29 = sext i8 %28 to i32
  %30 = shl i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 2
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 1
  %34 = load %struct.bfile*, %struct.bfile** %4, align 8
  %35 = getelementptr inbounds %struct.bfile, %struct.bfile* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 2
  %37 = sext i8 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 2
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @bfclose(%struct.bfile*) #0 {
  %2 = alloca %struct.bfile*, align 8
  store %struct.bfile* %0, %struct.bfile** %2, align 8
  %3 = load %struct.bfile*, %struct.bfile** %2, align 8
  %4 = getelementptr inbounds %struct.bfile, %struct.bfile* %3, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* %5)
  %7 = load %struct.bfile*, %struct.bfile** %2, align 8
  %8 = bitcast %struct.bfile* %7 to i8*
  call void @free(i8* %8)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @bitstring(i8*, i64, i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %5 = alloca i8*, align 8
  %allocaVec4 = alloca <4 x i64>, align 16
  %6 = alloca i64, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %11, i32 0
  %insertElmt9 = insertelement <4 x i32> %insertElmt, i32 %11, i32 1
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %11, i32 2
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %11, i32 3
  store <4 x i32> %insertElmt11, <4 x i32>* %allocaVec6, align 16
  %12 = load i32, i32* %7, align 4
  %insertElmt12 = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %12, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %12, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %12, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec5, align 16
  %13 = load i32, i32* %7, align 4
  %insertElmt16 = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %13, i32 1
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %13, i32 2
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %13, i32 3
  store <4 x i32> %insertElmt19, <4 x i32>* %allocaVec5, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop = ashr <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %15 = ashr i32 %13, 2
  %16 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop20 = add <4 x i32> %16, %Vop
  %17 = add nsw i32 %12, %15
  %18 = load i32, i32* %7, align 4
  %insertElmt21 = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %18, i32 1
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %18, i32 2
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %18, i32 3
  store <4 x i32> %insertElmt24, <4 x i32>* %allocaVec5, align 16
  %19 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %20 = srem i32 %18, 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i32 0, i32 1
  %23 = sub nsw i32 %17, %22
  %24 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  store <4 x i32> %Vop20, <4 x i32>* %allocaVec8
  %25 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %25, i64 0
  %extractE25 = extractelement <4 x i32> %25, i64 1
  %extractE26 = extractelement <4 x i32> %25, i64 2
  %sum = add i32 %extractE, %extractE25
  %sum27 = add i32 %sum, %extractE26
  %26 = sub nsw i32 %11, %23
  %Fmul = mul i32 %26, 3
  store i32 %26, i32* %Recovery
  %Fcmp = icmp ne i32 %sum27, %Fmul
  br i1 %Fcmp, label %27, label %31

; <label>:27:                                     ; preds = %4
  %remThree = sdiv i32 %sum27, %extractE
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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %9, align 4
  br label %32

; <label>:32:                                     ; preds = %48, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 32, i8* %37, align 1
  br label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %9, align 4
  %insertElmt28 = insertelement <4 x i32> undef, i32 %40, i32 0
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %40, i32 1
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %40, i32 2
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %40, i32 3
  store <4 x i32> %insertElmt31, <4 x i32>* %allocaVec7, align 16
  %41 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop32 = add <4 x i32> %41, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop32, <4 x i32>* %allocaVec7
  %42 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE34 = extractelement <4 x i32> %42, i64 0
  %extractE35 = extractelement <4 x i32> %42, i64 1
  %extractE36 = extractelement <4 x i32> %42, i64 2
  %sum37 = add i32 %extractE34, %extractE35
  %sum38 = add i32 %sum37, %extractE36
  %43 = add nsw i32 %40, 1
  %Fmul33 = mul i32 %43, 3
  store i32 %43, i32* %Recovery1
  %Fcmp39 = icmp ne i32 %sum38, %Fmul33
  br i1 %Fcmp39, label %44, label %48

; <label>:44:                                     ; preds = %39
  %remThree55 = sdiv i32 %sum38, %extractE34
  %FcmpThree56 = icmp ne i32 %remThree55, 3
  br i1 %FcmpThree56, label %45, label %46

; <label>:45:                                     ; preds = %44
  store i32 %43, i32* %Recovery1, align 4
  br label %47

; <label>:46:                                     ; preds = %44
  store i32 %extractE34, i32* %Recovery1, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %39, %47
  %ReplaceInst57 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst57, i32* %9, align 4
  br label %32

; <label>:49:                                     ; preds = %32
  br label %50

; <label>:50:                                     ; preds = %78, %49
  %51 = load i32, i32* %7, align 4
  %insertElmt40 = insertelement <4 x i32> undef, i32 %51, i32 0
  %insertElmt41 = insertelement <4 x i32> %insertElmt40, i32 %51, i32 1
  %insertElmt42 = insertelement <4 x i32> %insertElmt41, i32 %51, i32 2
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %51, i32 3
  store <4 x i32> %insertElmt43, <4 x i32>* %allocaVec5, align 16
  %52 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop44 = add <4 x i32> %52, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop44, <4 x i32>* %allocaVec5
  %53 = add nsw i32 %51, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %79

; <label>:55:                                     ; preds = %50
  %56 = load i64, i64* %6, align 8
  %insertElmt45 = insertelement <4 x i64> undef, i64 %56, i32 0
  %insertElmt46 = insertelement <4 x i64> %insertElmt45, i64 %56, i32 1
  %insertElmt47 = insertelement <4 x i64> %insertElmt46, i64 %56, i32 2
  %insertElmt48 = insertelement <4 x i64> %insertElmt47, i64 %56, i32 3
  store <4 x i64> %insertElmt48, <4 x i64>* %allocaVec4, align 16
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = load <4 x i64>, <4 x i64>* %allocaVec4, align 16
  store i64 %58, i64* %CastInst
  %60 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %60, i32 0
  %insertCast49 = insertelement <4 x i64> %insertCast, i64 %60, i32 1
  %insertCast50 = insertelement <4 x i64> %insertCast49, i64 %60, i32 2
  %insertCast51 = insertelement <4 x i64> %insertCast50, i64 %60, i32 3
  store <4 x i64> %insertCast51, <4 x i64>* %CastInstVec, align 4
  %61 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop52 = ashr <4 x i64> %59, %61
  %62 = ashr i64 %56, %58
  %Vop53 = and <4 x i64> %Vop52, <i64 1, i64 1, i64 1, i64 1>
  %63 = and i64 %62, 1
  %Vop54 = add <4 x i64> %Vop53, <i64 48, i64 48, i64 48, i64 48>
  %64 = add nsw i64 %63, 48
  %65 = trunc i64 %64 to i8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %7, align 4
  %69 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %70 = srem i32 %68, 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

; <label>:72:                                     ; preds = %55
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  store i8 32, i8* %76, align 1
  br label %78

; <label>:78:                                     ; preds = %75, %72, %55
  br label %50

; <label>:79:                                     ; preds = %50
  %80 = load i8*, i8** %5, align 8
  store i8 0, i8* %80, align 1
  ret void
}

; Function Attrs: nounwind
define i32 @bstr_i(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %2 = alloca i8*, align 8
  %allocaVec2 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec3
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %43, %1
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %16)
  %18 = icmp ne i8* %17, null
  br label %19

; <label>:19:                                     ; preds = %13, %8, %5
  %20 = phi i1 [ false, %8 ], [ false, %5 ], [ %18, %13 ]
  br i1 %20, label %21, label %44

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
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

declare i8* @strchr(i8*, i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
