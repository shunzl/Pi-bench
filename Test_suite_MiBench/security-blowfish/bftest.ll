; ModuleID = 'bftest.c'
source_filename = "bftest.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Who is John Galt?\00", align 1
@bf_key = global [2 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 4
@bf_plain = global [2 x [2 x i32]] [[2 x i32] [i32 1112297303, i32 1179210568], [2 x i32] [i32 -19088744, i32 1985229328]], align 4
@bf_cipher = global [2 x [2 x i32]] [[2 x i32] [i32 844026110, i32 -200039933], [2 x i32] [i32 -862883029, i32 -2145192316]], align 4
@key_test = global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 1
@key_data = global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@key_out = global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\5C\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\5C", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\5C\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\5C\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\5CP\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 1
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\5CZ\9C]\9E\0AZ"], align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" k[%2d]=\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"testing blowfish in raw ecb mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Set key.\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Encrypted.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"BF_encrypt error encrypting\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"got     :\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%08lX \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"decrypted.\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"BF_encrypt error decrypting\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"testing blowfish in ecb mode\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"BF_ecb_encrypt blowfish error encrypting\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"BF_ecb_encrypt error decrypting\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"testing blowfish set_key\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"blowfish setkey error\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"testing blowfish in cbc mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt encrypt error\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt decrypt error\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"testing blowfish in cfb64 mode\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt encrypt error\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt decrypt error\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"testing blowfish in ofb64\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt encrypt error\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt decrypt error\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @print_test_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %4 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %5

; <label>:5:                                      ; preds = %57, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 34
  br i1 %7, label %8, label %60

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i32 %13
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i32 0, i32 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %9

; <label>:23:                                     ; preds = %9
  %24 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %25

; <label>:25:                                     ; preds = %36, %23
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %29
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %30, i32 0, i32 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %34)
  br label %36

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %25

; <label>:39:                                     ; preds = %25
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %41

; <label>:41:                                     ; preds = %52, %39
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %45
  %47 = load i32, i32* %2, align 4
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i32 0, i32 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %50)
  br label %52

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %41

; <label>:55:                                     ; preds = %41
  %56 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %57

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %5

; <label>:60:                                     ; preds = %5
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  %62 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %63

; <label>:63:                                     ; preds = %72, %60
  %64 = load i32, i32* %2, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* @key_data, i32 0, i32 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %70)
  br label %72

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %63

; <label>:75:                                     ; preds = %63
  %76 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %77

; <label>:77:                                     ; preds = %116, %75
  %78 = load i32, i32* %1, align 4
  %79 = icmp slt i32 %78, 24
  br i1 %79, label %80, label %119

; <label>:80:                                     ; preds = %77
  %81 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %82

; <label>:82:                                     ; preds = %93, %80
  %83 = load i32, i32* %2, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %1, align 4
  %87 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i32 %86
  %88 = load i32, i32* %2, align 4
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %87, i32 0, i32 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %91)
  br label %93

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %82

; <label>:96:                                     ; preds = %82
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  %99 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

; <label>:100:                                    ; preds = %111, %96
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %114

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %2, align 4
  %107 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i32 0, i32 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %109)
  br label %111

; <label>:111:                                    ; preds = %105
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %100

; <label>:114:                                    ; preds = %100
  %115 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %116

; <label>:116:                                    ; preds = %114
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %1, align 4
  br label %77

; <label>:119:                                    ; preds = %77
  %120 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  %121 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %122

; <label>:122:                                    ; preds = %131, %119
  %123 = load i32, i32* %2, align 4
  %124 = icmp slt i32 %123, 16
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* @cbc_key, i32 0, i32 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %129)
  br label %131

; <label>:131:                                    ; preds = %125
  %132 = load i32, i32* %2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %2, align 4
  br label %122

; <label>:134:                                    ; preds = %122
  %135 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %136

; <label>:136:                                    ; preds = %145, %134
  %137 = load i32, i32* %2, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %148

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %2, align 4
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %143)
  br label %145

