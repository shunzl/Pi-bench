; ModuleID = 'all_small_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

@lowervec = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal global i8* null, align 8
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4
@patlen.1 = internal global i32 0, align 4
@pat.2 = internal global i8* null, align 8
@skip.3 = internal global [256 x i32] zeroinitializer, align 16
@skip2.4 = internal global i32 0, align 4
@pat.5 = internal global i8* null, align 8
@patlen.6 = internal global i32 0, align 4
@skip.7 = internal global [256 x i32] zeroinitializer, align 16
@skip2.8 = internal global i32 0, align 4
@len = internal global i64 0, align 8
@table = internal global [256 x i64] zeroinitializer, align 16
@findme = internal global i8* null, align 8
@main.find_strings = private unnamed_addr constant [58 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@main.search_strings = private unnamed_addr constant [57 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)], align 16
@.str.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"\22%s\22 is%s in \22%s\22\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c" [\22%s\22]\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"cabbie\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"It isn't here\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"But it is here\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"hodad\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"yoohoo\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"In recent years, the field of photonic \00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"crystals has found new\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"applications in the RF and microwave\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"regime. A new type of metallic\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"electromagnetic crystal has been\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"developed that is having a\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"significant impact on the field of\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"antennas. It consists of a\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"conductive surface, covered with a\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"special texture which alters its\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"electromagnetic properties. Made of solid\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"metal, the structure\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"conducts DC currents, but over a\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"particular frequency range it does\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"not conduct AC currents. It does not\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"reverse the phase of reflected\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"waves, and the effective image currents\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"appear in-phase, rather than\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"out-of-phase as they are on normal\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"conductors. Furthermore, surface\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"waves do not propagate, and instead\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"radiate efficiently into free\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"space. This new material, termed a\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"high-impedance surface, provides\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"a useful new ground plane for novel\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"low-profile antennas and other\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"electromagnetic structures.\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"The recent protests about the Michigamua\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"student organization have raised an\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"important question as to the proper nature\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"and scope of University involvement\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"with student organizations. Accordingly\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"the panel described in my Statement of\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"February 25, 2000 that is considering the\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"question of privileged space also will\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"consider under what circumstances and in\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"what ways the University, its\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"administrators and faculty members should\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"be associated with such organizations\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"and it will recommend guiding principles\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"in this regard. The University's\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"Executive Officers and I will then decide\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"whether and how to implement such\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"principles.\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"abb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dad\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yoo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hoo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"oh\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"regime\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"boom\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"impact\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"magnet\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"doom\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"loom\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"appears\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"conductor\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"wavez\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"termed\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"provide\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"about\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"proper\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"involve\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"describedly\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"thats\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"circumstance\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"the\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"such\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"guide\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"regard\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"officers\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"implement\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"principalities\00", align 1

; Function Attrs: nounwind
define void @bmha_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** @pat, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @patlen, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %66, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %70

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* @patlen, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @patlen, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

; <label>:19:                                     ; preds = %41, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %45

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = trunc i32 %23 to i8
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8*, i8** @pat, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %28, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %22
  br label %45

; <label>:40:                                     ; preds = %22
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %42, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %42, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %42, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %42, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %43 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %43, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %44 = add nsw i32 %42, -1
  store i32 %44, i32* %4, align 4
  br label %19

; <label>:45:                                     ; preds = %39, %19
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* @patlen, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %48, %45
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @patlen, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %63
  store i32 32767, i32* %64, align 4
  br label %65

; <label>:65:                                     ; preds = %61, %56
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %3, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %67, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %67, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %67, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %67, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec1, align 16
  %68 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop10 = add <4 x i32> %68, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop10, <4 x i32>* %allocaVec1
  %69 = add nsw i32 %67, 1
  store i32 %69, i32* %3, align 4
  br label %9

; <label>:70:                                     ; preds = %9
  %71 = load i32, i32* @patlen, align 4
  store i32 %71, i32* @skip2, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %72

; <label>:72:                                     ; preds = %113, %70
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @patlen, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %114

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** @pat, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** @pat, align 8
  %88 = load i32, i32* @patlen, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %86, %96
  br i1 %97, label %98, label %103

; <label>:98:                                     ; preds = %77
  %99 = load i32, i32* @patlen, align 4
  %100 = load i32, i32* %3, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* @skip2, align 4
  br label %103

