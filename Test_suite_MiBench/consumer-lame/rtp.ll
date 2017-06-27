; ModuleID = 'rtp.c'
source_filename = "rtp.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.rtpheader = type { %struct.rtpbits, i32, i32, i32 }
%struct.rtpbits = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [18 x i8] c"socket() failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt SO_REUSEADDR failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"setsockopt IP_MULTICAST_TTL failed.  multicast in kernel?\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"setsockopt IP_MULTICAST_LOOP failed.  multicast in kernel?\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @initrtp(%struct.rtpheader*) #0 {
  %2 = alloca %struct.rtpheader*, align 4
  store %struct.rtpheader* %0, %struct.rtpheader** %2, align 4
  %3 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %4 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %3, i32 0, i32 0
  %5 = bitcast %struct.rtpbits* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1073741823
  %8 = or i32 %7, -2147483648
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %10 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %9, i32 0, i32 0
  %11 = bitcast %struct.rtpbits* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -536870913
  store i32 %13, i32* %11, align 4
  %14 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %15 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %14, i32 0, i32 0
  %16 = bitcast %struct.rtpbits* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -268435457
  store i32 %18, i32* %16, align 4
  %19 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %20 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %19, i32 0, i32 0
  %21 = bitcast %struct.rtpbits* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -251658241
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %25 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %24, i32 0, i32 0
  %26 = bitcast %struct.rtpbits* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -8388609
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %30 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %29, i32 0, i32 0
  %31 = bitcast %struct.rtpbits* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -8323073
  %34 = or i32 %33, 917504
  store i32 %34, i32* %31, align 4
  %35 = call arm_aapcscc i32 @rand()
  %36 = and i32 %35, 65535
  %37 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %38 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %37, i32 0, i32 0
  %39 = bitcast %struct.rtpbits* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %36, 65535
  %42 = and i32 %40, -65536
  %43 = or i32 %42, %41
  store i32 %43, i32* %39, align 4
  %44 = shl i32 %41, 16
  %45 = ashr i32 %44, 16
  %46 = call arm_aapcscc i32 @rand()
  %47 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %48 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = call arm_aapcscc i32 @rand()
  %50 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %51 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtpheader*, %struct.rtpheader** %2, align 4
  %53 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  ret void
}

declare arm_aapcscc i32 @rand() #1

; Function Attrs: nounwind
define arm_aapcscc i32 @sendrtp(i32, %struct.sockaddr_in*, %struct.rtpheader*, i8*, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 4
  %8 = alloca %struct.rtpheader*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32*, align 4
  %13 = alloca i32*, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 4
  store %struct.rtpheader* %2, %struct.rtpheader** %8, align 4
  store i8* %3, i8** %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = add i32 %14, 16
  %16 = alloca i8, i32 %15
  store i8* %16, i8** %11, align 4
  %17 = load %struct.rtpheader*, %struct.rtpheader** %8, align 4
  %18 = bitcast %struct.rtpheader* %17 to i32*
  store i32* %18, i32** %12, align 4
  %19 = load i8*, i8** %11, align 4
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 4
  %21 = load i32*, i32** %12, align 4
  %22 = getelementptr inbounds i32, i32* %21, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call arm_aapcscc i32 @htonl(i32 %23)
  %25 = load i32*, i32** %13, align 4
  %26 = getelementptr inbounds i32, i32* %25, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %12, align 4
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call arm_aapcscc i32 @htonl(i32 %29)
  %31 = load i32*, i32** %13, align 4
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %12, align 4
  %34 = getelementptr inbounds i32, i32* %33, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call arm_aapcscc i32 @htonl(i32 %35)
  %37 = load i32*, i32** %13, align 4
  %38 = getelementptr inbounds i32, i32* %37, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %12, align 4
  %40 = getelementptr inbounds i32, i32* %39, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call arm_aapcscc i32 @htonl(i32 %41)
  %43 = load i32*, i32** %13, align 4
  %44 = getelementptr inbounds i32, i32* %43, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %11, align 4
  %46 = getelementptr inbounds i8, i8* %45, i32 16
  %47 = load i8*, i8** %9, align 4
  %48 = load i32, i32* %10, align 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %46, i8* %47, i32 %48, i32 1, i1 false)
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 16
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 4
  %54 = bitcast %struct.sockaddr_in* %53 to %struct.sockaddr*
  %55 = call arm_aapcscc i32 @sendto(i32 %49, i8* %50, i32 %52, i32 0, %struct.sockaddr* %54, i32 16)
  ret i32 %55
}

declare arm_aapcscc i32 @htonl(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

declare arm_aapcscc i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @makesocket(i8*, i16 zeroext, i32, %struct.sockaddr_in*) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %8, align 4
  store i32 1, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %18 = call arm_aapcscc i32 @socket(i32 2, i32 2, i32 0)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %23 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:24:                                     ; preds = %4
  %25 = load i8*, i8** %5, align 4
  %26 = call arm_aapcscc i32 @inet_addr(i8* %25)
  store i32 %26, i32* %14, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = load i16, i16* %6, align 2
  %31 = call arm_aapcscc zeroext i16 @htons(i16 zeroext %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  store i16 %31, i16* %34, align 2
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 4
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = bitcast i32* %10 to i8*
  %41 = call arm_aapcscc i32 @setsockopt(i32 %39, i32 1, i32 2, i8* %40, i32 4)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %24
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %46 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:47:                                     ; preds = %24
  %48 = load i32, i32* %14, align 4
  %49 = call arm_aapcscc i32 @ntohl(i32 %48)
  %50 = lshr i32 %49, 28
  %51 = icmp eq i32 %50, 14
  br i1 %51, label %52, label %69

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %15, align 4
  %54 = call arm_aapcscc i32 @setsockopt(i32 %53, i32 0, i32 33, i8* %12, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %59 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:60:                                     ; preds = %52
  store i8 1, i8* %13, align 1
  %61 = load i32, i32* %15, align 4
  %62 = call arm_aapcscc i32 @setsockopt(i32 %61, i32 0, i32 34, i8* %13, i32 1)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %67 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:68:                                     ; preds = %60
  br label %69

; <label>:69:                                     ; preds = %68, %47
  %70 = load i32, i32* %15, align 4
  ret i32 %70
}

declare arm_aapcscc i32 @socket(i32, i32, i32) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

declare arm_aapcscc i32 @inet_addr(i8*) #1

declare arm_aapcscc zeroext i16 @htons(i16 zeroext) #1

declare arm_aapcscc i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare arm_aapcscc i32 @ntohl(i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