; <label>:145:                                    ; preds = %139
  %146 = load i32, i32* %2, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %2, align 4
  br label %136

; <label>:148:                                    ; preds = %136
  %149 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %150 = add i32 %149, 1
  %151 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %152 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %153 = add i32 %152, 1
  %154 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %153)
  store i32 0, i32* %2, align 4
  br label %155

; <label>:155:                                    ; preds = %166, %148
  %156 = load i32, i32* %2, align 4
  %157 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %158 = add i32 %157, 1
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %160, label %169

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* %2, align 4
  %162 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i32 0, i32 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %164)
  br label %166

; <label>:166:                                    ; preds = %160
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %2, align 4
  br label %155

; <label>:169:                                    ; preds = %155
  %170 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %171 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %172 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 32)
  store i32 0, i32* %2, align 4
  br label %173

; <label>:173:                                    ; preds = %182, %169
  %174 = load i32, i32* %2, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %185

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %2, align 4
  %178 = getelementptr inbounds [32 x i8], [32 x i8]* @cbc_ok, i32 0, i32 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %180)
  br label %182

; <label>:182:                                    ; preds = %176
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %2, align 4
  br label %173

; <label>:185:                                    ; preds = %173
  %186 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %187 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %188 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %189 = add i32 %188, 1
  %190 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %189)
  store i32 0, i32* %2, align 4
  br label %191

; <label>:191:                                    ; preds = %202, %185
  %192 = load i32, i32* %2, align 4
  %193 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %194 = add i32 %193, 1
  %195 = icmp ult i32 %192, %194
  br i1 %195, label %196, label %205

; <label>:196:                                    ; preds = %191
  %197 = load i32, i32* %2, align 4
  %198 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i32 0, i32 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %200)
  br label %202

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %2, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %2, align 4
  br label %191

; <label>:205:                                    ; preds = %191
  %206 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %207 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  %208 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %209 = add i32 %208, 1
  %210 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %209)
  store i32 0, i32* %2, align 4
  br label %211

; <label>:211:                                    ; preds = %222, %205
  %212 = load i32, i32* %2, align 4
  %213 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %214 = add i32 %213, 1
  %215 = icmp ult i32 %212, %214
  br i1 %215, label %216, label %225

; <label>:216:                                    ; preds = %211
  %217 = load i32, i32* %2, align 4
  %218 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i32 0, i32 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %220)
  br label %222

; <label>:222:                                    ; preds = %216
  %223 = load i32, i32* %2, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %2, align 4
  br label %211

; <label>:225:                                    ; preds = %211
  %226 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @strlen(i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = call arm_aapcscc i32 @print_test_data()
  store i32 %10, i32* %6, align 4
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = call arm_aapcscc i32 @test()
  store i32 %12, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %6, align 4
  call arm_aapcscc void @exit(i32 %14) #4
  unreachable
                                                  ; No predecessors!
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @test() #0 {
  %1 = alloca [40 x i8], align 1
  %2 = alloca [40 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf_key_st, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %11 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %120, %0
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %123

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i32 %16
  %18 = load i8*, i8** %17, align 4
  %19 = call arm_aapcscc i32 @strlen(i8* %18)
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i32 %20
  %22 = load i8*, i8** %21, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 %19, i8* %22)
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  call arm_aapcscc void @BF_encrypt(i32* %34, %struct.bf_key_st* %7, i32 1)
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_cipher, i32 0, i32 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to i8*
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  %41 = bitcast i32* %40 to i8*
  %42 = call arm_aapcscc i32 @memcmp(i8* %39, i8* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

; <label>:44:                                     ; preds = %15
  %45 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0))
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %47

; <label>:47:                                     ; preds = %55, %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 %51
  %53 = load i32, i32* %52, align 4
  %54 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %53)
  br label %55

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %47

; <label>:58:                                     ; preds = %47
  %59 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %60 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %61