; <label>:103:                                    ; preds = %98, %77
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop11 = add <4 x i32> %106, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop11, <4 x i32>* %allocaVec1
  %107 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %107, i64 0
  %extractE12 = extractelement <4 x i32> %107, i64 1
  %extractE13 = extractelement <4 x i32> %107, i64 2
  %sum = add i32 %extractE, %extractE12
  %sum14 = add i32 %sum, %extractE13
  %108 = add nsw i32 %105, 1
  %Fmul = mul i32 %108, 3
  store i32 %108, i32* %Recovery
  %Fcmp = icmp ne i32 %sum14, %Fmul
  br i1 %Fcmp, label %109, label %113

; <label>:109:                                    ; preds = %104
  %remThree = sdiv i32 %sum14, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %110, label %111

; <label>:110:                                    ; preds = %109
  store i32 %108, i32* %Recovery, align 4
  br label %112

; <label>:111:                                    ; preds = %109
  store i32 %extractE, i32* %Recovery, align 4
  br label %112

; <label>:112:                                    ; preds = %111, %110
  br label %113

; <label>:113:                                    ; preds = %104, %112
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %72

; <label>:114:                                    ; preds = %72
  ret void
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
define i8* @bmha_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @patlen, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %100

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %99, %16
  br label %22

; <label>:22:                                     ; preds = %34, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %22
  br label %22

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %37, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %37, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %37, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %37, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %38 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %38
  %39 = sub nsw i32 32767, %37
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %35
  store i8* null, i8** %3, align 8
  br label %100

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %43, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %43, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %43, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %44, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %45 = sub nsw i32 %43, 32767
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @patlen, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

; <label>:54:                                     ; preds = %87, %42
  %55 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %55, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %55, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %55, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %55, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %56 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %56, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %57 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %57, i64 0
  %extractE19 = extractelement <4 x i32> %57, i64 1
  %extractE20 = extractelement <4 x i32> %57, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %58 = add nsw i32 %55, -1
  %Fmul = mul i32 %58, 3
  store i32 %58, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %59, label %63

; <label>:59:                                     ; preds = %54
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %60, label %61

; <label>:60:                                     ; preds = %59
  store i32 %58, i32* %Recovery, align 4
  br label %62

; <label>:61:                                     ; preds = %59
  store i32 %extractE, i32* %Recovery, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %60
  br label %63

; <label>:63:                                     ; preds = %54, %62
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %7, align 4
  %64 = icmp sge i32 %58, 0
  br i1 %64, label %65, label %85

; <label>:65:                                     ; preds = %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** @pat, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %74, %83
  br label %85

; <label>:85:                                     ; preds = %65, %63
  %86 = phi i1 [ false, %63 ], [ %84, %65 ]
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %85
  br label %54

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %8, align 8
  store i8* %92, i8** %3, align 8
  br label %100

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* @skip2, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %93
  store i8* null, i8** %3, align 8
  br label %100

; <label>:99:                                     ; preds = %93
  br label %21

; <label>:100:                                    ; preds = %98, %91, %41, %15
  %101 = load i8*, i8** %3, align 8
  ret i8* %101
}

; Function Attrs: nounwind
define void @bmhi_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @patlen.1, align 4
  %8 = load i8*, i8** @pat.2, align 8
  %9 = load i32, i32* @patlen.1, align 4
  %10 = sext i32 %9 to i64
  %11 = call i8* @realloc(i8* %8, i64 %10)
  store i8* %11, i8** @pat.2, align 8
  %12 = load i8*, i8** @pat.2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %1
  call void @exit(i32 1) #5
  unreachable

; <label>:15:                                     ; preds = %1
  %16 = call i32 @atexit(void ()* @bhmi_cleanup)
  br label %17

; <label>:17:                                     ; preds = %15
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %35, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @patlen.1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 @toupper(i32 %28) #6
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** @pat.2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %36, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %36, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %36, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %36, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %37 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %37, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec1
  %38 = add nsw i32 %36, 1
  store i32 %38, i32* %3, align 4
  br label %18

; <label>:39:                                     ; preds = %18
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %48, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 %41, 255
  br i1 %42, label %43, label %52

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* @patlen.1, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop6 = add <4 x i32> %50, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop6, <4 x i32>* %allocaVec1
  %51 = add nsw i32 %49, 1
  store i32 %51, i32* %3, align 4
  br label %40

; <label>:52:                                     ; preds = %40
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %53

