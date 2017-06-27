; ModuleID = 'all_small_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@lowervec = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@pat = internal global i8* null, align 4
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 4
@skip2 = internal global i32 0, align 4
@patlen.1 = internal global i32 0, align 4
@pat.2 = internal global i8* null, align 4
@skip.3 = internal global [256 x i32] zeroinitializer, align 4
@skip2.4 = internal global i32 0, align 4
@pat.5 = internal global i8* null, align 4
@patlen.6 = internal global i32 0, align 4
@skip.7 = internal global [256 x i32] zeroinitializer, align 4
@skip2.8 = internal global i32 0, align 4
@len = internal global i32 0, align 4
@table = internal global [256 x i32] zeroinitializer, align 4
@findme = internal global i8* null, align 4
@main.find_strings = private unnamed_addr constant [58 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null], align 4
@main.search_strings = private unnamed_addr constant [57 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)], align 4
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
define arm_aapcscc void @bmha_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %5 = load i8*, i8** %2, align 4
  store i8* %5, i8** @pat, align 4
  %6 = load i8*, i8** %2, align 4
  %7 = call arm_aapcscc i32 @strlen(i8* %6)
  store i32 %7, i32* @patlen, align 4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %61, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 255
  br i1 %10, label %11, label %65

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* @patlen, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %13
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @patlen, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %38, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %42

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i8
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** @pat, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %20
  br label %42

; <label>:37:                                     ; preds = %20
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %39, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %39, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %39, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %39, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %40 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %40, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %41 = add nsw i32 %39, -1
  store i32 %41, i32* %4, align 4
  br label %17

; <label>:42:                                     ; preds = %36, %17
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* @patlen, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %50
  store i32 %49, i32* %51, align 4
  br label %52

; <label>:52:                                     ; preds = %45, %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @patlen, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %58
  store i32 32767, i32* %59, align 4
  br label %60

; <label>:60:                                     ; preds = %57, %52
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %3, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %62, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %62, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %62, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %62, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec1, align 16
  %63 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop10 = add <4 x i32> %63, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop10, <4 x i32>* %allocaVec1
  %64 = add nsw i32 %62, 1
  store i32 %64, i32* %3, align 4
  br label %8

; <label>:65:                                     ; preds = %8
  %66 = load i32, i32* @patlen, align 4
  store i32 %66, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %67

; <label>:67:                                     ; preds = %106, %65
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @patlen, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %108

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** @pat, align 4
  %74 = load i32, i32* %3, align 4
  %75 = getelementptr inbounds i8, i8* %73, i32 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** @pat, align 4
  %82 = load i32, i32* @patlen, align 4
  %83 = sub nsw i32 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i32 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %80, %89
  br i1 %90, label %91, label %96

; <label>:91:                                     ; preds = %72
  %92 = load i32, i32* @patlen, align 4
  %93 = load i32, i32* %3, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* @skip2, align 4
  br label %96

; <label>:96:                                     ; preds = %91, %72
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop11 = add <4 x i32> %99, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop11, <4 x i32>* %allocaVec1
  %100 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %100, i64 0
  %extractE12 = extractelement <4 x i32> %100, i64 1
  %extractE13 = extractelement <4 x i32> %100, i64 2
  %sum = add i32 %extractE, %extractE12
  %sum14 = add i32 %sum, %extractE13
  %101 = add nsw i32 %98, 1
  %Fmul = mul i32 %101, 3
  store i32 %101, i32* %Recovery
  %Fcmp = icmp ne i32 %sum14, %Fmul
  br i1 %Fcmp, label %102, label %106

; <label>:102:                                    ; preds = %97
  %remThree = sdiv i32 %sum14, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %103, label %104

; <label>:103:                                    ; preds = %102
  store i32 %101, i32* %Recovery, align 4
  br label %105

; <label>:104:                                    ; preds = %102
  store i32 %extractE, i32* %Recovery, align 4
  br label %105

; <label>:105:                                    ; preds = %104, %103
  br label %106

; <label>:106:                                    ; preds = %97, %105
  %107 = load i32, i32* %Recovery, align 4
  store i32 %107, i32* %3, align 4
  br label %67

; <label>:108:                                    ; preds = %67
  ret void
}