; <label>:61:                                     ; preds = %71, %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %74

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_cipher, i32 0, i32 %65
  %67 = load i32, i32* %4, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i32 0, i32 %67
  %69 = load i32, i32* %68, align 4
  %70 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %69)
  br label %71

; <label>:71:                                     ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %61

; <label>:74:                                     ; preds = %61
  store i32 1, i32* %6, align 4
  %75 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %74, %15
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  call arm_aapcscc void @BF_encrypt(i32* %77, %struct.bf_key_st* %7, i32 0)
  %78 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  %79 = load i32, i32* %5, align 4
  %80 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to i8*
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  %84 = bitcast i32* %83 to i8*
  %85 = call arm_aapcscc i32 @memcmp(i8* %82, i8* %84, i32 8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %119

; <label>:87:                                     ; preds = %76
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  %89 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %90

; <label>:90:                                     ; preds = %98, %87
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %101

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 %94
  %96 = load i32, i32* %95, align 4
  %97 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %96)
  br label %98

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %90

; <label>:101:                                    ; preds = %90
  %102 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %103 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %104

; <label>:104:                                    ; preds = %114, %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %117

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %108
  %110 = load i32, i32* %4, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i32 0, i32 %110
  %112 = load i32, i32* %111, align 4
  %113 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %112)
  br label %114

; <label>:114:                                    ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %104

; <label>:117:                                    ; preds = %104
  %118 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %119

; <label>:119:                                    ; preds = %117, %76
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %12

; <label>:123:                                    ; preds = %12
  %124 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %125

; <label>:125:                                    ; preds = %220, %123
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 34
  br i1 %127, label %128, label %223

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i32 %129
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %130, i32 0, i32 0
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 8, i8* %131)
  %132 = load i32, i32* %5, align 4
  %133 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %132
  %134 = getelementptr inbounds [8 x i8], [8 x i8]* %133, i32 0, i32 0
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* %134, i8* %135, %struct.bf_key_st* %7, i32 1)
  %136 = load i32, i32* %5, align 4
  %137 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %136
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %137, i32 0, i32 0
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %140 = call arm_aapcscc i32 @memcmp(i8* %138, i8* %139, i32 8)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %176

; <label>:142:                                    ; preds = %128
  %143 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %144 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %145

; <label>:145:                                    ; preds = %154, %142
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %146, 8
  br i1 %147, label %148, label %157

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %152)
  br label %154

; <label>:154:                                    ; preds = %148
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %145

; <label>:157:                                    ; preds = %145
  %158 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %159 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %160

; <label>:160:                                    ; preds = %171, %157
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %161, 8
  br i1 %162, label %163, label %174

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %5, align 4
  %165 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %164
  %166 = load i32, i32* %4, align 4
  %167 = getelementptr inbounds [8 x i8], [8 x i8]* %165, i32 0, i32 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %169)
  br label %171

; <label>:171:                                    ; preds = %163
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %160

; <label>:174:                                    ; preds = %160
  store i32 1, i32* %6, align 4
  %175 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %176

; <label>:176:                                    ; preds = %174, %128
  %177 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* %177, i8* %178, %struct.bf_key_st* %7, i32 0)
  %179 = load i32, i32* %5, align 4
  %180 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %179
  %181 = getelementptr inbounds [8 x i8], [8 x i8]* %180, i32 0, i32 0
  %182 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %183 = call arm_aapcscc i32 @memcmp(i8* %181, i8* %182, i32 8)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %219

; <label>:185:                                    ; preds = %176
  %186 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  %187 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %188

; <label>:188:                                    ; preds = %197, %185
  %189 = load i32, i32* %4, align 4
  %190 = icmp slt i32 %189, 8
  br i1 %190, label %191, label %200

; <label>:191:                                    ; preds = %188
  %192 = load i32, i32* %4, align 4
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %195)
  br label %197

; <label>:197:                                    ; preds = %191
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %188

; <label>:200:                                    ; preds = %188
  %201 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %202 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %203

