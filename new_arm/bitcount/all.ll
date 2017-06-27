; ModuleID = 'all.bc'
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
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add i32 %4, 8
  %6 = sub i32 %5, 1
  %7 = udiv i32 %6, 8
  %8 = call arm_aapcscc i8* @calloc(i32 %7, i32 1)
  store i8* %8, i8** %3, align 4
  %9 = load i8*, i8** %3, align 4
  ret i8* %9
}

declare arm_aapcscc i8* @calloc(i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @getbit(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 4
  %8 = getelementptr inbounds i8, i8* %7, i32 %6
  store i8* %8, i8** %3, align 4
  %9 = load i8*, i8** %3, align 4
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 8
  %14 = shl i32 1, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind
define arm_aapcscc void @setbit(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 8
  %9 = load i8*, i8** %4, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 %8
  store i8* %10, i8** %4, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = srem i32 %14, 8
  %16 = shl i32 1, %15
  %17 = load i8*, i8** %4, align 4
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %16
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  br label %32

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 8
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i8*, i8** %4, align 4
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

; <label>:32:                                     ; preds = %22, %13
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @flipbit(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 4
  %8 = getelementptr inbounds i8, i8* %7, i32 %6
  store i8* %8, i8** %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 8
  %11 = shl i32 1, %10
  %12 = load i8*, i8** %3, align 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, %11
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %12, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bit_count(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %17

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %10, %6
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  store i32 %14, i32* %2, align 4
  %15 = icmp ne i32 0, %14
  br i1 %15, label %7, label %16

; <label>:16:                                     ; preds = %10
  br label %17

; <label>:17:                                     ; preds = %16, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bitcount(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -1431655766
  %5 = lshr i32 %4, 1
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 1431655765
  %8 = add i32 %5, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, -858993460
  %11 = lshr i32 %10, 2
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 858993459
  %14 = add i32 %11, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, -252645136
  %17 = lshr i32 %16, 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 252645135
  %20 = add i32 %17, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, -16711936
  %23 = lshr i32 %22, 8
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 16711935
  %26 = add i32 %23, %25
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 65535
  %32 = add i32 %29, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcount(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 15
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %4
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 240
  %10 = lshr i32 %9, 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %7, %13
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 3840
  %17 = lshr i32 %16, 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %14, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 61440
  %24 = lshr i32 %23, 12
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %21, %27
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 983040
  %31 = lshr i32 %30, 16
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %28, %34
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 15728640
  %38 = lshr i32 %37, 20
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %35, %41
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 251658240
  %45 = lshr i32 %44, 24
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %42, %48
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, -268435456
  %52 = lshr i32 %51, 28
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %49, %55
  ret i32 %56
}

; Function Attrs: nounwind
define arm_aapcscc i32 @BW_btbl_bitcount(i32) #0 {
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
  %20 = add nsw i32 %12, %19
  %21 = bitcast %union.anon* %3 to [4 x i8]*
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = bitcast %union.anon* %3 to [4 x i8]*
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i32 0, i32 2
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %28, %35
  ret i32 %36
}

; Function Attrs: nounwind
define arm_aapcscc i32 @AR_btbl_bitcount(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
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
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i8*, i8** %3, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 4
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i8*, i8** %3, align 4
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i32 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: nounwind
define arm_aapcscc i32 @ntbl_bitcnt(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 15
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i32 0, i32 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 0, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call arm_aapcscc i32 @ntbl_bitcnt(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: nounwind
define arm_aapcscc i32 @btbl_bitcnt(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @bits.1, i32 0, i32 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %2, align 4
  %14 = icmp ne i32 0, %13
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call arm_aapcscc i32 @btbl_bitcnt(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %9, align 8
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
  store i32 0, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %79, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %82

; <label>:32:                                     ; preds = %29
  %33 = call arm_aapcscc i32 @clock()
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %34 = call arm_aapcscc i32 @rand()
  store i32 %34, i32* %16, align 4
  br label %35

; <label>:35:                                     ; preds = %47, %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds [7 x i32 (i32)*], [7 x i32 (i32)*]* @main.pBitCntFunc, i32 0, i32 %40
  %42 = load i32 (i32)*, i32 (i32)** %41, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call arm_aapcscc i32 %42(i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %15, align 4
  br label %47

; <label>:47:                                     ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 13
  store i32 %51, i32* %16, align 4
  br label %35

; <label>:52:                                     ; preds = %35
  %53 = call arm_aapcscc i32 @clock()
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+06
  store double %58, double* %8, align 8
  %59 = load double, double* %8, align 8
  %60 = load double, double* %9, align 8
  %61 = fcmp olt double %59, %60
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %52
  %63 = load double, double* %8, align 8
  store double %63, double* %9, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %12, align 4
  br label %65

; <label>:65:                                     ; preds = %62, %52
  %66 = load double, double* %8, align 8
  %67 = load double, double* %10, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %65
  %70 = load double, double* %8, align 8
  store double %70, double* %10, align 8
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %13, align 4
  br label %72

; <label>:72:                                     ; preds = %69, %65
  %73 = load i32, i32* %11, align 4
  %74 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %73
  %75 = load i8*, i8** %74, align 4
  %76 = load double, double* %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %75, double %76, i32 %77)
  br label %79

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %29

; <label>:82:                                     ; preds = %29
  %83 = load i32, i32* %12, align 4
  %84 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %83
  %85 = load i8*, i8** %84, align 4
  %86 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %85)
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i32 0, i32 %87
  %89 = load i8*, i8** %88, align 4
  %90 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %89)
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %18, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 32
  br label %11

; <label>:11:                                     ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %11
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %5

; <label>:23:                                     ; preds = %11
  %24 = load i32, i32* %4, align 4
  ret i32 %24
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
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* %7, align 4
  %17 = srem i32 %16, 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %18, i32 0, i32 1
  %20 = sub nsw i32 %15, %19
  %21 = sub nsw i32 %11, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

; <label>:22:                                     ; preds = %29, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %5, align 4
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 4
  store i8 32, i8* %27, align 1
  br label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %22

; <label>:32:                                     ; preds = %22
  br label %33

; <label>:33:                                     ; preds = %55, %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %56

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = add nsw i32 %41, 48
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 4
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %7, align 4
  %47 = srem i32 %46, 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %5, align 4
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 4
  store i8 32, i8* %53, align 1
  br label %55

; <label>:55:                                     ; preds = %52, %49, %37
  br label %33

; <label>:56:                                     ; preds = %33
  %57 = load i8*, i8** %5, align 4
  store i8 0, i8* %57, align 1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @bstr_i(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %21, %1
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
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %2, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 4
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 %25, 48
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 1
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %5

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
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