declare arm_aapcscc i32 @strlen(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @bmha_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  store i8* %0, i8** %4, align 4
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
  store i8* null, i8** %3, align 4
  br label %96

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %95, %16
  br label %21

; <label>:21:                                     ; preds = %32, %20
  %22 = load i8*, i8** %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21
  br label %21

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %35, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %35, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %35, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %35, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %36 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %36
  %37 = sub nsw i32 32767, %35
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %33
  store i8* null, i8** %3, align 4
  br label %96

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %41, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %41, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %41, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %41, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %42 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %42, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %43 = sub nsw i32 %41, 32767
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @patlen, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i32 %49
  store i8* %50, i8** %8, align 4
  br label %51

; <label>:51:                                     ; preds = %83, %40
  %52 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %52, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %52, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %52, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %52, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %53 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %53, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %54 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %54, i64 0
  %extractE19 = extractelement <4 x i32> %54, i64 1
  %extractE20 = extractelement <4 x i32> %54, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %55 = add nsw i32 %52, -1
  %Fmul = mul i32 %55, 3
  store i32 %55, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %56, label %60

; <label>:56:                                     ; preds = %51
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i32 %55, i32* %Recovery, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store i32 %extractE, i32* %Recovery, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %51, %59
  %61 = load i32, i32* %Recovery, align 4
  store i32 %61, i32* %7, align 4
  %62 = icmp sge i32 %55, 0
  br i1 %62, label %63, label %81

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds i8, i8* %64, i32 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** @pat, align 4
  %73 = load i32, i32* %7, align 4
  %74 = getelementptr inbounds i8, i8* %72, i32 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i32 0, i32 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %71, %79
  br label %81

; <label>:81:                                     ; preds = %63, %60
  %82 = phi i1 [ false, %60 ], [ %80, %63 ]
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %81
  br label %51

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %84
  %88 = load i8*, i8** %8, align 4
  store i8* %88, i8** %3, align 4
  br label %96

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* @skip2, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %89
  store i8* null, i8** %3, align 4
  br label %96

; <label>:95:                                     ; preds = %89
  br label %20

; <label>:96:                                     ; preds = %94, %87, %39, %15
  %97 = load i8*, i8** %3, align 4
  ret i8* %97
}

; Function Attrs: nounwind
define arm_aapcscc void @bmhi_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %5 = load i8*, i8** %2, align 4
  %6 = call arm_aapcscc i32 @strlen(i8* %5)
  store i32 %6, i32* @patlen.1, align 4
  %7 = load i8*, i8** @pat.2, align 4
  %8 = load i32, i32* @patlen.1, align 4
  %9 = call arm_aapcscc i8* @realloc(i8* %7, i32 %8)
  store i8* %9, i8** @pat.2, align 4
  %10 = load i8*, i8** @pat.2, align 4
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %1
  call arm_aapcscc void @exit(i32 1) #5
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = call arm_aapcscc i32 @atexit(void ()* @bhmi_cleanup)
  br label %15

; <label>:15:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %31, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @patlen.1, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds i8, i8* %21, i32 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = call arm_aapcscc i32 @toupper(i32 %25) #6
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** @pat.2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds i8, i8* %28, i32 %29
  store i8 %27, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %32, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %32, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %32, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %32, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %33 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %33, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec1
  %34 = add nsw i32 %32, 1
  store i32 %34, i32* %3, align 4
  br label %16

; <label>:35:                                     ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %43, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp sle i32 %37, 255
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @patlen.1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %41
  store i32 %40, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop6 = add <4 x i32> %45, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop6, <4 x i32>* %allocaVec1
  %46 = add nsw i32 %44, 1
  store i32 %46, i32* %3, align 4
  br label %36

; <label>:47:                                     ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

; <label>:48:                                     ; preds = %75, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @patlen.1, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %79

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* @patlen.1, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i8*, i8** @pat.2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = getelementptr inbounds i8, i8* %58, i32 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %62
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* @patlen.1, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i8*, i8** @pat.2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = getelementptr inbounds i8, i8* %68, i32 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = call arm_aapcscc i32 @tolower(i32 %72) #6
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %73
  store i32 %67, i32* %74, align 4
  br label %75

; <label>:75:                                     ; preds = %53
  %76 = load i32, i32* %3, align 4
  %77 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop7 = add <4 x i32> %77, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop7, <4 x i32>* %allocaVec1
  %78 = add nsw i32 %76, 1
  store i32 %78, i32* %3, align 4
  br label %48