; <label>:203:                                    ; preds = %214, %200
  %204 = load i32, i32* %4, align 4
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %217

; <label>:206:                                    ; preds = %203
  %207 = load i32, i32* %5, align 4
  %208 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %207
  %209 = load i32, i32* %4, align 4
  %210 = getelementptr inbounds [8 x i8], [8 x i8]* %208, i32 0, i32 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %212)
  br label %214

; <label>:214:                                    ; preds = %206
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %203

; <label>:217:                                    ; preds = %203
  %218 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %219

; <label>:219:                                    ; preds = %217, %176
  br label %220

; <label>:220:                                    ; preds = %219
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %125

; <label>:223:                                    ; preds = %125
  %224 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  store i32 1, i32* %5, align 4
  br label %225

; <label>:225:                                    ; preds = %241, %223
  %226 = load i32, i32* %5, align 4
  %227 = icmp slt i32 %226, 25
  br i1 %227, label %228, label %244

; <label>:228:                                    ; preds = %225
  %229 = load i32, i32* %5, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 %229, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i32 0, i32 0))
  %230 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i32 0, i32 0), i8* %230, %struct.bf_key_st* %7, i32 1)
  %231 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %232 = load i32, i32* %5, align 4
  %233 = sub nsw i32 %232, 1
  %234 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i32 %233
  %235 = getelementptr inbounds [8 x i8], [8 x i8]* %234, i32 0, i32 0
  %236 = call arm_aapcscc i32 @memcmp(i8* %231, i8* %235, i32 8)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %228
  %239 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %240

; <label>:240:                                    ; preds = %238, %228
  br label %241

; <label>:241:                                    ; preds = %240
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %225

; <label>:244:                                    ; preds = %225
  %245 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0))
  %246 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %247 = add i32 %246, 1
  store i32 %247, i32* %10, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %248 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %248, i8 0, i32 40, i32 1, i1 false)
  %249 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %249, i8 0, i32 40, i32 1, i1 false)
  %250 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %251 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %252 = load i32, i32* %10, align 4
  %253 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cbc_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %251, i32 %252, %struct.bf_key_st* %7, i8* %253, i32 1)
  %254 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %255 = call arm_aapcscc i32 @memcmp(i8* %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i32 0, i32 0), i32 32)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

; <label>:257:                                    ; preds = %244
  store i32 1, i32* %6, align 4
  %258 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %259

; <label>:259:                                    ; preds = %268, %257
  %260 = load i32, i32* %4, align 4
  %261 = icmp slt i32 %260, 32
  br i1 %261, label %262, label %271

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %4, align 4
  %264 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %266)
  br label %268

; <label>:268:                                    ; preds = %262
  %269 = load i32, i32* %4, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %4, align 4
  br label %259

; <label>:271:                                    ; preds = %259
  br label %272

; <label>:272:                                    ; preds = %271, %244
  %273 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %274 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %275 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %276 = load i32, i32* %10, align 4
  %277 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cbc_encrypt(i8* %274, i8* %275, i32 %276, %struct.bf_key_st* %7, i8* %277, i32 0)
  %278 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %279 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %280 = add i32 %279, 1
  %281 = call arm_aapcscc i32 @memcmp(i8* %278, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

; <label>:283:                                    ; preds = %272
  %284 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %285

; <label>:285:                                    ; preds = %283, %272
  %286 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0))
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %287 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %287, i8 0, i32 40, i32 1, i1 false)
  %288 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %288, i8 0, i32 40, i32 1, i1 false)
  %289 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  store i32 0, i32* %5, align 4
  %290 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %291 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %290, i32 13, %struct.bf_key_st* %7, i8* %291, i32* %5, i32 1)
  %292 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 13
  %293 = load i32, i32* %10, align 4
  %294 = sub i32 %293, 13
  %295 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 13), i8* %292, i32 %294, %struct.bf_key_st* %7, i8* %295, i32* %5, i32 1)
  %296 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %297 = load i32, i32* %10, align 4
  %298 = call arm_aapcscc i32 @memcmp(i8* %296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i32 0, i32 0), i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %316