; <label>:53:                                     ; preds = %83, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @patlen.1, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %87

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* @patlen.1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load i8*, i8** @pat.2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* @patlen.1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = load i8*, i8** @pat.2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = call i32 @tolower(i32 %79) #6
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %81
  store i32 %73, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %58
  %84 = load i32, i32* %3, align 4
  %85 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop7 = add <4 x i32> %85, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop7, <4 x i32>* %allocaVec1
  %86 = add nsw i32 %84, 1
  store i32 %86, i32* %3, align 4
  br label %53

; <label>:87:                                     ; preds = %53
  %88 = load i8*, i8** @pat.2, align 8
  %89 = load i32, i32* @patlen.1, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %96
  store i32 32767, i32* %97, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @tolower(i32 %98) #6
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %100
  store i32 32767, i32* %101, align 4
  %102 = load i32, i32* @patlen.1, align 4
  store i32 %102, i32* @skip2.4, align 4
  store i32 0, i32* %3, align 4
  br label %103

; <label>:103:                                    ; preds = %132, %87
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @patlen.1, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %133

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** @pat.2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* @patlen.1, align 4
  %119 = load i32, i32* %3, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* @skip2.4, align 4
  br label %122

; <label>:122:                                    ; preds = %117, %108
  br label %123

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop8 = add <4 x i32> %125, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop8, <4 x i32>* %allocaVec1
  %126 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %126, i64 0
  %extractE9 = extractelement <4 x i32> %126, i64 1
  %extractE10 = extractelement <4 x i32> %126, i64 2
  %sum = add i32 %extractE, %extractE9
  %sum11 = add i32 %sum, %extractE10
  %127 = add nsw i32 %124, 1
  %Fmul = mul i32 %127, 3
  store i32 %127, i32* %Recovery
  %Fcmp = icmp ne i32 %sum11, %Fmul
  br i1 %Fcmp, label %128, label %132

; <label>:128:                                    ; preds = %123
  %remThree = sdiv i32 %sum11, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %129, label %130

; <label>:129:                                    ; preds = %128
  store i32 %127, i32* %Recovery, align 4
  br label %131

; <label>:130:                                    ; preds = %128
  store i32 %extractE, i32* %Recovery, align 4
  br label %131

; <label>:131:                                    ; preds = %130, %129
  br label %132

; <label>:132:                                    ; preds = %123, %131
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %103

; <label>:133:                                    ; preds = %103
  ret void
}

declare i8* @realloc(i8*, i64) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind
define void @bhmi_cleanup() #0 {
  %1 = load i8*, i8** @pat.2, align 8
  call void @free(i8* %1)
  ret void
}

declare i32 @atexit(void ()*) #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

declare void @free(i8*) #1

; Function Attrs: nounwind
define i8* @bmhi_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @patlen.1, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %95

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %94, %16
  br label %22

; <label>:22:                                     ; preds = %34, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %22
  br label %22

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %37, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %37, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %37, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %37, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %38 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %38
  %39 = sub nsw i32 32767, %37
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %35
  store i8* null, i8** %3, align 8
  br label %95

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %43, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %43, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %43, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %44, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %45 = sub nsw i32 %43, 32767
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @patlen.1, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

; <label>:54:                                     ; preds = %82, %42
  %55 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %55, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %55, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %55, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %55, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %56 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %56, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %57 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %57, i64 0
  %extractE19 = extractelement <4 x i32> %57, i64 1
  %extractE20 = extractelement <4 x i32> %57, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %58 = add nsw i32 %55, -1
  %Fmul = mul i32 %58, 3
  store i32 %58, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %59, label %63

; <label>:59:                                     ; preds = %54
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %60, label %61

; <label>:60:                                     ; preds = %59
  store i32 %58, i32* %Recovery, align 4
  br label %62

; <label>:61:                                     ; preds = %59
  store i32 %extractE, i32* %Recovery, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %60
  br label %63

; <label>:63:                                     ; preds = %54, %62
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %7, align 4
  %64 = icmp sge i32 %58, 0
  br i1 %64, label %65, label %80

; <label>:65:                                     ; preds = %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 @toupper(i32 %71) #6
  %73 = load i8*, i8** @pat.2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %72, %78
  br label %80

; <label>:80:                                     ; preds = %65, %63
  %81 = phi i1 [ false, %63 ], [ %79, %65 ]
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %80
  br label %54

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

; <label>:86:                                     ; preds = %83
  %87 = load i8*, i8** %8, align 8
  store i8* %87, i8** %3, align 8
  br label %95

