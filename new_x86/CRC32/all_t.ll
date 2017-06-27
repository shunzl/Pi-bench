; ModuleID = 'all_t.bc'
source_filename = "crc_32.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque

@crc_32_tab = internal global [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%08lX %7ld %s\0A\00", align 1

; Function Attrs: nounwind
define i64 @updateCRC32(i8 zeroext, i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec1 = alloca <4 x i8>, align 16
  %3 = alloca i8, align 1
  %allocaVec2 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %5, i32 0
  %insertElmt3 = insertelement <4 x i64> %insertElmt, i64 %5, i32 1
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %5, i32 2
  %insertElmt5 = insertelement <4 x i64> %insertElmt4, i64 %5, i32 3
  store <4 x i64> %insertElmt5, <4 x i64>* %allocaVec2, align 16
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i64
  %8 = load <4 x i64>, <4 x i64>* %allocaVec2, align 16
  store i64 %7, i64* %CastInst
  %9 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %9, i32 0
  %insertCast6 = insertelement <4 x i64> %insertCast, i64 %9, i32 1
  %insertCast7 = insertelement <4 x i64> %insertCast6, i64 %9, i32 2
  %insertCast8 = insertelement <4 x i64> %insertCast7, i64 %9, i32 3
  store <4 x i64> %insertCast8, <4 x i64>* %CastInstVec, align 4
  %10 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = xor <4 x i64> %8, %10
  %11 = xor i64 %5, %7
  %Vop9 = and <4 x i64> %Vop, <i64 255, i64 255, i64 255, i64 255>
  %12 = and i64 %11, 255
  %13 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = lshr i64 %15, 8
  %17 = xor i64 %14, %16
  ret i64 %17
}

; Function Attrs: nounwind
define i32 @crc32file(i8*, i64*, i64*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec2 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec3 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %allocaVec5 = alloca <4 x i64>, align 16
  %9 = alloca i64, align 8
  %allocaVec6 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store <4 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <4 x i64>* %allocaVec5
  store i64 4294967295, i64* %9, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %8, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8
  call void @perror(i8* %16)
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %allocaVec4
  store i32 -1, i32* %4, align 4
  br label %57

; <label>:17:                                     ; preds = %3
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %20 = call i32 @getc(%struct._IO_FILE* %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i64
  %30 = xor i64 %26, %29
  %31 = and i64 %30, 255
  %32 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = lshr i64 %34, 8
  %36 = xor i64 %33, %35
  store i64 %36, i64* %9, align 8
  br label %18

; <label>:37:                                     ; preds = %18
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %39 = call i32 @ferror(%struct._IO_FILE* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %5, align 8
  call void @perror(i8* %42)
  %43 = load i64*, i64** %7, align 8
  store i64 -1, i64* %43, align 8
  br label %44

; <label>:44:                                     ; preds = %41, %37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %46 = call i32 @fclose(%struct._IO_FILE* %45)
  %47 = load i64, i64* %9, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %47, i32 0
  %insertElmt7 = insertelement <4 x i64> %insertElmt, i64 %47, i32 1
  %insertElmt8 = insertelement <4 x i64> %insertElmt7, i64 %47, i32 2
  %insertElmt9 = insertelement <4 x i64> %insertElmt8, i64 %47, i32 3
  store <4 x i64> %insertElmt9, <4 x i64>* %allocaVec5, align 16
  %48 = load <4 x i64>, <4 x i64>* %allocaVec5, align 16
  %Vop = xor <4 x i64> %48, <i64 -1, i64 -1, i64 -1, i64 -1>
  store <4 x i64> %Vop, <4 x i64>* %allocaVec5
  %49 = load <4 x i64>, <4 x i64>* %allocaVec5, align 4
  %extractE = extractelement <4 x i64> %49, i64 0
  %extractE10 = extractelement <4 x i64> %49, i64 1
  %extractE11 = extractelement <4 x i64> %49, i64 2
  %sum = add i64 %extractE, %extractE10
  %sum12 = add i64 %sum, %extractE11
  %50 = xor i64 %47, -1
  %Fmul = mul i64 %50, 3
  store i64 %50, i64* %Recovery1
  %Fcmp = icmp ne i64 %sum12, %Fmul
  br i1 %Fcmp, label %51, label %55

; <label>:51:                                     ; preds = %44
  %remThree = sdiv i64 %sum12, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %52, label %53

; <label>:52:                                     ; preds = %51
  store i64 %50, i64* %Recovery1, align 8
  br label %54

; <label>:53:                                     ; preds = %51
  store i64 %extractE, i64* %Recovery1, align 8
  br label %54

; <label>:54:                                     ; preds = %53, %52
  br label %55

; <label>:55:                                     ; preds = %44, %54
  %ReplaceInst = load i64, i64* %Recovery1, align 8
  store i64 %ReplaceInst, i64* %9, align 8
  %56 = load i64*, i64** %6, align 8
  store i64 %50, i64* %56, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %4, align 4
  br label %57

; <label>:57:                                     ; preds = %55, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @perror(i8*) #1

declare i32 @getc(%struct._IO_FILE*) #1

declare i32 @ferror(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define i64 @crc32buf(i8*, i64) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec1 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %3 = alloca i8*, align 8
  %allocaVec2 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  %allocaVec3 = alloca <4 x i64>, align 16
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store <4 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <4 x i64>* %allocaVec3
  store i64 4294967295, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %33, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %5, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %10, i32 0
  %insertElmt4 = insertelement <4 x i64> %insertElmt, i64 %10, i32 1
  %insertElmt5 = insertelement <4 x i64> %insertElmt4, i64 %10, i32 2
  %insertElmt6 = insertelement <4 x i64> %insertElmt5, i64 %10, i32 3
  store <4 x i64> %insertElmt6, <4 x i64>* %allocaVec3, align 16
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = load <4 x i64>, <4 x i64>* %allocaVec3, align 16
  store i64 %13, i64* %CastInst
  %15 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %15, i32 0
  %insertCast7 = insertelement <4 x i64> %insertCast, i64 %15, i32 1
  %insertCast8 = insertelement <4 x i64> %insertCast7, i64 %15, i32 2
  %insertCast9 = insertelement <4 x i64> %insertCast8, i64 %15, i32 3
  store <4 x i64> %insertCast9, <4 x i64>* %CastInstVec, align 4
  %16 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = xor <4 x i64> %14, %16
  %17 = xor i64 %10, %13
  %Vop10 = and <4 x i64> %Vop, <i64 255, i64 255, i64 255, i64 255>
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = lshr i64 %21, 8
  %23 = xor i64 %20, %22
  store i64 %23, i64* %5, align 8
  br label %24

; <label>:24:                                     ; preds = %9
  %25 = load i64, i64* %4, align 8
  %insertElmt11 = insertelement <4 x i64> undef, i64 %25, i32 0
  %insertElmt12 = insertelement <4 x i64> %insertElmt11, i64 %25, i32 1
  %insertElmt13 = insertelement <4 x i64> %insertElmt12, i64 %25, i32 2
  %insertElmt14 = insertelement <4 x i64> %insertElmt13, i64 %25, i32 3
  store <4 x i64> %insertElmt14, <4 x i64>* %allocaVec2, align 16
  %26 = load <4 x i64>, <4 x i64>* %allocaVec2, align 16
  %Vop15 = add <4 x i64> %26, <i64 -1, i64 -1, i64 -1, i64 -1>
  store <4 x i64> %Vop15, <4 x i64>* %allocaVec2
  %27 = load <4 x i64>, <4 x i64>* %allocaVec2, align 4
  %extractE = extractelement <4 x i64> %27, i64 0
  %extractE16 = extractelement <4 x i64> %27, i64 1
  %extractE17 = extractelement <4 x i64> %27, i64 2
  %sum = add i64 %extractE, %extractE16
  %sum18 = add i64 %sum, %extractE17
  %28 = add i64 %25, -1
  %Fmul = mul i64 %28, 3
  store i64 %28, i64* %Recovery
  %Fcmp = icmp ne i64 %sum18, %Fmul
  br i1 %Fcmp, label %29, label %33

; <label>:29:                                     ; preds = %24
  %remThree = sdiv i64 %sum18, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %30, label %31

; <label>:30:                                     ; preds = %29
  store i64 %28, i64* %Recovery, align 8
  br label %32

; <label>:31:                                     ; preds = %29
  store i64 %extractE, i64* %Recovery, align 8
  br label %32

; <label>:32:                                     ; preds = %31, %30
  br label %33

; <label>:33:                                     ; preds = %24, %32
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  br label %6

; <label>:36:                                     ; preds = %6
  %37 = load i64, i64* %5, align 8
  %insertElmt19 = insertelement <4 x i64> undef, i64 %37, i32 0
  %insertElmt20 = insertelement <4 x i64> %insertElmt19, i64 %37, i32 1
  %insertElmt21 = insertelement <4 x i64> %insertElmt20, i64 %37, i32 2
  %insertElmt22 = insertelement <4 x i64> %insertElmt21, i64 %37, i32 3
  store <4 x i64> %insertElmt22, <4 x i64>* %allocaVec3, align 16
  %38 = load <4 x i64>, <4 x i64>* %allocaVec3, align 16
  %Vop23 = xor <4 x i64> %38, <i64 -1, i64 -1, i64 -1, i64 -1>
  %39 = xor i64 %37, -1
  ret i64 %39
}

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %allocaVec6 = alloca <4 x i64>, align 16
  %6 = alloca i64, align 8
  %allocaVec7 = alloca <4 x i64>, align 16
  %7 = alloca i64, align 8
  %allocaVec8 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %35, %2
  %10 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertElmt9 = insertelement <4 x i32> %insertElmt, i32 %10, i32 1
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %10, i32 2
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %10, i32 3
  store <4 x i32> %insertElmt11, <4 x i32>* %allocaVec5, align 16
  %11 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop = add <4 x i32> %11, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec5
  %12 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %12, i64 0
  %extractE12 = extractelement <4 x i32> %12, i64 1
  %extractE13 = extractelement <4 x i32> %12, i64 2
  %sum = add i32 %extractE, %extractE12
  %sum14 = add i32 %sum, %extractE13
  %13 = add nsw i32 %10, -1
  %Fmul = mul i32 %13, 3
  store i32 %13, i32* %Recovery
  %Fcmp = icmp ne i32 %sum14, %Fmul
  br i1 %Fcmp, label %14, label %18

; <label>:14:                                     ; preds = %9
  %remThree = sdiv i32 %sum14, %extractE
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

; <label>:18:                                     ; preds = %9, %17
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %4, align 4
  %19 = icmp sgt i32 %13, 0
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %18
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @crc32file(i8* %23, i64* %6, i64* %7)
  %25 = load i32, i32* %8, align 4
  %insertElmt15 = insertelement <4 x i32> undef, i32 %25, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %25, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %25, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %25, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec8, align 16
  %26 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  store i32 %24, i32* %CallInst
  %27 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %27, i32 0
  %insertCall19 = insertelement <4 x i32> %insertCall, i32 %27, i32 1
  %insertCall20 = insertelement <4 x i32> %insertCall19, i32 %27, i32 2
  %insertCall21 = insertelement <4 x i32> %insertCall20, i32 %27, i32 3
  store <4 x i32> %insertCall21, <4 x i32>* %CallInstVec, align 4
  %28 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop22 = or <4 x i32> %26, %28
  store <4 x i32> %Vop22, <4 x i32>* %allocaVec8
  %29 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE24 = extractelement <4 x i32> %29, i64 0
  %extractE25 = extractelement <4 x i32> %29, i64 1
  %extractE26 = extractelement <4 x i32> %29, i64 2
  %sum27 = add i32 %extractE24, %extractE25
  %sum28 = add i32 %sum27, %extractE26
  %30 = or i32 %25, %24
  %Fmul23 = mul i32 %30, 3
  store i32 %30, i32* %Recovery1
  %Fcmp29 = icmp ne i32 %sum28, %Fmul23
  br i1 %Fcmp29, label %31, label %35

; <label>:31:                                     ; preds = %20
  %remThree30 = sdiv i32 %sum28, %extractE24
  %FcmpThree31 = icmp ne i32 %remThree30, 3
  br i1 %FcmpThree31, label %32, label %33

; <label>:32:                                     ; preds = %31
  store i32 %30, i32* %Recovery1, align 4
  br label %34

; <label>:33:                                     ; preds = %31
  store i32 %extractE24, i32* %Recovery1, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %32
  br label %35

; <label>:35:                                     ; preds = %20, %34
  %ReplaceInst32 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst32, i32* %8, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 %36, i64 %37, i8* %39)
  br label %9

; <label>:41:                                     ; preds = %18
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
