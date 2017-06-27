; ModuleID = 'id3tag.c'
source_filename = "id3tag.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct._IO_FILE = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@genre_last = global i32 147, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Blues\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Classic Rock\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Dance\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Disco\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Funk\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Grunge\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Hip-Hop\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Jazz\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"New Age\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Oldies\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Pop\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"R&B\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Rap\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Reggae\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Rock\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Techno\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Alternative\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Ska\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Death Metal\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Pranks\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Soundtrack\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Euro-Techno\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Trip-Hop\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Vocal\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Jazz+Funk\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Fusion\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Trance\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Instrumental\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Acid\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"House\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Gospel\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"AlternRock\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Soul\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Punk\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Meditative\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Instrumental Pop\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Instrumental Rock\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"Ethnic\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Gothic\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Darkwave\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Techno-Industrial\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Electronic\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Pop-Folk\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Eurodance\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Dream\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Southern Rock\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Gangsta\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Top 40\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Christian Rap\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Pop/Funk\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Jungle\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Native American\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Cabaret\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"New Wave\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Psychadelic\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Rave\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Showtunes\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Trailer\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Lo-Fi\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Tribal\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Acid Punk\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Acid Jazz\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Polka\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Retro\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"Musical\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Rock & Roll\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"Hard Rock\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Folk\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Folk/Rock\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"National Folk\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Swing\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Fast-Fusion\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Bebob\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"Revival\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Celtic\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Bluegrass\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Avantgarde\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Gothic Rock\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"Progressive Rock\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Psychedelic Rock\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Symphonic Rock\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Slow Rock\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Big Band\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Easy Listening\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Acoustic\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Humour\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Speech\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Chanson\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Chamber Music\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Sonata\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Symphony\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"Booty Bass\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Primus\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Porn Groove\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Satire\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Slow Jam\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Club\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"Tango\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Samba\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Folklore\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"Ballad\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Power Ballad\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Rhythmic Soul\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"Freestyle\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Duet\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"Punk Rock\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Drum Solo\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"A capella\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"Euro-House\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Dance Hall\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"Goa\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"Drum & Bass\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Club House\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Hardcore\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"Terror\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"Indie\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"BritPop\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"NegerPunk\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"Polsk Punk\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"Beat\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"Christian Gangsta\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Heavy Metal\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Black Metal\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"Crossover\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Contemporary C\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Christian Rock\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Merengue\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Salsa\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Thrash Metal\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"Anime\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"JPop\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"SynthPop\00", align 1
@genre_list = global [148 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0)], align 4
@id3tag = common global %struct.ID3TAGDATA zeroinitializer, align 4