; <label>:88:                                     ; preds = %83
  %89 = load i32, i32* @skip2.4, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %88
  store i8* null, i8** %3, align 8
  br label %95

; <label>:94:                                     ; preds = %88
  br label %21

; <label>:95:                                     ; preds = %93, %86, %41, %15
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

; Function Attrs: nounwind
define void @bmh_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** @pat.5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @patlen.6, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %17, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* @patlen.6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %18, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %18, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %18, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %19 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %19, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec1
  %20 = add nsw i32 %18, 1
  store i32 %20, i32* %3, align 4
  br label %9

; <label>:21:                                     ; preds = %9
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %38, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @patlen.6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* @patlen.6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i8*, i8** @pat.5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i64 0, i64 %36
  store i32 %30, i32* %37, align 4
  br label %38

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop6 = add <4 x i32> %40, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop6, <4 x i32>* %allocaVec1
  %41 = add nsw i32 %39, 1
  store i32 %41, i32* %3, align 4
  br label %22

; <label>:42:                                     ; preds = %22
  %43 = load i8*, i8** @pat.5, align 8
  %44 = load i32, i32* @patlen.6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i64 0, i64 %51
  store i32 32767, i32* %52, align 4
  %53 = load i32, i32* @patlen.6, align 4
  store i32 %53, i32* @skip2.8, align 4
  store i32 0, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %83, %42
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @patlen.6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %84

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** @pat.5, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* @patlen.6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* @skip2.8, align 4
  br label %73

; <label>:73:                                     ; preds = %68, %59
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop7 = add <4 x i32> %76, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop7, <4 x i32>* %allocaVec1
  %77 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %77, i64 0
  %extractE8 = extractelement <4 x i32> %77, i64 1
  %extractE9 = extractelement <4 x i32> %77, i64 2
  %sum = add i32 %extractE, %extractE8
  %sum10 = add i32 %sum, %extractE9
  %78 = add nsw i32 %75, 1
  %Fmul = mul i32 %78, 3
  store i32 %78, i32* %Recovery
  %Fcmp = icmp ne i32 %sum10, %Fmul
  br i1 %Fcmp, label %79, label %83

; <label>:79:                                     ; preds = %74
  %remThree = sdiv i32 %sum10, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %80, label %81

; <label>:80:                                     ; preds = %79
  store i32 %78, i32* %Recovery, align 4
  br label %82

; <label>:81:                                     ; preds = %79
  store i32 %extractE, i32* %Recovery, align 4
  br label %82

; <label>:82:                                     ; preds = %81, %80
  br label %83

; <label>:83:                                     ; preds = %74, %82
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  br label %54

; <label>:84:                                     ; preds = %54
  ret void
}

; Function Attrs: nounwind
define i8* @bmh_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @patlen.6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %94

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %93, %16
  br label %22

; <label>:22:                                     ; preds = %34, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %22
  br label %22

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %37, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %37, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %37, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %37, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %38 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %38
  %39 = sub nsw i32 32767, %37
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %35
  store i8* null, i8** %3, align 8
  br label %94

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %43, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %43, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %43, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %44, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %45 = sub nsw i32 %43, 32767
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @patlen.6, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

; <label>:54:                                     ; preds = %81, %42
  %55 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %55, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %55, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %55, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %55, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %56 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %56, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %57 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %57, i64 0
  %extractE19 = extractelement <4 x i32> %57, i64 1
  %extractE20 = extractelement <4 x i32> %57, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %58 = add nsw i32 %55, -1
  %Fmul = mul i32 %58, 3
  store i32 %58, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %59, label %63

; <label>:59:                                     ; preds = %54
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %60, label %61

; <label>:60:                                     ; preds = %59
  store i32 %58, i32* %Recovery, align 4
  br label %62

; <label>:61:                                     ; preds = %59
  store i32 %extractE, i32* %Recovery, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %60
  br label %63

; <label>:63:                                     ; preds = %54, %62
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %7, align 4
  %64 = icmp sge i32 %58, 0
  br i1 %64, label %65, label %79

; <label>:65:                                     ; preds = %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8*, i8** @pat.5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %71, %77
  br label %79

; <label>:79:                                     ; preds = %65, %63
  %80 = phi i1 [ false, %63 ], [ %78, %65 ]
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %79
  br label %54

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %82
  %86 = load i8*, i8** %8, align 8
  store i8* %86, i8** %3, align 8
  br label %94