; <label>:79:                                     ; preds = %48
  %80 = load i8*, i8** @pat.2, align 4
  %81 = load i32, i32* @patlen.1, align 4
  %82 = sub nsw i32 %81, 1
  %83 = getelementptr inbounds i8, i8* %80, i32 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %86
  store i32 32767, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call arm_aapcscc i32 @tolower(i32 %88) #6
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %89
  store i32 32767, i32* %90, align 4
  %91 = load i32, i32* @patlen.1, align 4
  store i32 %91, i32* @skip2.4, align 4
  store i32 0, i32* %3, align 4
  br label %92

; <label>:92:                                     ; preds = %120, %79
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @patlen.1, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %122

; <label>:97:                                     ; preds = %92
  %98 = load i8*, i8** @pat.2, align 4
  %99 = load i32, i32* %3, align 4
  %100 = getelementptr inbounds i8, i8* %98, i32 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

; <label>:105:                                    ; preds = %97
  %106 = load i32, i32* @patlen.1, align 4
  %107 = load i32, i32* %3, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* @skip2.4, align 4
  br label %110

; <label>:110:                                    ; preds = %105, %97
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop8 = add <4 x i32> %113, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop8, <4 x i32>* %allocaVec1
  %114 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %114, i64 0
  %extractE9 = extractelement <4 x i32> %114, i64 1
  %extractE10 = extractelement <4 x i32> %114, i64 2
  %sum = add i32 %extractE, %extractE9
  %sum11 = add i32 %sum, %extractE10
  %115 = add nsw i32 %112, 1
  %Fmul = mul i32 %115, 3
  store i32 %115, i32* %Recovery
  %Fcmp = icmp ne i32 %sum11, %Fmul
  br i1 %Fcmp, label %116, label %120

; <label>:116:                                    ; preds = %111
  %remThree = sdiv i32 %sum11, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %117, label %118

; <label>:117:                                    ; preds = %116
  store i32 %115, i32* %Recovery, align 4
  br label %119

; <label>:118:                                    ; preds = %116
  store i32 %extractE, i32* %Recovery, align 4
  br label %119

; <label>:119:                                    ; preds = %118, %117
  br label %120

; <label>:120:                                    ; preds = %111, %119
  %121 = load i32, i32* %Recovery, align 4
  store i32 %121, i32* %3, align 4
  br label %92

; <label>:122:                                    ; preds = %92
  ret void
}

declare arm_aapcscc i8* @realloc(i8*, i32) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc void @bhmi_cleanup() #0 {
  %1 = load i8*, i8** @pat.2, align 4
  call arm_aapcscc void @free(i8* %1)
  ret void
}

declare arm_aapcscc i32 @atexit(void ()*) #1

; Function Attrs: nounwind readonly
declare arm_aapcscc i32 @toupper(i32) #3

; Function Attrs: nounwind readonly
declare arm_aapcscc i32 @tolower(i32) #3

declare arm_aapcscc void @free(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @bmhi_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  store i8* %0, i8** %4, align 4
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
  store i8* null, i8** %3, align 4
  br label %91

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %90, %16
  br label %21

; <label>:21:                                     ; preds = %32, %20
  %22 = load i8*, i8** %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.3, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21
  br label %21

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %35, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %35, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %35, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %35, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %36 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %36
  %37 = sub nsw i32 32767, %35
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %33
  store i8* null, i8** %3, align 4
  br label %91

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %41, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %41, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %41, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %41, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %42 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %42, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %43 = sub nsw i32 %41, 32767
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @patlen.1, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i32 %49
  store i8* %50, i8** %8, align 4
  br label %51

; <label>:51:                                     ; preds = %78, %40
  %52 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %52, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %52, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %52, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %52, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %53 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %53, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %54 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %54, i64 0
  %extractE19 = extractelement <4 x i32> %54, i64 1
  %extractE20 = extractelement <4 x i32> %54, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %55 = add nsw i32 %52, -1
  %Fmul = mul i32 %55, 3
  store i32 %55, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %56, label %60

; <label>:56:                                     ; preds = %51
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i32 %55, i32* %Recovery, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store i32 %extractE, i32* %Recovery, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %51, %59
  %61 = load i32, i32* %Recovery, align 4
  store i32 %61, i32* %7, align 4
  %62 = icmp sge i32 %55, 0
  br i1 %62, label %63, label %76

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds i8, i8* %64, i32 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = call arm_aapcscc i32 @toupper(i32 %68) #6
  %70 = load i8*, i8** @pat.2, align 4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds i8, i8* %70, i32 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %69, %74
  br label %76

; <label>:76:                                     ; preds = %63, %60
  %77 = phi i1 [ false, %60 ], [ %75, %63 ]
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %76
  br label %51

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %8, align 4
  store i8* %83, i8** %3, align 4
  br label %91

; <label>:84:                                     ; preds = %79
  %85 = load i32, i32* @skip2.4, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %84
  store i8* null, i8** %3, align 4
  br label %91

; <label>:90:                                     ; preds = %84
  br label %20

; <label>:91:                                     ; preds = %89, %82, %39, %15
  %92 = load i8*, i8** %3, align 4
  ret i8* %92
}