; <label>:300:                                    ; preds = %285
  store i32 1, i32* %6, align 4
  %301 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %302

; <label>:302:                                    ; preds = %312, %300
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %315

; <label>:306:                                    ; preds = %302
  %307 = load i32, i32* %4, align 4
  %308 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %307
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %310)
  br label %312

; <label>:312:                                    ; preds = %306
  %313 = load i32, i32* %4, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %4, align 4
  br label %302

; <label>:315:                                    ; preds = %302
  br label %316

; <label>:316:                                    ; preds = %315, %285
  store i32 0, i32* %5, align 4
  %317 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %318 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %319 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %320 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* %318, i8* %319, i32 17, %struct.bf_key_st* %7, i8* %320, i32* %5, i32 0)
  %321 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 17
  %322 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 17
  %323 = load i32, i32* %10, align 4
  %324 = sub i32 %323, 17
  %325 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* %321, i8* %322, i32 %324, %struct.bf_key_st* %7, i8* %325, i32* %5, i32 0)
  %326 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %327 = load i32, i32* %10, align 4
  %328 = call arm_aapcscc i32 @memcmp(i8* %326, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

; <label>:330:                                    ; preds = %316
  %331 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %332

; <label>:332:                                    ; preds = %330, %316
  %333 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0))
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %334 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %334, i8 0, i32 40, i32 1, i1 false)
  %335 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %335, i8 0, i32 40, i32 1, i1 false)
  %336 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  store i32 0, i32* %5, align 4
  %337 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %338 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %337, i32 13, %struct.bf_key_st* %7, i8* %338, i32* %5)
  %339 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 13
  %340 = load i32, i32* %10, align 4
  %341 = sub i32 %340, 13
  %342 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 13), i8* %339, i32 %341, %struct.bf_key_st* %7, i8* %342, i32* %5)
  %343 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %344 = load i32, i32* %10, align 4
  %345 = call arm_aapcscc i32 @memcmp(i8* %343, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i32 0, i32 0), i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %363

; <label>:347:                                    ; preds = %332
  store i32 1, i32* %6, align 4
  %348 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %349

; <label>:349:                                    ; preds = %359, %347
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %362

; <label>:353:                                    ; preds = %349
  %354 = load i32, i32* %4, align 4
  %355 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %357)
  br label %359

; <label>:359:                                    ; preds = %353
  %360 = load i32, i32* %4, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %4, align 4
  br label %349

; <label>:362:                                    ; preds = %349
  br label %363

; <label>:363:                                    ; preds = %362, %332
  store i32 0, i32* %5, align 4
  %364 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %364, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %365 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %366 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %367 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* %365, i8* %366, i32 17, %struct.bf_key_st* %7, i8* %367, i32* %5)
  %368 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 17
  %369 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 17
  %370 = load i32, i32* %10, align 4
  %371 = sub i32 %370, 17
  %372 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* %368, i8* %369, i32 %371, %struct.bf_key_st* %7, i8* %372, i32* %5)
  %373 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %374 = load i32, i32* %10, align 4
  %375 = call arm_aapcscc i32 @memcmp(i8* %373, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

; <label>:377:                                    ; preds = %363
  %378 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %379

; <label>:379:                                    ; preds = %377, %363
  %380 = load i32, i32* %6, align 4
  ret i32 %380
}

declare arm_aapcscc void @BF_set_key(%struct.bf_key_st*, i32, i8*) #1

declare arm_aapcscc void @BF_encrypt(i32*, %struct.bf_key_st*, i32) #1

declare arm_aapcscc i32 @memcmp(i8*, i8*, i32) #1

declare arm_aapcscc void @BF_ecb_encrypt(i8*, i8*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

declare arm_aapcscc void @BF_cbc_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32) #1

declare arm_aapcscc void @BF_cfb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*, i32) #1

declare arm_aapcscc void @BF_ofb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