; <label>:87:                                     ; preds = %82
  %88 = load i32, i32* @skip2.8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %87
  store i8* null, i8** %3, align 8
  br label %94

; <label>:93:                                     ; preds = %87
  br label %21

; <label>:94:                                     ; preds = %92, %85, %41, %15
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

; Function Attrs: nounwind
define void @init_search(i8*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %2 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i64>, align 16
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4)
  store i64 %5, i64* @len, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec1
  store i64 0, i64* %3, align 8
  br label %6

; <label>:6:                                      ; preds = %13, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ule i64 %7, 255
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* @len, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %11
  store i64 %10, i64* %12, align 8
  br label %13

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %3, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %14, i32 0
  %insertElmt2 = insertelement <4 x i64> %insertElmt, i64 %14, i32 1
  %insertElmt3 = insertelement <4 x i64> %insertElmt2, i64 %14, i32 2
  %insertElmt4 = insertelement <4 x i64> %insertElmt3, i64 %14, i32 3
  store <4 x i64> %insertElmt4, <4 x i64>* %allocaVec1, align 16
  %15 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop = add <4 x i64> %15, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop, <4 x i64>* %allocaVec1
  %16 = add i64 %14, 1
  store i64 %16, i64* %3, align 8
  br label %6

; <label>:17:                                     ; preds = %6
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec1
  store i64 0, i64* %3, align 8
  br label %18

; <label>:18:                                     ; preds = %42, %17
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @len, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %43

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* @len, align 8
  %24 = load i64, i64* %3, align 8
  %25 = sub i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load i8*, i8** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %31
  store i64 %26, i64* %32, align 8
  br label %33

; <label>:33:                                     ; preds = %22
  %34 = load i64, i64* %3, align 8
  %35 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop5 = add <4 x i64> %35, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop5, <4 x i64>* %allocaVec1
  %36 = load <4 x i64>, <4 x i64>* %allocaVec1, align 4
  %extractE = extractelement <4 x i64> %36, i64 0
  %extractE6 = extractelement <4 x i64> %36, i64 1
  %extractE7 = extractelement <4 x i64> %36, i64 2
  %sum = add i64 %extractE, %extractE6
  %sum8 = add i64 %sum, %extractE7
  %37 = add i64 %34, 1
  %Fmul = mul i64 %37, 3
  store i64 %37, i64* %Recovery
  %Fcmp = icmp ne i64 %sum8, %Fmul
  br i1 %Fcmp, label %38, label %42

; <label>:38:                                     ; preds = %33
  %remThree = sdiv i64 %sum8, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %39, label %40

; <label>:39:                                     ; preds = %38
  store i64 %37, i64* %Recovery, align 8
  br label %41

; <label>:40:                                     ; preds = %38
  store i64 %extractE, i64* %Recovery, align 8
  br label %41

; <label>:41:                                     ; preds = %40, %39
  br label %42

; <label>:42:                                     ; preds = %33, %41
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %3, align 8
  br label %18

; <label>:43:                                     ; preds = %18
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** @findme, align 8
  ret void
}