; Function Attrs: nounwind
define arm_aapcscc void @id3_inittag(%struct.ID3TAGDATA*) #0 {
  %2 = alloca %struct.ID3TAGDATA*, align 4
  store %struct.ID3TAGDATA* %0, %struct.ID3TAGDATA** %2, align 4
  %3 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %4 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %3, i32 0, i32 2
  %5 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i32 0, i32 0
  %6 = call arm_aapcscc i8* @strcpy(i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %7, i32 0, i32 3
  %9 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %10 = call arm_aapcscc i8* @strcpy(i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %12 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %11, i32 0, i32 4
  %13 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i32 0, i32 0
  %14 = call arm_aapcscc i8* @strcpy(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %15 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %16 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %15, i32 0, i32 5
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %16, i32 0, i32 0
  %18 = call arm_aapcscc i8* @strcpy(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %19 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %20 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %19, i32 0, i32 6
  %21 = getelementptr inbounds [31 x i8], [31 x i8]* %20, i32 0, i32 0
  %22 = call arm_aapcscc i8* @strcpy(i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %23 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %24 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %23, i32 0, i32 8
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %24, i32 0, i32 0
  store i8 -1, i8* %25, align 1
  %26 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %27 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %26, i32 0, i32 9
  store i8 0, i8* %27, align 2
  %28 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %29 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  ret void
}

declare arm_aapcscc i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc void @id3_buildtag(%struct.ID3TAGDATA*) #0 {
  %2 = alloca %struct.ID3TAGDATA*, align 4
  store %struct.ID3TAGDATA* %0, %struct.ID3TAGDATA** %2, align 4
  %3 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %4 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %3, i32 0, i32 7
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0
  %6 = call arm_aapcscc i8* @strcpy(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %7 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %7, i32 0, i32 2
  %9 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %9, i32 30)
  %10 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %11 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %10, i32 0, i32 7
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0
  %13 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %14 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %13, i32 0, i32 2
  %15 = getelementptr inbounds [31 x i8], [31 x i8]* %14, i32 0, i32 0
  %16 = call arm_aapcscc i8* @strncat(i8* %12, i8* %15, i32 30)
  %17 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %18 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %17, i32 0, i32 3
  %19 = getelementptr inbounds [31 x i8], [31 x i8]* %18, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %19, i32 30)
  %20 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %21 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %20, i32 0, i32 7
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i32 0, i32 0
  %23 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %24 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %23, i32 0, i32 3
  %25 = getelementptr inbounds [31 x i8], [31 x i8]* %24, i32 0, i32 0
  %26 = call arm_aapcscc i8* @strncat(i8* %22, i8* %25, i32 30)
  %27 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %28 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %27, i32 0, i32 4
  %29 = getelementptr inbounds [31 x i8], [31 x i8]* %28, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %29, i32 30)
  %30 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %31 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %30, i32 0, i32 7
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i32 0, i32 0
  %33 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %34 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %33, i32 0, i32 4
  %35 = getelementptr inbounds [31 x i8], [31 x i8]* %34, i32 0, i32 0
  %36 = call arm_aapcscc i8* @strncat(i8* %32, i8* %35, i32 30)
  %37 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %38 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %37, i32 0, i32 5
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %38, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %39, i32 4)
  %40 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %41 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %40, i32 0, i32 7
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %41, i32 0, i32 0
  %43 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %44 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %43, i32 0, i32 5
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %44, i32 0, i32 0
  %46 = call arm_aapcscc i8* @strncat(i8* %42, i8* %45, i32 4)
  %47 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %48 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %47, i32 0, i32 6
  %49 = getelementptr inbounds [31 x i8], [31 x i8]* %48, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %49, i32 30)
  %50 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %51 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %50, i32 0, i32 7
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %51, i32 0, i32 0
  %53 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %54 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %53, i32 0, i32 6
  %55 = getelementptr inbounds [31 x i8], [31 x i8]* %54, i32 0, i32 0
  %56 = call arm_aapcscc i8* @strncat(i8* %52, i8* %55, i32 30)
  %57 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %58 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %57, i32 0, i32 8
  %59 = getelementptr inbounds [1 x i8], [1 x i8]* %58, i32 0, i32 0
  call arm_aapcscc void @id3_pad(i8* %59, i32 1)
  %60 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %61 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %60, i32 0, i32 7
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %61, i32 0, i32 0
  %63 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %64 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %63, i32 0, i32 8
  %65 = getelementptr inbounds [1 x i8], [1 x i8]* %64, i32 0, i32 0
  %66 = call arm_aapcscc i8* @strncat(i8* %62, i8* %65, i32 1)
  %67 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %68 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %67, i32 0, i32 9
  %69 = load i8, i8* %68, align 2
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

; <label>:72:                                     ; preds = %1
  %73 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %74 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %73, i32 0, i32 7
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %74, i32 0, i32 125
  store i8 0, i8* %75, align 1
  %76 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %77 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %76, i32 0, i32 9
  %78 = load i8, i8* %77, align 2
  %79 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %80 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %79, i32 0, i32 7
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %80, i32 0, i32 126
  store i8 %78, i8* %81, align 1
  br label %82

; <label>:82:                                     ; preds = %72, %1
  %83 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %2, align 4
  %84 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @id3_pad(i8*, i32) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = call arm_aapcscc i32 @strlen(i8* %6)
  store i32 %7, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds i8, i8* %13, i32 %14
  store i8 32, i8* %15, align 1
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i8*, i8** %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds i8, i8* %19, i32 %20
  store i8 0, i8* %21, align 1
  ret void
}

declare arm_aapcscc i8* @strncat(i8*, i8*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @id3_writetag(i8*, %struct.ID3TAGDATA*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca %struct.ID3TAGDATA*, align 4
  %6 = alloca %struct._IO_FILE*, align 4
  store i8* %0, i8** %4, align 4
  store %struct.ID3TAGDATA* %1, %struct.ID3TAGDATA** %5, align 4
  %7 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %5, align 4
  %8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 4
  %14 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %6, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %16 = icmp ne %struct._IO_FILE* %15, null
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %28

; <label>:18:                                     ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %20 = call arm_aapcscc i32 @fseek(%struct._IO_FILE* %19, i32 0, i32 2)
  %21 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %5, align 4
  %22 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %21, i32 0, i32 7
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %25 = call arm_aapcscc i32 @fwrite(i8* %23, i32 1, i32 128, %struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 4
  %27 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %26)
  store i32 0, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %18, %17, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare arm_aapcscc i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

declare arm_aapcscc i32 @strlen(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
