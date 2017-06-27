; ModuleID = 'crc_t.bc'
source_filename = "crc_32.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

@crc_32_tab = internal global [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%08lX %7ld %s\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @updateCRC32(i8 zeroext, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec1 = alloca <4 x i8>, align 16
  %3 = alloca i8, align 1
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %5, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %5, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %5, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  store i32 %7, i32* %CastInst
  %9 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %9, i32 0
  %insertCast6 = insertelement <4 x i32> %insertCast, i32 %9, i32 1
  %insertCast7 = insertelement <4 x i32> %insertCast6, i32 %9, i32 2
  %insertCast8 = insertelement <4 x i32> %insertCast7, i32 %9, i32 3
  store <4 x i32> %insertCast8, <4 x i32>* %CastInstVec, align 4
  %10 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = xor <4 x i32> %8, %10
  %11 = xor i32 %5, %7
  %Vop9 = and <4 x i32> %Vop, <i32 255, i32 255, i32 255, i32 255>
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @crc_32_tab, i32 0, i32 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 8
  %17 = xor i32 %14, %16
  ret i32 %17
}

; Function Attrs: nounwind
define arm_aapcscc i32 @crc32file(i8*, i32*, i32*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec4 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca %struct._IO_FILE*, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32* %1, i32** %6, align 4
  store i32* %2, i32** %7, align 4
  store i32 -1, i32* %9, align 4
  %11 = load i32*, i32** %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 4
  %13 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %8, align 4
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 4
  call arm_aapcscc void @perror(i8* %16)
  store i32 -1, i32* %4, align 4
  br label %58

; <label>:17:                                     ; preds = %3
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 4
  %20 = call arm_aapcscc i32 @getc(%struct._IO_FILE* %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %7, align 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = xor i32 %26, %29
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc_32_tab, i32 0, i32 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %34, 8
  %36 = xor i32 %33, %35
  store i32 %36, i32* %9, align 4
  br label %18

; <label>:37:                                     ; preds = %18
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 4
  %39 = call arm_aapcscc i32 @ferror(%struct._IO_FILE* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %5, align 4
  call arm_aapcscc void @perror(i8* %42)
  %43 = load i32*, i32** %7, align 4
  store i32 -1, i32* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %41, %37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 4
  %46 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %45)
  %47 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %47, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt, i32 %47, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %47, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %47, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec5, align 16
  %48 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop = xor <4 x i32> %48, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec5
  %49 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %49, i64 0
  %extractE10 = extractelement <4 x i32> %49, i64 1
  %extractE11 = extractelement <4 x i32> %49, i64 2
  %sum = add i32 %extractE, %extractE10
  %sum12 = add i32 %sum, %extractE11
  %50 = xor i32 %47, -1
  %Fmul = mul i32 %50, 3
  store i32 %50, i32* %Recovery1
  %Fcmp = icmp ne i32 %sum12, %Fmul
  br i1 %Fcmp, label %51, label %55

; <label>:51:                                     ; preds = %44
  %remThree = sdiv i32 %sum12, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %52, label %53

; <label>:52:                                     ; preds = %51
  store i32 %50, i32* %Recovery1, align 4
  br label %54

; <label>:53:                                     ; preds = %51
  store i32 %extractE, i32* %Recovery1, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %52
  br label %55

; <label>:55:                                     ; preds = %44, %54
  %56 = load i32, i32* %Recovery1, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %6, align 4
  store i32 %50, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

; <label>:58:                                     ; preds = %55, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc void @perror(i8*) #1

declare arm_aapcscc i32 @getc(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @ferror(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @crc32buf(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %3 = alloca i8*, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %33, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertElmt4 = insertelement <4 x i32> %insertElmt, i32 %10, i32 1
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %10, i32 2
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %10, i32 3
  store <4 x i32> %insertElmt6, <4 x i32>* %allocaVec3, align 16
  %11 = load i8*, i8** %3, align 4
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  store i32 %13, i32* %CastInst
  %15 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %15, i32 0
  %insertCast7 = insertelement <4 x i32> %insertCast, i32 %15, i32 1
  %insertCast8 = insertelement <4 x i32> %insertCast7, i32 %15, i32 2
  %insertCast9 = insertelement <4 x i32> %insertCast8, i32 %15, i32 3
  store <4 x i32> %insertCast9, <4 x i32>* %CastInstVec, align 4
  %16 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = xor <4 x i32> %14, %16
  %17 = xor i32 %10, %13
  %Vop10 = and <4 x i32> %Vop, <i32 255, i32 255, i32 255, i32 255>
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* @crc_32_tab, i32 0, i32 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = lshr i32 %21, 8
  %23 = xor i32 %20, %22
  store i32 %23, i32* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %9
  %25 = load i32, i32* %4, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %25, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %25, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %25, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %25, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec2, align 16
  %26 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop15 = add <4 x i32> %26, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec2
  %27 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %27, i64 0
  %extractE16 = extractelement <4 x i32> %27, i64 1
  %extractE17 = extractelement <4 x i32> %27, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %28 = add i32 %25, -1
  %Fmul = mul i32 %28, 3
  store i32 %28, i32* %Recovery
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %29, label %33

; <label>:29:                                     ; preds = %24
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %30, label %31

; <label>:30:                                     ; preds = %29
  store i32 %28, i32* %Recovery, align 4
  br label %32

; <label>:31:                                     ; preds = %29
  store i32 %extractE, i32* %Recovery, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %30
  br label %33

; <label>:33:                                     ; preds = %24, %32
  %34 = load i32, i32* %Recovery, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i8*, i8** %3, align 4
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 4
  br label %6

; <label>:37:                                     ; preds = %6
  %38 = load i32, i32* %5, align 4
  %insertElmt19 = insertelement <4 x i32> undef, i32 %38, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %38, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %38, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %38, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec3, align 16
  %39 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop23 = xor <4 x i32> %39, <i32 -1, i32 -1, i32 -1, i32 -1>
  %40 = xor i32 %38, -1
  ret i32 %40
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
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
  %5 = alloca i8**, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %2
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
  %19 = load i32, i32* %Recovery, align 4
  store i32 %19, i32* %4, align 4
  %20 = icmp sgt i32 %13, 0
  br i1 %20, label %21, label %43

; <label>:21:                                     ; preds = %18
  %22 = load i8**, i8*** %5, align 4
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %5, align 4
  %24 = load i8*, i8** %23, align 4
  %25 = call arm_aapcscc i32 @crc32file(i8* %24, i32* %6, i32* %7)
  %26 = load i32, i32* %8, align 4
  %insertElmt15 = insertelement <4 x i32> undef, i32 %26, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %26, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %26, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %26, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec8, align 16
  %27 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  store i32 %25, i32* %CallInst
  %28 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %28, i32 0
  %insertCall19 = insertelement <4 x i32> %insertCall, i32 %28, i32 1
  %insertCall20 = insertelement <4 x i32> %insertCall19, i32 %28, i32 2
  %insertCall21 = insertelement <4 x i32> %insertCall20, i32 %28, i32 3
  store <4 x i32> %insertCall21, <4 x i32>* %CallInstVec, align 4
  %29 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop22 = or <4 x i32> %27, %29
  store <4 x i32> %Vop22, <4 x i32>* %allocaVec8
  %30 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE24 = extractelement <4 x i32> %30, i64 0
  %extractE25 = extractelement <4 x i32> %30, i64 1
  %extractE26 = extractelement <4 x i32> %30, i64 2
  %sum27 = add i32 %extractE24, %extractE25
  %sum28 = add i32 %sum27, %extractE26
  %31 = or i32 %26, %25
  %Fmul23 = mul i32 %31, 3
  store i32 %31, i32* %Recovery1
  %Fcmp29 = icmp ne i32 %sum28, %Fmul23
  br i1 %Fcmp29, label %32, label %36

; <label>:32:                                     ; preds = %21
  %remThree30 = sdiv i32 %sum28, %extractE24
  %FcmpThree31 = icmp ne i32 %remThree30, 3
  br i1 %FcmpThree31, label %33, label %34

; <label>:33:                                     ; preds = %32
  store i32 %31, i32* %Recovery1, align 4
  br label %35

; <label>:34:                                     ; preds = %32
  store i32 %extractE24, i32* %Recovery1, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %33
  br label %36

; <label>:36:                                     ; preds = %21, %35
  %37 = load i32, i32* %Recovery1, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8**, i8*** %5, align 4
  %41 = load i8*, i8** %40, align 4
  %42 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %38, i32 %39, i8* %41)
  br label %9

; <label>:43:                                     ; preds = %18
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