; Function Attrs: nounwind
define i8* @strsearch(i8*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %allocaVec1 = alloca <4 x i64>, align 16
  %4 = alloca i64, align 8
  %allocaVec2 = alloca <4 x i64>, align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %allocaVec3 = alloca <4 x i64>, align 16
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @len, align 8
  %9 = sub i64 %8, 1
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  br label %12

; <label>:12:                                     ; preds = %65, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %66

; <label>:16:                                     ; preds = %12
  br label %17

; <label>:17:                                     ; preds = %32, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = icmp ugt i64 %28, 0
  br label %30

; <label>:30:                                     ; preds = %21, %17
  %31 = phi i1 [ false, %17 ], [ %29, %21 ]
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %30
  %33 = load i64, i64* %4, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %33, i32 0
  %insertElmt4 = insertelement <4 x i64> %insertElmt, i64 %33, i32 1
  %insertElmt5 = insertelement <4 x i64> %insertElmt4, i64 %33, i32 2
  %insertElmt6 = insertelement <4 x i64> %insertElmt5, i64 %33, i32 3
  store <4 x i64> %insertElmt6, <4 x i64>* %allocaVec1, align 16
  %34 = load i64, i64* %5, align 8
  %insertElmt7 = insertelement <4 x i64> undef, i64 %34, i32 0
  %insertElmt8 = insertelement <4 x i64> %insertElmt7, i64 %34, i32 1
  %insertElmt9 = insertelement <4 x i64> %insertElmt8, i64 %34, i32 2
  %insertElmt10 = insertelement <4 x i64> %insertElmt9, i64 %34, i32 3
  store <4 x i64> %insertElmt10, <4 x i64>* %allocaVec2, align 16
  %35 = load <4 x i64>, <4 x i64>* %allocaVec2, align 16
  %36 = load <4 x i64>, <4 x i64>* %allocaVec1, align 16
  %Vop = add <4 x i64> %35, %36
  store <4 x i64> %Vop, <4 x i64>* %allocaVec2
  %37 = add i64 %34, %33
  store i64 %37, i64* %5, align 8
  br label %17

; <label>:38:                                     ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 0, %39
  br i1 %40, label %41, label %65

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** @findme, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @len, align 8
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load i64, i64* @len, align 8
  %50 = call i32 @strncmp(i8* %42, i8* %48, i64 %49)
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %41
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %2, align 8
  br label %67

; <label>:54:                                     ; preds = %41
  %55 = load i64, i64* %5, align 8
  %56 = load <4 x i64>, <4 x i64>* %allocaVec2, align 16
  %Vop11 = add <4 x i64> %56, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop11, <4 x i64>* %allocaVec2
  %57 = load <4 x i64>, <4 x i64>* %allocaVec2, align 4
  %extractE = extractelement <4 x i64> %57, i64 0
  %extractE12 = extractelement <4 x i64> %57, i64 1
  %extractE13 = extractelement <4 x i64> %57, i64 2
  %sum = add i64 %extractE, %extractE12
  %sum14 = add i64 %sum, %extractE13
  %58 = add i64 %55, 1
  %Fmul = mul i64 %58, 3
  store i64 %58, i64* %Recovery
  %Fcmp = icmp ne i64 %sum14, %Fmul
  br i1 %Fcmp, label %59, label %63

; <label>:59:                                     ; preds = %54
  %remThree = sdiv i64 %sum14, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %60, label %61

; <label>:60:                                     ; preds = %59
  store i64 %58, i64* %Recovery, align 8
  br label %62

; <label>:61:                                     ; preds = %59
  store i64 %extractE, i64* %Recovery, align 8
  br label %62

; <label>:62:                                     ; preds = %61, %60
  br label %63

; <label>:63:                                     ; preds = %54, %62
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %5, align 8
  br label %64

; <label>:64:                                     ; preds = %63
  br label %65

; <label>:65:                                     ; preds = %64, %38
  br label %12

; <label>:66:                                     ; preds = %12
  store i8* null, i8** %2, align 8
  br label %67

; <label>:67:                                     ; preds = %66, %52
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
define i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [58 x i8*], align 16
  %4 = alloca [57 x i8*], align 16
  %allocaVec2 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec1
  store i32 0, i32* %1, align 4
  %6 = bitcast [58 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([58 x i8*]* @main.find_strings to i8*), i64 464, i32 16, i1 false)
  %7 = bitcast [57 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([57 x i8*]* @main.search_strings to i8*), i64 456, i32 16, i1 false)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec2
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %52, %0
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %53

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  call void @init_search(i8* %18)
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [57 x i8*], [57 x i8*]* %4, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strsearch(i8* %22)
  store i8* %23, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  %30 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [57 x i8*], [57 x i8*]* %4, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i8* %27, i8* %30, i8* %34)
  %36 = load i8*, i8** %2, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %14
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i8* %39)
  br label %41

; <label>:41:                                     ; preds = %38, %14
  %42 = call i32 @putchar(i32 10)
  br label %43

; <label>:43:                                     ; preds = %41
  %44 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %44, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %44, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %44, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %44, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %45 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %45, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %46 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %46, i64 0
  %extractE6 = extractelement <4 x i32> %46, i64 1
  %extractE7 = extractelement <4 x i32> %46, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %47 = add nsw i32 %44, 1
  %Fmul = mul i32 %47, 3
  store i32 %47, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %48, label %52

; <label>:48:                                     ; preds = %43
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %49, label %50

; <label>:49:                                     ; preds = %48
  store i32 %47, i32* %Recovery, align 4
  br label %51

; <label>:50:                                     ; preds = %48
  store i32 %extractE, i32* %Recovery, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %49
  br label %52

; <label>:52:                                     ; preds = %43, %51
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %5, align 4
  br label %8

; <label>:53:                                     ; preds = %8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