; Function Attrs: nounwind
define arm_aapcscc void @bmh_init(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %5 = load i8*, i8** %2, align 4
  store i8* %5, i8** @pat.5, align 4
  %6 = load i8*, i8** %2, align 4
  %7 = call arm_aapcscc i32 @strlen(i8* %6)
  store i32 %7, i32* @patlen.6, align 4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %15, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 255
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* @patlen.6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i32 0, i32 %13
  store i32 %12, i32* %14, align 4
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %16, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %16, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %16, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %16, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %17 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %17, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec1
  %18 = add nsw i32 %16, 1
  store i32 %18, i32* %3, align 4
  br label %8

; <label>:19:                                     ; preds = %8
  store i32 0, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %35, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @patlen.6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* @patlen.6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i8*, i8** @pat.5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i32 0, i32 %33
  store i32 %28, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop6 = add <4 x i32> %37, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop6, <4 x i32>* %allocaVec1
  %38 = add nsw i32 %36, 1
  store i32 %38, i32* %3, align 4
  br label %20

; <label>:39:                                     ; preds = %20
  %40 = load i8*, i8** @pat.5, align 4
  %41 = load i32, i32* @patlen.6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i32 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i32 0, i32 %46
  store i32 32767, i32* %47, align 4
  %48 = load i32, i32* @patlen.6, align 4
  store i32 %48, i32* @skip2.8, align 4
  store i32 0, i32* %3, align 4
  br label %49

; <label>:49:                                     ; preds = %77, %39
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @patlen.6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %79

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** @pat.5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = getelementptr inbounds i8, i8* %55, i32 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* @patlen.6, align 4
  %64 = load i32, i32* %3, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* @skip2.8, align 4
  br label %67

; <label>:67:                                     ; preds = %62, %54
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop7 = add <4 x i32> %70, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop7, <4 x i32>* %allocaVec1
  %71 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %71, i64 0
  %extractE8 = extractelement <4 x i32> %71, i64 1
  %extractE9 = extractelement <4 x i32> %71, i64 2
  %sum = add i32 %extractE, %extractE8
  %sum10 = add i32 %sum, %extractE9
  %72 = add nsw i32 %69, 1
  %Fmul = mul i32 %72, 3
  store i32 %72, i32* %Recovery
  %Fcmp = icmp ne i32 %sum10, %Fmul
  br i1 %Fcmp, label %73, label %77

; <label>:73:                                     ; preds = %68
  %remThree = sdiv i32 %sum10, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %74, label %75

; <label>:74:                                     ; preds = %73
  store i32 %72, i32* %Recovery, align 4
  br label %76

; <label>:75:                                     ; preds = %73
  store i32 %extractE, i32* %Recovery, align 4
  br label %76

; <label>:76:                                     ; preds = %75, %74
  br label %77

; <label>:77:                                     ; preds = %68, %76
  %78 = load i32, i32* %Recovery, align 4
  store i32 %78, i32* %3, align 4
  br label %49

; <label>:79:                                     ; preds = %49
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i8* @bmh_search(i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  store i8* %0, i8** %4, align 4
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
  store i8* null, i8** %3, align 4
  br label %90

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %19, i8** %4, align 4
  br label %20

; <label>:20:                                     ; preds = %89, %16
  br label %21

; <label>:21:                                     ; preds = %32, %20
  %22 = load i8*, i8** %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @skip.7, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21
  br label %21

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %35, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %35, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %35, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %35, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec3, align 16
  %36 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, %36
  %37 = sub nsw i32 32767, %35
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %33
  store i8* null, i8** %3, align 4
  br label %90

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %6, align 4
  %insertElmt9 = insertelement <4 x i32> undef, i32 %41, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %41, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %41, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %41, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec4, align 16
  %42 = load <4 x i32>, <4 x i32>* %allocaVec4, align 16
  %Vop13 = sub <4 x i32> %42, <i32 32767, i32 32767, i32 32767, i32 32767>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec4
  %43 = sub nsw i32 %41, 32767
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @patlen.6, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i32 %49
  store i8* %50, i8** %8, align 4
  br label %51

; <label>:51:                                     ; preds = %77, %40
  %52 = load i32, i32* %7, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %52, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %52, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %52, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %52, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec5, align 16
  %53 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop18 = add <4 x i32> %53, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec5
  %54 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %54, i64 0
  %extractE19 = extractelement <4 x i32> %54, i64 1
  %extractE20 = extractelement <4 x i32> %54, i64 2
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %55 = add nsw i32 %52, -1
  %Fmul = mul i32 %55, 3
  store i32 %55, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %56, label %60

; <label>:56:                                     ; preds = %51
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i32 %55, i32* %Recovery, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store i32 %extractE, i32* %Recovery, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %51, %59
  %61 = load i32, i32* %Recovery, align 4
  store i32 %61, i32* %7, align 4
  %62 = icmp sge i32 %55, 0
  br i1 %62, label %63, label %75

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds i8, i8* %64, i32 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** @pat.5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds i8, i8* %69, i32 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %68, %73
  br label %75

; <label>:75:                                     ; preds = %63, %60
  %76 = phi i1 [ false, %60 ], [ %74, %63 ]
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %75
  br label %51

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %78
  %82 = load i8*, i8** %8, align 4
  store i8* %82, i8** %3, align 4
  br label %90

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* @skip2.8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %83
  store i8* null, i8** %3, align 4
  br label %90

; <label>:89:                                     ; preds = %83
  br label %20

; <label>:90:                                     ; preds = %88, %81, %39, %15
  %91 = load i8*, i8** %3, align 4
  ret i8* %91
}

; Function Attrs: nounwind
define arm_aapcscc void @init_search(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %4 = load i8*, i8** %2, align 4
  %5 = call arm_aapcscc i32 @strlen(i8* %4)
  store i32 %5, i32* @len, align 4
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %13, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, 255
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @len, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i32 0, i32 %11
  store i32 %10, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %14, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %14, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %14, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %14, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %15 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %15, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec1
  %16 = add i32 %14, 1
  store i32 %16, i32* %3, align 4
  br label %6

; <label>:17:                                     ; preds = %6
  store i32 0, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %42, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @len, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %44

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* @len, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub i32 %23, %24
  %26 = sub i32 %25, 1
  %27 = load i8*, i8** %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i32 0, i32 %31
  store i32 %26, i32* %32, align 4
  br label %33

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop5 = add <4 x i32> %35, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop5, <4 x i32>* %allocaVec1
  %36 = load <4 x i32>, <4 x i32>* %allocaVec1, align 4
  %extractE = extractelement <4 x i32> %36, i64 0
  %extractE6 = extractelement <4 x i32> %36, i64 1
  %extractE7 = extractelement <4 x i32> %36, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %37 = add i32 %34, 1
  %Fmul = mul i32 %37, 3
  store i32 %37, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %38, label %42

; <label>:38:                                     ; preds = %33
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %39, label %40

; <label>:39:                                     ; preds = %38
  store i32 %37, i32* %Recovery, align 4
  br label %41

; <label>:40:                                     ; preds = %38
  store i32 %extractE, i32* %Recovery, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %39
  br label %42

; <label>:42:                                     ; preds = %33, %41
  %43 = load i32, i32* %Recovery, align 4
  store i32 %43, i32* %3, align 4
  br label %18

; <label>:44:                                     ; preds = %18
  %45 = load i8*, i8** %2, align 4
  store i8* %45, i8** @findme, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i8* @strsearch(i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %8 = load i32, i32* @len, align 4
  %9 = sub i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %3, align 4
  %11 = call arm_aapcscc i32 @strlen(i8* %10)
  store i32 %11, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %66, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %67

; <label>:16:                                     ; preds = %12
  br label %17

; <label>:17:                                     ; preds = %32, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = icmp ugt i32 %28, 0
  br label %30

; <label>:30:                                     ; preds = %21, %17
  %31 = phi i1 [ false, %17 ], [ %29, %21 ]
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %30
  %33 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %33, i32 0
  %insertElmt4 = insertelement <4 x i32> %insertElmt, i32 %33, i32 1
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %33, i32 2
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %33, i32 3
  store <4 x i32> %insertElmt6, <4 x i32>* %allocaVec1, align 16
  %34 = load i32, i32* %5, align 4
  %insertElmt7 = insertelement <4 x i32> undef, i32 %34, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %34, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %34, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %34, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec2, align 16
  %35 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %36 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %35, %36
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %37 = add i32 %34, %33
  store i32 %37, i32* %5, align 4
  br label %17

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %66

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** @findme, align 4
  %43 = load i8*, i8** %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @len, align 4
  %46 = sub i32 %44, %45
  %47 = add i32 %46, 1
  %48 = getelementptr inbounds i8, i8* %43, i32 %47
  store i8* %48, i8** %6, align 4
  %49 = load i32, i32* @len, align 4
  %50 = call arm_aapcscc i32 @strncmp(i8* %42, i8* %48, i32 %49)
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %41
  %53 = load i8*, i8** %6, align 4
  store i8* %53, i8** %2, align 4
  br label %68

; <label>:54:                                     ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop11 = add <4 x i32> %56, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop11, <4 x i32>* %allocaVec2
  %57 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %57, i64 0
  %extractE12 = extractelement <4 x i32> %57, i64 1
  %extractE13 = extractelement <4 x i32> %57, i64 2
  %sum = add i32 %extractE, %extractE12
  %sum14 = add i32 %sum, %extractE13
  %58 = add i32 %55, 1
  %Fmul = mul i32 %58, 3
  store i32 %58, i32* %Recovery
  %Fcmp = icmp ne i32 %sum14, %Fmul
  br i1 %Fcmp, label %59, label %63

; <label>:59:                                     ; preds = %54
  %remThree = sdiv i32 %sum14, %extractE
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
  %64 = load i32, i32* %Recovery, align 4
  store i32 %64, i32* %5, align 4
  br label %65

; <label>:65:                                     ; preds = %63
  br label %66

; <label>:66:                                     ; preds = %65, %38
  br label %12

; <label>:67:                                     ; preds = %12
  store i8* null, i8** %2, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %52
  %69 = load i8*, i8** %2, align 4
  ret i8* %69
}

declare arm_aapcscc i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca [58 x i8*], align 4
  %4 = alloca [57 x i8*], align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [58 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([58 x i8*]* @main.find_strings to i8*), i32 232, i32 4, i1 false)
  %7 = bitcast [57 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* bitcast ([57 x i8*]* @main.search_strings to i8*), i32 228, i32 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %47, %0
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i32 0, i32 %9
  %11 = load i8*, i8** %10, align 4
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %49

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i32 0, i32 %14
  %16 = load i8*, i8** %15, align 4
  call arm_aapcscc void @init_search(i8* %16)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [57 x i8*], [57 x i8*]* %4, i32 0, i32 %17
  %19 = load i8*, i8** %18, align 4
  %20 = call arm_aapcscc i8* @strsearch(i8* %19)
  store i8* %20, i8** %2, align 4
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i32 0, i32 %21
  %23 = load i8*, i8** %22, align 4
  %24 = load i8*, i8** %2, align 4
  %25 = icmp ne i8* %24, null
  %26 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [57 x i8*], [57 x i8*]* %4, i32 0, i32 %27
  %29 = load i8*, i8** %28, align 4
  %30 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i8* %23, i8* %26, i8* %29)
  %31 = load i8*, i8** %2, align 4
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %13
  %34 = load i8*, i8** %2, align 4
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i8* %34)
  br label %36

; <label>:36:                                     ; preds = %33, %13
  %37 = call arm_aapcscc i32 @putchar(i32 10)
  br label %38

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %5, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %39, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %39, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %39, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %39, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %40 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %40, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %41 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %41, i64 0
  %extractE6 = extractelement <4 x i32> %41, i64 1
  %extractE7 = extractelement <4 x i32> %41, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %42 = add nsw i32 %39, 1
  %Fmul = mul i32 %42, 3
  store i32 %42, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %43, label %47

; <label>:43:                                     ; preds = %38
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %44, label %45

; <label>:44:                                     ; preds = %43
  store i32 %42, i32* %Recovery, align 4
  br label %46

; <label>:45:                                     ; preds = %43
  store i32 %extractE, i32* %Recovery, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %44
  br label %47

; <label>:47:                                     ; preds = %38, %46
  %48 = load i32, i32* %Recovery, align 4
  store i32 %48, i32* %5, align 4
  br label %8

; <label>:49:                                     ; preds = %8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @putchar(i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
