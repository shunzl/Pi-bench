; ModuleID = 'pbmsrch_small.c'
source_filename = "pbmsrch_small.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@len = internal global i32 0, align 4
@table = internal global [256 x i32] zeroinitializer, align 4
@findme = internal global i8* null, align 4
@.str = private unnamed_addr constant [4 x i8] c"abb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dad\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yoo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hoo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"oh\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
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
@main.find_strings = private unnamed_addr constant [58 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null], align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"cabbie\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"It isn't here\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"But it is here\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"hodad\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"yoohoo\00", align 1
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
@main.search_strings = private unnamed_addr constant [57 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)], align 4
@.str.104 = private unnamed_addr constant [18 x i8] c"\22%s\22 is%s in \22%s\22\00", align 1
@.str.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c" [\22%s\22]\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @init_search(i8*) #0 {
  %2 = alloca i8*, align 4
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
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @len, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i32 0, i32 %11
  store i32 %10, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %6

; <label>:16:                                     ; preds = %6
  store i32 0, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %32, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @len, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* @len, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub i32 %22, %23
  %25 = sub i32 %24, 1
  %26 = load i8*, i8** %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds i8, i8* %26, i32 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* @table, i32 0, i32 %30
  store i32 %25, i32* %31, align 4
  br label %32

; <label>:32:                                     ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %17

; <label>:35:                                     ; preds = %17
  %36 = load i8*, i8** %2, align 4
  store i8* %36, i8** @findme, align 4
  ret void
}

declare arm_aapcscc i32 @strlen(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @strsearch(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  %8 = load i32, i32* @len, align 4
  %9 = sub i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %3, align 4
  %11 = call arm_aapcscc i32 @strlen(i8* %10)
  store i32 %11, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %56, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %57

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
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %17

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %56

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** @findme, align 4
  %41 = load i8*, i8** %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @len, align 4
  %44 = sub i32 %42, %43
  %45 = add i32 %44, 1
  %46 = getelementptr inbounds i8, i8* %41, i32 %45
  store i8* %46, i8** %6, align 4
  %47 = load i32, i32* @len, align 4
  %48 = call arm_aapcscc i32 @strncmp(i8* %40, i8* %46, i32 %47)
  %49 = icmp eq i32 0, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %39
  %51 = load i8*, i8** %6, align 4
  store i8* %51, i8** %2, align 4
  br label %58

; <label>:52:                                     ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %52
  br label %56

; <label>:56:                                     ; preds = %55, %36
  br label %12

; <label>:57:                                     ; preds = %12
  store i8* null, i8** %2, align 4
  br label %58

; <label>:58:                                     ; preds = %57, %50
  %59 = load i8*, i8** %2, align 4
  ret i8* %59
}

declare arm_aapcscc i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca [58 x i8*], align 4
  %4 = alloca [57 x i8*], align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [58 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([58 x i8*]* @main.find_strings to i8*), i32 232, i32 4, i1 false)
  %7 = bitcast [57 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* bitcast ([57 x i8*]* @main.search_strings to i8*), i32 228, i32 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %38, %0
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds [58 x i8*], [58 x i8*]* %3, i32 0, i32 %9
  %11 = load i8*, i8** %10, align 4
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %41

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
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %8

; <label>:41:                                     ; preds = %8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @putchar(i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
