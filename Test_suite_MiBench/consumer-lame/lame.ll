; ModuleID = 'lame.c'
source_filename = "lame.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i32, i32, i32 }
%struct._IO_FILE = type opaque
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 4
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external global [6 x %struct.scalefac_struct], align 4
@scalefac_band = external global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal global i32 0, align 4
@lame_encode_frame.bitsPerSlot = internal global i32 0, align 4
@lame_encode_frame.frac_SpF = internal global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal global i32 0, align 4
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 8
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [44 x i8] c"mf_size>=(BLKSIZE+gfp->framesize-FFTOFFSET)\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"lame.c\00", align 1
@__func__.lame_encode_frame = private unnamed_addr constant [18 x i8] c"lame_encode_frame\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal global [2 x double] zeroinitializer, align 8
@fill_buffer_resample.inbuf_old = internal global [2 x [5 x i16]] zeroinitializer, align 2
@fill_buffer_resample.init = internal global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"MFSIZE>=mf_needed\00", align 1
@__func__.lame_encode_buffer = private unnamed_addr constant [19 x i8] c"lame_encode_buffer\00", align 1
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 2
@mf_samples_to_encode = internal global i32 0, align 4
@mf_size = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"mf_size<=MFSIZE\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"nsamples==0\00", align 1
@lame_encode_buffer_interleaved.frame_buffered = internal global i32 0, align 4
@__func__.lame_encode_buffer_interleaved = private unnamed_addr constant [31 x i8] c"lame_encode_buffer_interleaved\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @lame_init_params(%struct.lame_global_flags*) #0 {
  %2 = alloca %struct.lame_global_flags*, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %2, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.bit_stream_struc* @bs to i8*), i8 0, i32 32, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.III_side_info_t* @l3_side to i8*), i8 0, i32 492, i32 4, i1 false)
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 39
  store i32 0, i32* %12, align 4
  call arm_aapcscc void @InitFormatBitStream()
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %14 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %1
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %19 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 8
  store i32 3, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %17, %1
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %22 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 46
  store i32 2, i32* %22, align 4
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %20
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %29 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 46
  store i32 1, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %180

; <label>:35:                                     ; preds = %30
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %37 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %40 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %42 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 48000
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %35
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %47 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 3
  store i32 48000, i32* %47, align 4
  br label %87

; <label>:48:                                     ; preds = %35
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %50 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 44100
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %48
  %54 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %55 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %54, i32 0, i32 3
  store i32 44100, i32* %55, align 4
  br label %86

; <label>:56:                                     ; preds = %48
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %58 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 32000
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %56
  %62 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %63 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %62, i32 0, i32 3
  store i32 32000, i32* %63, align 4
  br label %85

; <label>:64:                                     ; preds = %56
  %65 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %66 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 24000
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %64
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %71 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %70, i32 0, i32 3
  store i32 24000, i32* %71, align 4
  br label %84

; <label>:72:                                     ; preds = %64
  %73 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %74 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 22050
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %72
  %78 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %79 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %78, i32 0, i32 3
  store i32 22050, i32* %79, align 4
  br label %83

; <label>:80:                                     ; preds = %72
  %81 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %82 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %81, i32 0, i32 3
  store i32 16000, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %80, %77
  br label %84

; <label>:84:                                     ; preds = %83, %69
  br label %85

; <label>:85:                                     ; preds = %84, %61
  br label %86

; <label>:86:                                     ; preds = %85, %53
  br label %87

; <label>:87:                                     ; preds = %86, %45
  %88 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %89 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %179

; <label>:92:                                     ; preds = %87
  %93 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %94 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 16
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %98 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 46
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = sitofp i32 %100 to double
  %102 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %103 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to double
  %106 = fmul double 1.000000e+03, %105
  %107 = fdiv double %101, %106
  %108 = fptrunc double %107 to float
  store float %108, float* %4, align 4
  %109 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %110 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %109, i32 0, i32 21
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %178, label %113

; <label>:113:                                    ; preds = %92
  %114 = load float, float* %4, align 4
  %115 = fcmp ogt float %114, 1.300000e+01
  br i1 %115, label %116, label %178

; <label>:116:                                    ; preds = %113
  %117 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %118 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = fmul double 1.000000e+04, %120
  %122 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %123 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %122, i32 0, i32 46
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 16, %124
  %126 = sitofp i32 %125 to double
  %127 = fdiv double %121, %126
  %128 = fptosi double %127 to i32
  %129 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %130 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %132 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %133, 16000
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %116
  %136 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %137 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %136, i32 0, i32 3
  store i32 16000, i32* %137, align 4
  br label %177

; <label>:138:                                    ; preds = %116
  %139 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %140 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp sle i32 %141, 22050
  br i1 %142, label %143, label %146

; <label>:143:                                    ; preds = %138
  %144 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %145 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %144, i32 0, i32 3
  store i32 22050, i32* %145, align 4
  br label %176

; <label>:146:                                    ; preds = %138
  %147 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %148 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %149, 24000
  br i1 %150, label %151, label %154

; <label>:151:                                    ; preds = %146
  %152 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %153 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %152, i32 0, i32 3
  store i32 24000, i32* %153, align 4
  br label %175

; <label>:154:                                    ; preds = %146
  %155 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %156 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp sle i32 %157, 32000
  br i1 %158, label %159, label %162

; <label>:159:                                    ; preds = %154
  %160 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %161 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %160, i32 0, i32 3
  store i32 32000, i32* %161, align 4
  br label %174

; <label>:162:                                    ; preds = %154
  %163 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %164 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp sle i32 %165, 44100
  br i1 %166, label %167, label %170

; <label>:167:                                    ; preds = %162
  %168 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %169 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %168, i32 0, i32 3
  store i32 44100, i32* %169, align 4
  br label %173

; <label>:170:                                    ; preds = %162
  %171 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %172 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %171, i32 0, i32 3
  store i32 48000, i32* %172, align 4
  br label %173

; <label>:173:                                    ; preds = %170, %167
  br label %174

; <label>:174:                                    ; preds = %173, %159
  br label %175

; <label>:175:                                    ; preds = %174, %151
  br label %176

; <label>:176:                                    ; preds = %175, %143
  br label %177

; <label>:177:                                    ; preds = %176, %135
  br label %178

; <label>:178:                                    ; preds = %177, %113, %92
  br label %179

; <label>:179:                                    ; preds = %178, %87
  br label %180

; <label>:180:                                    ; preds = %179, %30
  %181 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %182 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %183, 24000
  %185 = select i1 %184, i32 1, i32 2
  %186 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %187 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %186, i32 0, i32 45
  store i32 %185, i32* %187, align 4
  %188 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %189 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %188, i32 0, i32 41
  store i32 800, i32* %189, align 4
  %190 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %191 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %190, i32 0, i32 45
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %192, 576
  %194 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %195 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %194, i32 0, i32 42
  store i32 %193, i32* %195, align 4
  %196 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %197 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %211

; <label>:200:                                    ; preds = %180
  %201 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %202 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %201, i32 0, i32 11
  store i32 128, i32* %202, align 4
  %203 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %204 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %203, i32 0, i32 45
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %210

; <label>:207:                                    ; preds = %200
  %208 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %209 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %208, i32 0, i32 11
  store i32 64, i32* %209, align 4
  br label %210

; <label>:210:                                    ; preds = %207, %200
  br label %211

; <label>:211:                                    ; preds = %210, %180
  %212 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %213 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %212, i32 0, i32 49
  store float 1.000000e+00, float* %213, align 4
  %214 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %215 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %218 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %216, %219
  br i1 %220, label %221, label %233

; <label>:221:                                    ; preds = %211
  %222 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %223 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = sitofp i32 %224 to float
  %226 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %227 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = sitofp i32 %228 to float
  %230 = fdiv float %225, %229
  %231 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %232 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %231, i32 0, i32 49
  store float %230, float* %232, align 4
  br label %233

; <label>:233:                                    ; preds = %221, %211
  %234 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %235 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %234, i32 0, i32 40
  store i32 0, i32* %235, align 4
  %236 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %237 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = uitofp i32 %238 to float
  %240 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %241 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %240, i32 0, i32 49
  %242 = load float, float* %241, align 4
  %243 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %244 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %243, i32 0, i32 42
  %245 = load i32, i32* %244, align 4
  %246 = sitofp i32 %245 to float
  %247 = fmul float %242, %246
  %248 = fdiv float %239, %247
  %249 = fadd float 2.000000e+00, %248
  %250 = fptosi float %249 to i32
  %251 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %252 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %251, i32 0, i32 40
  store i32 %250, i32* %252, align 4
  %253 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %254 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 4
  %256 = icmp sge i32 %255, 320
  br i1 %256, label %257, label %260

; <label>:257:                                    ; preds = %233
  %258 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %259 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %258, i32 0, i32 21
  store i32 0, i32* %259, align 4
  br label %260

; <label>:260:                                    ; preds = %257, %233
  %261 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %262 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %263, 16
  %265 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %266 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %265, i32 0, i32 46
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %264, %267
  %269 = sitofp i32 %268 to double
  %270 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %271 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %270, i32 0, i32 11
  %272 = load i32, i32* %271, align 4
  %273 = sitofp i32 %272 to double
  %274 = fmul double 1.000000e+03, %273
  %275 = fdiv double %269, %274
  %276 = fptrunc double %275 to float
  store float %276, float* %4, align 4
  %277 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %278 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %277, i32 0, i32 21
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

; <label>:281:                                    ; preds = %260
  %282 = load float, float* %4, align 4
  %283 = fcmp ogt float %282, 1.100000e+01
  br i1 %283, label %284, label %291

; <label>:284:                                    ; preds = %281
  %285 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %286 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %285, i32 0, i32 22
  %287 = load i32, i32* %286, align 4
  %288 = sitofp i32 %287 to double
  %289 = fadd double 4.400000e+00, %288
  %290 = fptrunc double %289 to float
  store float %290, float* %4, align 4
  br label %291

; <label>:291:                                    ; preds = %284, %281, %260
  %292 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %293 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %308, label %296

; <label>:296:                                    ; preds = %291
  %297 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %298 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 3
  br i1 %300, label %301, label %308

; <label>:301:                                    ; preds = %296
  %302 = load float, float* %4, align 4
  %303 = fcmp olt float %302, 9.000000e+00
  br i1 %303, label %304, label %307

; <label>:304:                                    ; preds = %301
  %305 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %306 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %305, i32 0, i32 8
  store i32 0, i32* %306, align 4
  br label %307

; <label>:307:                                    ; preds = %304, %301
  br label %308

; <label>:308:                                    ; preds = %307, %296, %291
  %309 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %310 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %309, i32 0, i32 25
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %339

; <label>:313:                                    ; preds = %308
  %314 = load float, float* %4, align 4
  %315 = fpext float %314 to double
  %316 = fdiv double %315, 1.600000e+01
  %317 = call arm_aapcscc double @log(double %316) #6
  %318 = fmul double 1.800000e+01, %317
  %319 = fsub double 1.450000e+01, %318
  %320 = call arm_aapcscc double @floor(double %319) #7
  %321 = fadd double 1.000000e+00, %320
  %322 = fptosi double %321 to i32
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %5, align 4
  %324 = icmp slt i32 %323, 31
  br i1 %324, label %325, label %338

; <label>:325:                                    ; preds = %313
  %326 = load i32, i32* %5, align 4
  %327 = sitofp i32 %326 to double
  %328 = fdiv double %327, 3.100000e+01
  %329 = fptrunc double %328 to float
  %330 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %331 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %330, i32 0, i32 53
  store float %329, float* %331, align 4
  %332 = load i32, i32* %5, align 4
  %333 = sitofp i32 %332 to double
  %334 = fdiv double %333, 3.100000e+01
  %335 = fptrunc double %334 to float
  %336 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %337 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %336, i32 0, i32 54
  store float %335, float* %337, align 4
  br label %338

; <label>:338:                                    ; preds = %325, %313
  br label %339

; <label>:339:                                    ; preds = %338, %308
  %340 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %341 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %340, i32 0, i32 26
  %342 = load i32, i32* %341, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %421

; <label>:344:                                    ; preds = %339
  %345 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %346 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %345, i32 0, i32 26
  %347 = load i32, i32* %346, align 4
  %348 = sitofp i32 %347 to double
  %349 = fmul double 2.000000e+00, %348
  %350 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %351 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = sitofp i32 %352 to double
  %354 = fdiv double %349, %353
  %355 = fptrunc double %354 to float
  %356 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %357 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %356, i32 0, i32 55
  store float %355, float* %357, align 4
  %358 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %359 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %358, i32 0, i32 28
  %360 = load i32, i32* %359, align 4
  %361 = icmp sge i32 %360, 0
  br i1 %361, label %362, label %380

; <label>:362:                                    ; preds = %344
  %363 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %364 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %363, i32 0, i32 26
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %367 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %366, i32 0, i32 28
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %365, %368
  %370 = sitofp i32 %369 to double
  %371 = fmul double 2.000000e+00, %370
  %372 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %373 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = sitofp i32 %374 to double
  %376 = fdiv double %371, %375
  %377 = fptrunc double %376 to float
  %378 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %379 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %378, i32 0, i32 56
  store float %377, float* %379, align 4
  br label %394

; <label>:380:                                    ; preds = %344
  %381 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %382 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %381, i32 0, i32 26
  %383 = load i32, i32* %382, align 4
  %384 = sitofp i32 %383 to double
  %385 = fmul double 2.000000e+00, %384
  %386 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %387 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = sitofp i32 %388 to double
  %390 = fdiv double %385, %389
  %391 = fptrunc double %390 to float
  %392 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %393 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %392, i32 0, i32 56
  store float %391, float* %393, align 4
  br label %394

; <label>:394:                                    ; preds = %380, %362
  %395 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %396 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %395, i32 0, i32 55
  %397 = load float, float* %396, align 4
  %398 = fcmp olt float 1.000000e+00, %397
  br i1 %398, label %399, label %400

; <label>:399:                                    ; preds = %394
  br label %404

; <label>:400:                                    ; preds = %394
  %401 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %402 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %401, i32 0, i32 55
  %403 = load float, float* %402, align 4
  br label %404

; <label>:404:                                    ; preds = %400, %399
  %405 = phi float [ 1.000000e+00, %399 ], [ %403, %400 ]
  %406 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %407 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %406, i32 0, i32 55
  store float %405, float* %407, align 4
  %408 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %409 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %408, i32 0, i32 56
  %410 = load float, float* %409, align 4
  %411 = fcmp olt float 1.000000e+00, %410
  br i1 %411, label %412, label %413

; <label>:412:                                    ; preds = %404
  br label %417

; <label>:413:                                    ; preds = %404
  %414 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %415 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %414, i32 0, i32 56
  %416 = load float, float* %415, align 4
  br label %417

; <label>:417:                                    ; preds = %413, %412
  %418 = phi float [ 1.000000e+00, %412 ], [ %416, %413 ]
  %419 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %420 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %419, i32 0, i32 56
  store float %418, float* %420, align 4
  br label %421

; <label>:421:                                    ; preds = %417, %339
  %422 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %423 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %422, i32 0, i32 25
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %511

; <label>:426:                                    ; preds = %421
  %427 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %428 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %427, i32 0, i32 25
  %429 = load i32, i32* %428, align 4
  %430 = sitofp i32 %429 to double
  %431 = fmul double 2.000000e+00, %430
  %432 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %433 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = sitofp i32 %434 to double
  %436 = fdiv double %431, %435
  %437 = fptrunc double %436 to float
  %438 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %439 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %438, i32 0, i32 54
  store float %437, float* %439, align 4
  %440 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %441 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %440, i32 0, i32 27
  %442 = load i32, i32* %441, align 4
  %443 = icmp sge i32 %442, 0
  br i1 %443, label %444, label %470

; <label>:444:                                    ; preds = %426
  %445 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %446 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %445, i32 0, i32 25
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %449 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %448, i32 0, i32 27
  %450 = load i32, i32* %449, align 4
  %451 = sub nsw i32 %447, %450
  %452 = sitofp i32 %451 to double
  %453 = fmul double 2.000000e+00, %452
  %454 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %455 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = sitofp i32 %456 to double
  %458 = fdiv double %453, %457
  %459 = fptrunc double %458 to float
  %460 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %461 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %460, i32 0, i32 53
  store float %459, float* %461, align 4
  %462 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %463 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %462, i32 0, i32 53
  %464 = load float, float* %463, align 4
  %465 = fcmp olt float %464, 0.000000e+00
  br i1 %465, label %466, label %469

; <label>:466:                                    ; preds = %444
  %467 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %468 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %467, i32 0, i32 53
  store float 0.000000e+00, float* %468, align 4
  br label %469

; <label>:469:                                    ; preds = %466, %444
  br label %484

; <label>:470:                                    ; preds = %426
  %471 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %472 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %471, i32 0, i32 25
  %473 = load i32, i32* %472, align 4
  %474 = sitofp i32 %473 to double
  %475 = fmul double 2.000000e+00, %474
  %476 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %477 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = sitofp i32 %478 to double
  %480 = fdiv double %475, %479
  %481 = fptrunc double %480 to float
  %482 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %483 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %482, i32 0, i32 53
  store float %481, float* %483, align 4
  br label %484

; <label>:484:                                    ; preds = %470, %469
  %485 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %486 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %485, i32 0, i32 53
  %487 = load float, float* %486, align 4
  %488 = fcmp olt float 1.000000e+00, %487
  br i1 %488, label %489, label %490

; <label>:489:                                    ; preds = %484
  br label %494

; <label>:490:                                    ; preds = %484
  %491 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %492 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %491, i32 0, i32 53
  %493 = load float, float* %492, align 4
  br label %494

; <label>:494:                                    ; preds = %490, %489
  %495 = phi float [ 1.000000e+00, %489 ], [ %493, %490 ]
  %496 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %497 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %496, i32 0, i32 53
  store float %495, float* %497, align 4
  %498 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %499 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %498, i32 0, i32 54
  %500 = load float, float* %499, align 4
  %501 = fcmp olt float 1.000000e+00, %500
  br i1 %501, label %502, label %503

; <label>:502:                                    ; preds = %494
  br label %507

; <label>:503:                                    ; preds = %494
  %504 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %505 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %504, i32 0, i32 54
  %506 = load float, float* %505, align 4
  br label %507

; <label>:507:                                    ; preds = %503, %502
  %508 = phi float [ 1.000000e+00, %502 ], [ %506, %503 ]
  %509 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %510 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %509, i32 0, i32 54
  store float %508, float* %510, align 4
  br label %511

; <label>:511:                                    ; preds = %507, %421
  %512 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %513 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %512, i32 0, i32 59
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %774

; <label>:516:                                    ; preds = %511
  %517 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %518 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %517, i32 0, i32 53
  %519 = load float, float* %518, align 4
  %520 = fcmp ogt float %519, 0.000000e+00
  br i1 %520, label %521, label %635

; <label>:521:                                    ; preds = %516
  store i32 999, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %522

; <label>:522:                                    ; preds = %602, %521
  %523 = load i32, i32* %6, align 4
  %524 = icmp sle i32 %523, 31
  br i1 %524, label %525, label %605

; <label>:525:                                    ; preds = %522
  %526 = load i32, i32* %6, align 4
  %527 = sitofp i32 %526 to double
  %528 = fdiv double %527, 3.100000e+01
  store double %528, double* %10, align 8
  store double 1.000000e+00, double* %9, align 8
  %529 = load double, double* %10, align 8
  %530 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %531 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %530, i32 0, i32 54
  %532 = load float, float* %531, align 4
  %533 = fpext float %532 to double
  %534 = fcmp oge double %529, %533
  br i1 %534, label %535, label %551

; <label>:535:                                    ; preds = %525
  %536 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %537 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %536, i32 0, i32 57
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* %6, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %545

; <label>:541:                                    ; preds = %535
  %542 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %543 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %542, i32 0, i32 57
  %544 = load i32, i32* %543, align 4
  br label %547

; <label>:545:                                    ; preds = %535
  %546 = load i32, i32* %6, align 4
  br label %547

; <label>:547:                                    ; preds = %545, %541
  %548 = phi i32 [ %544, %541 ], [ %546, %545 ]
  %549 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %550 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %549, i32 0, i32 57
  store i32 %548, i32* %550, align 4
  store double 0.000000e+00, double* %9, align 8
  br label %551

; <label>:551:                                    ; preds = %547, %525
  %552 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %553 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %552, i32 0, i32 53
  %554 = load float, float* %553, align 4
  %555 = fpext float %554 to double
  %556 = load double, double* %10, align 8
  %557 = fcmp olt double %555, %556
  br i1 %557, label %558, label %601

; <label>:558:                                    ; preds = %551
  %559 = load double, double* %10, align 8
  %560 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %561 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %560, i32 0, i32 54
  %562 = load float, float* %561, align 4
  %563 = fpext float %562 to double
  %564 = fcmp olt double %559, %563
  br i1 %564, label %565, label %601

; <label>:565:                                    ; preds = %558
  %566 = load i32, i32* %8, align 4
  %567 = load i32, i32* %6, align 4
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %569, label %571

; <label>:569:                                    ; preds = %565
  %570 = load i32, i32* %8, align 4
  br label %573

; <label>:571:                                    ; preds = %565
  %572 = load i32, i32* %6, align 4
  br label %573

; <label>:573:                                    ; preds = %571, %569
  %574 = phi i32 [ %570, %569 ], [ %572, %571 ]
  store i32 %574, i32* %8, align 4
  %575 = load i32, i32* %7, align 4
  %576 = load i32, i32* %6, align 4
  %577 = icmp sgt i32 %575, %576
  br i1 %577, label %578, label %580

; <label>:578:                                    ; preds = %573
  %579 = load i32, i32* %7, align 4
  br label %582

; <label>:580:                                    ; preds = %573
  %581 = load i32, i32* %6, align 4
  br label %582

; <label>:582:                                    ; preds = %580, %578
  %583 = phi i32 [ %579, %578 ], [ %581, %580 ]
  store i32 %583, i32* %7, align 4
  %584 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %585 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %584, i32 0, i32 53
  %586 = load float, float* %585, align 4
  %587 = fpext float %586 to double
  %588 = load double, double* %10, align 8
  %589 = fsub double %587, %588
  %590 = fmul double 0x3FF921FB54442D18, %589
  %591 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %592 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %591, i32 0, i32 54
  %593 = load float, float* %592, align 4
  %594 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %595 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %594, i32 0, i32 53
  %596 = load float, float* %595, align 4
  %597 = fsub float %593, %596
  %598 = fpext float %597 to double
  %599 = fdiv double %590, %598
  %600 = call arm_aapcscc double @cos(double %599) #6
  store double %600, double* %9, align 8
  br label %601

; <label>:601:                                    ; preds = %582, %558, %551
  br label %602

; <label>:602:                                    ; preds = %601
  %603 = load i32, i32* %6, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %6, align 4
  br label %522

; <label>:605:                                    ; preds = %522
  %606 = load i32, i32* %8, align 4
  %607 = icmp eq i32 %606, 999
  br i1 %607, label %608, label %618

; <label>:608:                                    ; preds = %605
  %609 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %610 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %609, i32 0, i32 57
  %611 = load i32, i32* %610, align 4
  %612 = sitofp i32 %611 to double
  %613 = fsub double %612, 7.500000e-01
  %614 = fdiv double %613, 3.100000e+01
  %615 = fptrunc double %614 to float
  %616 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %617 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %616, i32 0, i32 53
  store float %615, float* %617, align 4
  br label %626

; <label>:618:                                    ; preds = %605
  %619 = load i32, i32* %8, align 4
  %620 = sitofp i32 %619 to double
  %621 = fsub double %620, 7.500000e-01
  %622 = fdiv double %621, 3.100000e+01
  %623 = fptrunc double %622 to float
  %624 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %625 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %624, i32 0, i32 53
  store float %623, float* %625, align 4
  br label %626

; <label>:626:                                    ; preds = %618, %608
  %627 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %628 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %627, i32 0, i32 57
  %629 = load i32, i32* %628, align 4
  %630 = sitofp i32 %629 to double
  %631 = fdiv double %630, 3.100000e+01
  %632 = fptrunc double %631 to float
  %633 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %634 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %633, i32 0, i32 54
  store float %632, float* %634, align 4
  br label %635

; <label>:635:                                    ; preds = %626, %516
  %636 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %637 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %636, i32 0, i32 56
  %638 = load float, float* %637, align 4
  %639 = fcmp ogt float %638, 0.000000e+00
  br i1 %639, label %640, label %654

; <label>:640:                                    ; preds = %635
  %641 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %642 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %641, i32 0, i32 56
  %643 = load float, float* %642, align 4
  %644 = fpext float %643 to double
  %645 = fcmp olt double %644, 0x3F964BF964BF964C
  br i1 %645, label %646, label %653

; <label>:646:                                    ; preds = %640
  %647 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %648 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %647, i32 0, i32 55
  store float 0.000000e+00, float* %648, align 4
  %649 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %650 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %649, i32 0, i32 56
  store float 0.000000e+00, float* %650, align 4
  %651 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %652 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %651, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0))
  br label %653

; <label>:653:                                    ; preds = %646, %640
  br label %654

; <label>:654:                                    ; preds = %653, %635
  %655 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %656 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %655, i32 0, i32 56
  %657 = load float, float* %656, align 4
  %658 = fcmp ogt float %657, 0.000000e+00
  br i1 %658, label %659, label %773

; <label>:659:                                    ; preds = %654
  store i32 999, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %660

; <label>:660:                                    ; preds = %740, %659
  %661 = load i32, i32* %6, align 4
  %662 = icmp sle i32 %661, 31
  br i1 %662, label %663, label %743

; <label>:663:                                    ; preds = %660
  %664 = load i32, i32* %6, align 4
  %665 = sitofp i32 %664 to double
  %666 = fdiv double %665, 3.100000e+01
  store double %666, double* %10, align 8
  store double 1.000000e+00, double* %9, align 8
  %667 = load double, double* %10, align 8
  %668 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %669 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %668, i32 0, i32 55
  %670 = load float, float* %669, align 4
  %671 = fpext float %670 to double
  %672 = fcmp ole double %667, %671
  br i1 %672, label %673, label %689

; <label>:673:                                    ; preds = %663
  %674 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %675 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %674, i32 0, i32 58
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* %6, align 4
  %678 = icmp sgt i32 %676, %677
  br i1 %678, label %679, label %683

; <label>:679:                                    ; preds = %673
  %680 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %681 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %680, i32 0, i32 58
  %682 = load i32, i32* %681, align 4
  br label %685

; <label>:683:                                    ; preds = %673
  %684 = load i32, i32* %6, align 4
  br label %685

; <label>:685:                                    ; preds = %683, %679
  %686 = phi i32 [ %682, %679 ], [ %684, %683 ]
  %687 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %688 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %687, i32 0, i32 58
  store i32 %686, i32* %688, align 4
  store double 0.000000e+00, double* %9, align 8
  br label %689

; <label>:689:                                    ; preds = %685, %663
  %690 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %691 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %690, i32 0, i32 55
  %692 = load float, float* %691, align 4
  %693 = fpext float %692 to double
  %694 = load double, double* %10, align 8
  %695 = fcmp olt double %693, %694
  br i1 %695, label %696, label %739

; <label>:696:                                    ; preds = %689
  %697 = load double, double* %10, align 8
  %698 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %699 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %698, i32 0, i32 56
  %700 = load float, float* %699, align 4
  %701 = fpext float %700 to double
  %702 = fcmp olt double %697, %701
  br i1 %702, label %703, label %739

; <label>:703:                                    ; preds = %696
  %704 = load i32, i32* %8, align 4
  %705 = load i32, i32* %6, align 4
  %706 = icmp slt i32 %704, %705
  br i1 %706, label %707, label %709

; <label>:707:                                    ; preds = %703
  %708 = load i32, i32* %8, align 4
  br label %711

; <label>:709:                                    ; preds = %703
  %710 = load i32, i32* %6, align 4
  br label %711

; <label>:711:                                    ; preds = %709, %707
  %712 = phi i32 [ %708, %707 ], [ %710, %709 ]
  store i32 %712, i32* %8, align 4
  %713 = load i32, i32* %7, align 4
  %714 = load i32, i32* %6, align 4
  %715 = icmp sgt i32 %713, %714
  br i1 %715, label %716, label %718

; <label>:716:                                    ; preds = %711
  %717 = load i32, i32* %7, align 4
  br label %720

; <label>:718:                                    ; preds = %711
  %719 = load i32, i32* %6, align 4
  br label %720

; <label>:720:                                    ; preds = %718, %716
  %721 = phi i32 [ %717, %716 ], [ %719, %718 ]
  store i32 %721, i32* %7, align 4
  %722 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %723 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %722, i32 0, i32 56
  %724 = load float, float* %723, align 4
  %725 = fpext float %724 to double
  %726 = load double, double* %10, align 8
  %727 = fsub double %725, %726
  %728 = fmul double 0x3FF921FB54442D18, %727
  %729 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %730 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %729, i32 0, i32 56
  %731 = load float, float* %730, align 4
  %732 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %733 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %732, i32 0, i32 55
  %734 = load float, float* %733, align 4
  %735 = fsub float %731, %734
  %736 = fpext float %735 to double
  %737 = fdiv double %728, %736
  %738 = call arm_aapcscc double @cos(double %737) #6
  store double %738, double* %9, align 8
  br label %739

; <label>:739:                                    ; preds = %720, %696, %689
  br label %740

; <label>:740:                                    ; preds = %739
  %741 = load i32, i32* %6, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %6, align 4
  br label %660

; <label>:743:                                    ; preds = %660
  %744 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %745 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %744, i32 0, i32 58
  %746 = load i32, i32* %745, align 4
  %747 = sitofp i32 %746 to double
  %748 = fdiv double %747, 3.100000e+01
  %749 = fptrunc double %748 to float
  %750 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %751 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %750, i32 0, i32 55
  store float %749, float* %751, align 4
  %752 = load i32, i32* %7, align 4
  %753 = icmp eq i32 %752, -1
  br i1 %753, label %754, label %764

; <label>:754:                                    ; preds = %743
  %755 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %756 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %755, i32 0, i32 58
  %757 = load i32, i32* %756, align 4
  %758 = sitofp i32 %757 to double
  %759 = fadd double %758, 7.500000e-01
  %760 = fdiv double %759, 3.100000e+01
  %761 = fptrunc double %760 to float
  %762 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %763 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %762, i32 0, i32 56
  store float %761, float* %763, align 4
  br label %772

; <label>:764:                                    ; preds = %743
  %765 = load i32, i32* %7, align 4
  %766 = sitofp i32 %765 to double
  %767 = fadd double %766, 7.500000e-01
  %768 = fdiv double %767, 3.100000e+01
  %769 = fptrunc double %768 to float
  %770 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %771 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %770, i32 0, i32 56
  store float %769, float* %771, align 4
  br label %772

; <label>:772:                                    ; preds = %764, %754
  br label %773

; <label>:773:                                    ; preds = %772, %654
  br label %774

; <label>:774:                                    ; preds = %773, %511
  %775 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %776 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %775, i32 0, i32 59
  %777 = load i32, i32* %776, align 4
  %778 = icmp eq i32 %777, 1
  br i1 %778, label %779, label %780

; <label>:779:                                    ; preds = %774
  br label %780

; <label>:780:                                    ; preds = %779, %774
  %781 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %782 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %781, i32 0, i32 52
  store i32 0, i32* %782, align 4
  %783 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %784 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %783, i32 0, i32 8
  %785 = load i32, i32* %784, align 4
  %786 = icmp eq i32 %785, 3
  %787 = select i1 %786, i32 1, i32 2
  %788 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %789 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %788, i32 0, i32 46
  store i32 %787, i32* %789, align 4
  %790 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %791 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %790, i32 0, i32 3
  %792 = load i32, i32* %791, align 4
  %793 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %794 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %793, i32 0, i32 43
  %795 = call arm_aapcscc i32 @SmpFrqIndex(i32 %792, i32* %794)
  %796 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %797 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %796, i32 0, i32 51
  store i32 %795, i32* %797, align 4
  %798 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %799 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %798, i32 0, i32 51
  %800 = load i32, i32* %799, align 4
  %801 = icmp slt i32 %800, 0
  br i1 %801, label %802, label %804

; <label>:802:                                    ; preds = %780
  %803 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call arm_aapcscc void @display_bitrates(%struct._IO_FILE* %803)
  call arm_aapcscc void @exit(i32 1) #8
  unreachable

; <label>:804:                                    ; preds = %780
  %805 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %806 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %805, i32 0, i32 11
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %809 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %808, i32 0, i32 43
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %812 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %811, i32 0, i32 3
  %813 = load i32, i32* %812, align 4
  %814 = call arm_aapcscc i32 @BitrateIndex(i32 %807, i32 %810, i32 %813)
  %815 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %816 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %815, i32 0, i32 50
  store i32 %814, i32* %816, align 4
  %817 = icmp slt i32 %814, 0
  br i1 %817, label %818, label %820

; <label>:818:                                    ; preds = %804
  %819 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call arm_aapcscc void @display_bitrates(%struct._IO_FILE* %819)
  call arm_aapcscc void @exit(i32 1) #8
  unreachable

; <label>:820:                                    ; preds = %804
  %821 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %822 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %821, i32 0, i32 21
  %823 = load i32, i32* %822, align 4
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %825, label %908

; <label>:825:                                    ; preds = %820
  %826 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %827 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %826, i32 0, i32 24
  %828 = load i32, i32* %827, align 4
  %829 = icmp eq i32 0, %828
  br i1 %829, label %830, label %865

; <label>:830:                                    ; preds = %825
  %831 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %832 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %831, i32 0, i32 48
  store i32 13, i32* %832, align 4
  %833 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %834 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %833, i32 0, i32 23
  %835 = load i32, i32* %834, align 4
  %836 = icmp sge i32 %835, 256
  br i1 %836, label %837, label %840

; <label>:837:                                    ; preds = %830
  %838 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %839 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %838, i32 0, i32 48
  store i32 14, i32* %839, align 4
  br label %840

; <label>:840:                                    ; preds = %837, %830
  %841 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %842 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %841, i32 0, i32 22
  %843 = load i32, i32* %842, align 4
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %848

; <label>:845:                                    ; preds = %840
  %846 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %847 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %846, i32 0, i32 48
  store i32 14, i32* %847, align 4
  br label %848

; <label>:848:                                    ; preds = %845, %840
  %849 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %850 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %849, i32 0, i32 22
  %851 = load i32, i32* %850, align 4
  %852 = icmp sge i32 %851, 4
  br i1 %852, label %853, label %856

; <label>:853:                                    ; preds = %848
  %854 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %855 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %854, i32 0, i32 48
  store i32 12, i32* %855, align 4
  br label %856

; <label>:856:                                    ; preds = %853, %848
  %857 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %858 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %857, i32 0, i32 22
  %859 = load i32, i32* %858, align 4
  %860 = icmp sge i32 %859, 8
  br i1 %860, label %861, label %864

; <label>:861:                                    ; preds = %856
  %862 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %863 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %862, i32 0, i32 48
  store i32 9, i32* %863, align 4
  br label %864

; <label>:864:                                    ; preds = %861, %856
  br label %882

; <label>:865:                                    ; preds = %825
  %866 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %867 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %866, i32 0, i32 24
  %868 = load i32, i32* %867, align 4
  %869 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %870 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %869, i32 0, i32 43
  %871 = load i32, i32* %870, align 4
  %872 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %873 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %872, i32 0, i32 3
  %874 = load i32, i32* %873, align 4
  %875 = call arm_aapcscc i32 @BitrateIndex(i32 %868, i32 %871, i32 %874)
  %876 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %877 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %876, i32 0, i32 48
  store i32 %875, i32* %877, align 4
  %878 = icmp slt i32 %875, 0
  br i1 %878, label %879, label %881

; <label>:879:                                    ; preds = %865
  %880 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call arm_aapcscc void @display_bitrates(%struct._IO_FILE* %880)
  call arm_aapcscc void @exit(i32 1) #8
  unreachable

; <label>:881:                                    ; preds = %865
  br label %882

; <label>:882:                                    ; preds = %881, %864
  %883 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %884 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %883, i32 0, i32 23
  %885 = load i32, i32* %884, align 4
  %886 = icmp eq i32 0, %885
  br i1 %886, label %887, label %890

; <label>:887:                                    ; preds = %882
  %888 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %889 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %888, i32 0, i32 47
  store i32 1, i32* %889, align 4
  br label %907

; <label>:890:                                    ; preds = %882
  %891 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %892 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %891, i32 0, i32 23
  %893 = load i32, i32* %892, align 4
  %894 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %895 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %894, i32 0, i32 43
  %896 = load i32, i32* %895, align 4
  %897 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %898 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %897, i32 0, i32 3
  %899 = load i32, i32* %898, align 4
  %900 = call arm_aapcscc i32 @BitrateIndex(i32 %893, i32 %896, i32 %899)
  %901 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %902 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %901, i32 0, i32 47
  store i32 %900, i32* %902, align 4
  %903 = icmp slt i32 %900, 0
  br i1 %903, label %904, label %906

; <label>:904:                                    ; preds = %890
  %905 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call arm_aapcscc void @display_bitrates(%struct._IO_FILE* %905)
  call arm_aapcscc void @exit(i32 1) #8
  unreachable

; <label>:906:                                    ; preds = %890
  br label %907

; <label>:907:                                    ; preds = %906, %887
  br label %908

; <label>:908:                                    ; preds = %907, %820
  %909 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %910 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %909, i32 0, i32 21
  %911 = load i32, i32* %910, align 4
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %913, label %927

; <label>:913:                                    ; preds = %908
  %914 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %915 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %914, i32 0, i32 6
  %916 = load i32, i32* %915, align 4
  %917 = icmp slt i32 %916, 2
  br i1 %917, label %918, label %922

; <label>:918:                                    ; preds = %913
  %919 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %920 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %919, i32 0, i32 6
  %921 = load i32, i32* %920, align 4
  br label %923

; <label>:922:                                    ; preds = %913
  br label %923

; <label>:923:                                    ; preds = %922, %918
  %924 = phi i32 [ %921, %918 ], [ 2, %922 ]
  %925 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %926 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %925, i32 0, i32 6
  store i32 %924, i32* %926, align 4
  br label %927

; <label>:927:                                    ; preds = %923, %908
  %928 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %929 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %928, i32 0, i32 8
  %930 = load i32, i32* %929, align 4
  %931 = icmp eq i32 %930, 3
  br i1 %931, label %932, label %935

; <label>:932:                                    ; preds = %927
  %933 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %934 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %933, i32 0, i32 10
  store i32 0, i32* %934, align 4
  br label %935

; <label>:935:                                    ; preds = %932, %927
  %936 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %937 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %936, i32 0, i32 21
  %938 = load i32, i32* %937, align 4
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %943

; <label>:940:                                    ; preds = %935
  %941 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %942 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %941, i32 0, i32 5
  store i32 0, i32* %942, align 4
  br label %943

; <label>:943:                                    ; preds = %940, %935
  %944 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %945 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %944, i32 0, i32 32
  %946 = load i8*, i8** %945, align 4
  %947 = icmp ne i8* %946, null
  br i1 %947, label %948, label %959

; <label>:948:                                    ; preds = %943
  %949 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %950 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %949, i32 0, i32 32
  %951 = load i8*, i8** %950, align 4
  %952 = getelementptr inbounds i8, i8* %951, i32 0
  %953 = load i8, i8* %952, align 1
  %954 = zext i8 %953 to i32
  %955 = icmp eq i32 %954, 45
  br i1 %955, label %956, label %959

; <label>:956:                                    ; preds = %948
  %957 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %958 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %957, i32 0, i32 5
  store i32 0, i32* %958, align 4
  br label %959

; <label>:959:                                    ; preds = %956, %948, %943
  %960 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %961 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %960, i32 0, i32 32
  %962 = load i8*, i8** %961, align 4
  %963 = icmp eq i8* %962, null
  br i1 %963, label %972, label %964

; <label>:964:                                    ; preds = %959
  %965 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %966 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %965, i32 0, i32 32
  %967 = load i8*, i8** %966, align 4
  %968 = getelementptr inbounds i8, i8* %967, i32 0
  %969 = load i8, i8* %968, align 1
  %970 = zext i8 %969 to i32
  %971 = icmp eq i32 %970, 45
  br i1 %971, label %972, label %973

; <label>:972:                                    ; preds = %964, %959
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4
  br label %973

; <label>:973:                                    ; preds = %972, %964
  %974 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %975 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %974, i32 0, i32 4
  %976 = load i32, i32* %975, align 4
  %977 = icmp ne i32 %976, 0
  br i1 %977, label %978, label %981

; <label>:978:                                    ; preds = %973
  %979 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %980 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %979, i32 0, i32 5
  store i32 0, i32* %980, align 4
  br label %981

; <label>:981:                                    ; preds = %978, %973
  call arm_aapcscc void @init_bit_stream_w(%struct.bit_stream_struc* @bs)
  %982 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %983 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %982, i32 0, i32 6
  %984 = load i32, i32* %983, align 4
  %985 = icmp eq i32 %984, 9
  br i1 %985, label %986, label %999

; <label>:986:                                    ; preds = %981
  %987 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %988 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %987, i32 0, i32 59
  store i32 0, i32* %988, align 4
  %989 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %990 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %989, i32 0, i32 63
  store i32 0, i32* %990, align 4
  %991 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %992 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %991, i32 0, i32 60
  store i32 0, i32* %992, align 4
  %993 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %994 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %993, i32 0, i32 61
  store i32 0, i32* %994, align 4
  %995 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %996 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %995, i32 0, i32 62
  store i32 0, i32* %996, align 4
  %997 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %998 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %997, i32 0, i32 64
  store i32 0, i32* %998, align 4
  br label %999

; <label>:999:                                    ; preds = %986, %981
  %1000 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1001 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1000, i32 0, i32 6
  %1002 = load i32, i32* %1001, align 4
  %1003 = icmp eq i32 %1002, 8
  br i1 %1003, label %1004, label %1007

; <label>:1004:                                   ; preds = %999
  %1005 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1006 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1005, i32 0, i32 6
  store i32 7, i32* %1006, align 4
  br label %1007

; <label>:1007:                                   ; preds = %1004, %999
  %1008 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1009 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1008, i32 0, i32 6
  %1010 = load i32, i32* %1009, align 4
  %1011 = icmp eq i32 %1010, 7
  br i1 %1011, label %1012, label %1025

; <label>:1012:                                   ; preds = %1007
  %1013 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1014 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1013, i32 0, i32 59
  store i32 0, i32* %1014, align 4
  %1015 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1016 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1015, i32 0, i32 63
  store i32 1, i32* %1016, align 4
  %1017 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1018 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1017, i32 0, i32 60
  store i32 0, i32* %1018, align 4
  %1019 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1020 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1019, i32 0, i32 61
  store i32 0, i32* %1020, align 4
  %1021 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1022 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1021, i32 0, i32 62
  store i32 0, i32* %1022, align 4
  %1023 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1024 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1023, i32 0, i32 64
  store i32 0, i32* %1024, align 4
  br label %1025

; <label>:1025:                                   ; preds = %1012, %1007
  %1026 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1027 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1026, i32 0, i32 6
  %1028 = load i32, i32* %1027, align 4
  %1029 = icmp eq i32 %1028, 6
  br i1 %1029, label %1030, label %1033

; <label>:1030:                                   ; preds = %1025
  %1031 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1032 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1031, i32 0, i32 6
  store i32 5, i32* %1032, align 4
  br label %1033

; <label>:1033:                                   ; preds = %1030, %1025
  %1034 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1035 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1034, i32 0, i32 6
  %1036 = load i32, i32* %1035, align 4
  %1037 = icmp eq i32 %1036, 5
  br i1 %1037, label %1038, label %1051

; <label>:1038:                                   ; preds = %1033
  %1039 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1040 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1039, i32 0, i32 59
  store i32 0, i32* %1040, align 4
  %1041 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1042 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1041, i32 0, i32 63
  store i32 1, i32* %1042, align 4
  %1043 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1044 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1043, i32 0, i32 60
  store i32 0, i32* %1044, align 4
  %1045 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1046 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1045, i32 0, i32 61
  store i32 1, i32* %1046, align 4
  %1047 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1048 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1047, i32 0, i32 62
  store i32 0, i32* %1048, align 4
  %1049 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1050 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1049, i32 0, i32 64
  store i32 0, i32* %1050, align 4
  br label %1051

; <label>:1051:                                   ; preds = %1038, %1033
  %1052 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1053 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1052, i32 0, i32 6
  %1054 = load i32, i32* %1053, align 4
  %1055 = icmp eq i32 %1054, 4
  br i1 %1055, label %1056, label %1059

; <label>:1056:                                   ; preds = %1051
  %1057 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1058 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1057, i32 0, i32 6
  store i32 2, i32* %1058, align 4
  br label %1059

; <label>:1059:                                   ; preds = %1056, %1051
  %1060 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1061 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1060, i32 0, i32 6
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp eq i32 %1062, 3
  br i1 %1063, label %1064, label %1067

; <label>:1064:                                   ; preds = %1059
  %1065 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1066 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1065, i32 0, i32 6
  store i32 2, i32* %1066, align 4
  br label %1067

; <label>:1067:                                   ; preds = %1064, %1059
  %1068 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1069 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1068, i32 0, i32 6
  %1070 = load i32, i32* %1069, align 4
  %1071 = icmp eq i32 %1070, 2
  br i1 %1071, label %1072, label %1085

; <label>:1072:                                   ; preds = %1067
  %1073 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1074 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1073, i32 0, i32 59
  store i32 0, i32* %1074, align 4
  %1075 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1076 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1075, i32 0, i32 63
  store i32 1, i32* %1076, align 4
  %1077 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1078 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1077, i32 0, i32 60
  store i32 1, i32* %1078, align 4
  %1079 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1080 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1079, i32 0, i32 61
  store i32 1, i32* %1080, align 4
  %1081 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1082 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1081, i32 0, i32 62
  store i32 0, i32* %1082, align 4
  %1083 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1084 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1083, i32 0, i32 64
  store i32 1, i32* %1084, align 4
  br label %1085

; <label>:1085:                                   ; preds = %1072, %1067
  %1086 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1087 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1086, i32 0, i32 6
  %1088 = load i32, i32* %1087, align 4
  %1089 = icmp eq i32 %1088, 1
  br i1 %1089, label %1090, label %1103

; <label>:1090:                                   ; preds = %1085
  %1091 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1092 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1091, i32 0, i32 59
  store i32 0, i32* %1092, align 4
  %1093 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1094 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1093, i32 0, i32 63
  store i32 1, i32* %1094, align 4
  %1095 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1096 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1095, i32 0, i32 60
  store i32 1, i32* %1096, align 4
  %1097 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1098 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1097, i32 0, i32 61
  store i32 1, i32* %1098, align 4
  %1099 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1100 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1099, i32 0, i32 62
  store i32 1, i32* %1100, align 4
  %1101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1102 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1101, i32 0, i32 64
  store i32 1, i32* %1102, align 4
  br label %1103

; <label>:1103:                                   ; preds = %1090, %1085
  %1104 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1105 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1104, i32 0, i32 6
  %1106 = load i32, i32* %1105, align 4
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1108, label %1121

; <label>:1108:                                   ; preds = %1103
  %1109 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1110 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1109, i32 0, i32 59
  store i32 1, i32* %1110, align 4
  %1111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1112 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1111, i32 0, i32 63
  store i32 1, i32* %1112, align 4
  %1113 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1114 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1113, i32 0, i32 60
  store i32 1, i32* %1114, align 4
  %1115 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1116 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1115, i32 0, i32 61
  store i32 3, i32* %1116, align 4
  %1117 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1118 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1117, i32 0, i32 62
  store i32 2, i32* %1118, align 4
  %1119 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1120 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1119, i32 0, i32 64
  store i32 2, i32* %1120, align 4
  call arm_aapcscc void @exit(i32 -99) #8
  unreachable

; <label>:1121:                                   ; preds = %1103
  store i32 0, i32* %3, align 4
  br label %1122

; <label>:1122:                                   ; preds = %1141, %1121
  %1123 = load i32, i32* %3, align 4
  %1124 = icmp slt i32 %1123, 23
  br i1 %1124, label %1125, label %1144

; <label>:1125:                                   ; preds = %1122
  %1126 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1127 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1126, i32 0, i32 51
  %1128 = load i32, i32* %1127, align 4
  %1129 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1130 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1129, i32 0, i32 43
  %1131 = load i32, i32* %1130, align 4
  %1132 = mul nsw i32 %1131, 3
  %1133 = add nsw i32 %1128, %1132
  %1134 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i32 %1133
  %1135 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %1134, i32 0, i32 0
  %1136 = load i32, i32* %3, align 4
  %1137 = getelementptr inbounds [23 x i32], [23 x i32]* %1135, i32 0, i32 %1136
  %1138 = load i32, i32* %1137, align 4
  %1139 = load i32, i32* %3, align 4
  %1140 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %1139
  store i32 %1138, i32* %1140, align 4
  br label %1141

; <label>:1141:                                   ; preds = %1125
  %1142 = load i32, i32* %3, align 4
  %1143 = add nsw i32 %1142, 1
  store i32 %1143, i32* %3, align 4
  br label %1122

; <label>:1144:                                   ; preds = %1122
  store i32 0, i32* %3, align 4
  br label %1145

; <label>:1145:                                   ; preds = %1164, %1144
  %1146 = load i32, i32* %3, align 4
  %1147 = icmp slt i32 %1146, 14
  br i1 %1147, label %1148, label %1167

; <label>:1148:                                   ; preds = %1145
  %1149 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1150 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1149, i32 0, i32 51
  %1151 = load i32, i32* %1150, align 4
  %1152 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1153 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1152, i32 0, i32 43
  %1154 = load i32, i32* %1153, align 4
  %1155 = mul nsw i32 %1154, 3
  %1156 = add nsw i32 %1151, %1155
  %1157 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i32 %1156
  %1158 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %1157, i32 0, i32 1
  %1159 = load i32, i32* %3, align 4
  %1160 = getelementptr inbounds [14 x i32], [14 x i32]* %1158, i32 0, i32 %1159
  %1161 = load i32, i32* %1160, align 4
  %1162 = load i32, i32* %3, align 4
  %1163 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %1162
  store i32 %1161, i32* %1163, align 4
  br label %1164

; <label>:1164:                                   ; preds = %1148
  %1165 = load i32, i32* %3, align 4
  %1166 = add nsw i32 %1165, 1
  store i32 %1166, i32* %3, align 4
  br label %1145

; <label>:1167:                                   ; preds = %1145
  %1168 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1169 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1168, i32 0, i32 5
  %1170 = load i32, i32* %1169, align 4
  %1171 = icmp ne i32 %1170, 0
  br i1 %1171, label %1172, label %1184

; <label>:1172:                                   ; preds = %1167
  %1173 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1174 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1173, i32 0, i32 43
  %1175 = load i32, i32* %1174, align 4
  %1176 = sub nsw i32 1, %1175
  %1177 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1178 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1177, i32 0, i32 8
  %1179 = load i32, i32* %1178, align 4
  %1180 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %1181 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1180, i32 0, i32 51
  %1182 = load i32, i32* %1181, align 4
  %1183 = call arm_aapcscc i32 @InitVbrTag(%struct.bit_stream_struc* @bs, i32 %1176, i32 %1179, i32 %1182)
  br label %1184

; <label>:1184:                                   ; preds = %1172, %1167
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

declare arm_aapcscc void @InitFormatBitStream() #2

; Function Attrs: nounwind readnone
declare arm_aapcscc double @floor(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @log(double) #4

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #4

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare arm_aapcscc i32 @SmpFrqIndex(i32, i32*) #2

declare arm_aapcscc void @display_bitrates(%struct._IO_FILE*) #2

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #5

declare arm_aapcscc i32 @BitrateIndex(i32, i32, i32) #2

declare arm_aapcscc void @init_bit_stream_w(%struct.bit_stream_struc*) #2

declare arm_aapcscc i32 @InitVbrTag(%struct.bit_stream_struc*, i32, i32, i32) #2

; Function Attrs: nounwind
define arm_aapcscc void @lame_print_config(%struct.lame_global_flags*) #0 {
  %2 = alloca %struct.lame_global_flags*, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %2, align 4
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %7 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 1.000000e+03
  %11 = fptrunc double %10 to float
  store float %11, float* %3, align 4
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %13 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 49
  %14 = load float, float* %13, align 4
  %15 = load float, float* %3, align 4
  %16 = fmul float %14, %15
  store float %16, float* %4, align 4
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 46
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 16
  %21 = sitofp i32 %20 to float
  %22 = load float, float* %3, align 4
  %23 = fmul float %21, %22
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %25 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %23, %27
  store float %28, float* %5, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call arm_aapcscc void @lame_print_version(%struct._IO_FILE* %29)
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %31 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %1
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 46
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %41 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %39, %34, %1
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 49
  %45 = load float, float* %44, align 4
  %46 = fcmp une float %45, 1.000000e+00
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %42
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %49 = load float, float* %4, align 4
  %50 = fptosi float %49 to i32
  %51 = load float, float* %3, align 4
  %52 = fptosi float %51 to i32
  %53 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %50, i32 %52)
  br label %54

; <label>:54:                                     ; preds = %47, %42
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %56 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 56
  %57 = load float, float* %56, align 4
  %58 = fpext float %57 to double
  %59 = fcmp ogt double %58, 0.000000e+00
  br i1 %59, label %60, label %77

; <label>:60:                                     ; preds = %54
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %62 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %63 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %62, i32 0, i32 55
  %64 = load float, float* %63, align 4
  %65 = load float, float* %3, align 4
  %66 = fmul float %64, %65
  %67 = fmul float %66, 5.000000e+02
  %68 = fpext float %67 to double
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %70 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 56
  %71 = load float, float* %70, align 4
  %72 = load float, float* %3, align 4
  %73 = fmul float %71, %72
  %74 = fmul float %73, 5.000000e+02
  %75 = fpext float %74 to double
  %76 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i32 0, i32 0), double %68, double %75)
  br label %77

; <label>:77:                                     ; preds = %60, %54
  %78 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %79 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %78, i32 0, i32 53
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = fcmp ogt double %81, 0.000000e+00
  br i1 %82, label %83, label %100

; <label>:83:                                     ; preds = %77
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %85 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %86 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %85, i32 0, i32 53
  %87 = load float, float* %86, align 4
  %88 = load float, float* %3, align 4
  %89 = fmul float %87, %88
  %90 = fmul float %89, 5.000000e+02
  %91 = fpext float %90 to double
  %92 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %93 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %92, i32 0, i32 54
  %94 = load float, float* %93, align 4
  %95 = load float, float* %3, align 4
  %96 = fmul float %94, %95
  %97 = fmul float %96, 5.000000e+02
  %98 = fpext float %97 to double
  %99 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0), double %91, double %98)
  br label %100

; <label>:100:                                    ; preds = %83, %77
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %102 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

; <label>:105:                                    ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %107 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %108 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %107, i32 0, i32 31
  %109 = load i8*, i8** %108, align 4
  %110 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %109)
  br label %193

; <label>:111:                                    ; preds = %100
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %113 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %114 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %113, i32 0, i32 31
  %115 = load i8*, i8** %114, align 4
  %116 = call arm_aapcscc i32 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

; <label>:118:                                    ; preds = %111
  %119 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %120 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %119, i32 0, i32 31
  %121 = load i8*, i8** %120, align 4
  %122 = call arm_aapcscc i8* @mybasename(i8* %121)
  br label %124

; <label>:123:                                    ; preds = %111
  br label %124

; <label>:124:                                    ; preds = %123, %118
  %125 = phi i8* [ %122, %118 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %123 ]
  %126 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %127 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %126, i32 0, i32 32
  %128 = load i8*, i8** %127, align 4
  %129 = call arm_aapcscc i32 @strcmp(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

; <label>:131:                                    ; preds = %124
  %132 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %133 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %132, i32 0, i32 32
  %134 = load i8*, i8** %133, align 4
  %135 = call arm_aapcscc i8* @mybasename(i8* %134)
  br label %137

; <label>:136:                                    ; preds = %124
  br label %137

; <label>:137:                                    ; preds = %136, %131
  %138 = phi i8* [ %135, %131 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %136 ]
  %139 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %125, i8* %138)
  %140 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %141 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %140, i32 0, i32 21
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %167

; <label>:144:                                    ; preds = %137
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %146 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %147 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sitofp i32 %148 to double
  %150 = fdiv double %149, 1.000000e+03
  %151 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %152 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %151, i32 0, i32 22
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %155 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lame_print_config.mode_names, i32 0, i32 %156
  %158 = load i8*, i8** %157, align 4
  %159 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %160 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %159, i32 0, i32 43
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 2, %161
  %163 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %164 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0), double %150, i32 %153, i8* %158, i32 %162, i32 %165)
  br label %192

; <label>:167:                                    ; preds = %137
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %169 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %170 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = sitofp i32 %171 to double
  %173 = fdiv double %172, 1.000000e+03
  %174 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %175 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %178 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lame_print_config.mode_names, i32 0, i32 %179
  %181 = load i8*, i8** %180, align 4
  %182 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %183 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %182, i32 0, i32 43
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 2, %184
  %186 = load float, float* %5, align 4
  %187 = fpext float %186 to double
  %188 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %189 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i32 0, i32 0), double %173, i32 %176, i8* %181, i32 %185, double %187, i32 %190)
  br label %192

; <label>:192:                                    ; preds = %167, %144
  br label %193

; <label>:193:                                    ; preds = %192, %105
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %195 = call arm_aapcscc i32 @fflush(%struct._IO_FILE* %194)
  ret void
}

declare arm_aapcscc void @lame_print_version(%struct._IO_FILE*) #2

declare arm_aapcscc i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
define internal arm_aapcscc i8* @mybasename(i8*) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %4 = load i8*, i8** %2, align 4
  %5 = call arm_aapcscc i8* @strrchr(i8* %4, i32 47)
  store i8* %5, i8** %3, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  br label %13

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

declare arm_aapcscc i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @lame_encode_frame(%struct.lame_global_flags*, i16*, i16*, i32, i8*, i32) #0 {
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x [2 x [576 x double]]], align 8
  %14 = alloca [2 x [2 x [576 x i32]]], align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x [2 x %struct.III_psy_ratio]], align 8
  %17 = alloca [2 x [2 x %struct.III_psy_ratio]], align 8
  %18 = alloca [2 x [2 x %struct.III_psy_ratio]]*, align 4
  %19 = alloca [2 x [2 x %struct.III_scalefac_t]], align 4
  %20 = alloca [2 x i16*], align 4
  %21 = alloca [2 x [2 x double]], align 8
  %22 = alloca [2 x [2 x double]], align 8
  %23 = alloca [2 x [2 x double]]*, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [2 x i16*], align 4
  %36 = alloca [2 x i32], align 4
  %37 = alloca %struct.gr_info*, align 4
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store i16* %1, i16** %8, align 4
  store i16* %2, i16** %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 4
  store i32 %5, i32* %12, align 4
  store double 0.000000e+00, double* %29, align 8
  store double 0.000000e+00, double* %30, align 8
  %40 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %16, i32 0, i32 0
  %41 = bitcast [2 x %struct.III_psy_ratio]* %40 to i8*
  call void @llvm.memset.p0i8.i32(i8* %41, i8 0, i32 3904, i32 8, i1 false)
  %42 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %17, i32 0, i32 0
  %43 = bitcast [2 x %struct.III_psy_ratio]* %42 to i8*
  call void @llvm.memset.p0i8.i32(i8* %43, i8 0, i32 3904, i32 8, i1 false)
  %44 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %19, i32 0, i32 0
  %45 = bitcast [2 x %struct.III_scalefac_t]* %44 to i8*
  call void @llvm.memset.p0i8.i32(i8* %45, i8 0, i32 976, i32 4, i1 false)
  %46 = load i16*, i16** %8, align 4
  %47 = getelementptr inbounds [2 x i16*], [2 x i16*]* %20, i32 0, i32 0
  store i16* %46, i16** %47, align 4
  %48 = load i16*, i16** %9, align 4
  %49 = getelementptr inbounds [2 x i16*], [2 x i16*]* %20, i32 0, i32 1
  store i16* %48, i16** %49, align 4
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %51 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 52
  store i32 0, i32* %51, align 4
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %53 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 39
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %107

; <label>:56:                                     ; preds = %6
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %58 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+03
  store double %61, double* %32, align 8
  %62 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %63 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %33, align 4
  store i32 0, i32* @lame_encode_frame.sentBits, align 4
  store i32 8, i32* @lame_encode_frame.bitsPerSlot, align 4
  %65 = load i32, i32* %33, align 4
  %66 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %67 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %66, i32 0, i32 42
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %32, align 8
  %72 = load i32, i32* @lame_encode_frame.bitsPerSlot, align 4
  %73 = uitofp i32 %72 to double
  %74 = fmul double %71, %73
  %75 = fdiv double %70, %74
  store double %75, double* %31, align 8
  %76 = load double, double* %31, align 8
  %77 = load double, double* %31, align 8
  %78 = fadd double %77, 1.000000e-09
  %79 = call arm_aapcscc double @floor(double %78) #7
  %80 = fsub double %76, %79
  store double %80, double* @lame_encode_frame.frac_SpF, align 8
  %81 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %82 = call arm_aapcscc double @fabs(double %81) #7
  %83 = fcmp olt double %82, 1.000000e-09
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %56
  store double 0.000000e+00, double* @lame_encode_frame.frac_SpF, align 8
  br label %85

; <label>:85:                                     ; preds = %84, %56
  %86 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %87 = fsub double -0.000000e+00, %86
  store double %87, double* @lame_encode_frame.slot_lag, align 8
  %88 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %89 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %88, i32 0, i32 44
  store i32 1, i32* %89, align 4
  %90 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %91 = fcmp oeq double %90, 0.000000e+00
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %85
  %93 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %94 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %93, i32 0, i32 44
  store i32 0, i32* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %92, %85
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %98 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 42
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 1024, %99
  %101 = sub nsw i32 %100, 272
  %102 = icmp sge i32 %96, %101
  br i1 %102, label %104, label %103

; <label>:103:                                    ; preds = %95
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 666, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.lame_encode_frame, i32 0, i32 0))
  br label %104

; <label>:104:                                    ; preds = %103, %95
  %105 = phi i1 [ true, %95 ], [ false, %103 ]
  %106 = zext i1 %105 to i32
  br label %107

; <label>:107:                                    ; preds = %104, %6
  %108 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %109 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %118 [
    i32 0, label %111
    i32 1, label %114
    i32 2, label %117
  ]

; <label>:111:                                    ; preds = %107
  %112 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %113 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %112, i32 0, i32 44
  store i32 0, i32* %113, align 4
  br label %159

; <label>:114:                                    ; preds = %107
  %115 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %116 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %115, i32 0, i32 44
  store i32 1, i32* %116, align 4
  br label %159

; <label>:117:                                    ; preds = %107
  br label %118

; <label>:118:                                    ; preds = %107, %117
  %119 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %120 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %119, i32 0, i32 21
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

; <label>:123:                                    ; preds = %118
  %124 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %125 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %124, i32 0, i32 44
  store i32 0, i32* %125, align 4
  br label %158

; <label>:126:                                    ; preds = %118
  %127 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %128 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

; <label>:131:                                    ; preds = %126
  %132 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %133 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %132, i32 0, i32 44
  store i32 0, i32* %133, align 4
  br label %157

; <label>:134:                                    ; preds = %126
  %135 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %136 = fcmp une double %135, 0.000000e+00
  br i1 %136, label %137, label %156

; <label>:137:                                    ; preds = %134
  %138 = load double, double* @lame_encode_frame.slot_lag, align 8
  %139 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %140 = fsub double %139, 1.000000e+00
  %141 = fcmp ogt double %138, %140
  br i1 %141, label %142, label %148

; <label>:142:                                    ; preds = %137
  %143 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %144 = load double, double* @lame_encode_frame.slot_lag, align 8
  %145 = fsub double %144, %143
  store double %145, double* @lame_encode_frame.slot_lag, align 8
  %146 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %147 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %146, i32 0, i32 44
  store i32 0, i32* %147, align 4
  br label %155

; <label>:148:                                    ; preds = %137
  %149 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %150 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %149, i32 0, i32 44
  store i32 1, i32* %150, align 4
  %151 = load double, double* @lame_encode_frame.frac_SpF, align 8
  %152 = fsub double 1.000000e+00, %151
  %153 = load double, double* @lame_encode_frame.slot_lag, align 8
  %154 = fadd double %153, %152
  store double %154, double* @lame_encode_frame.slot_lag, align 8
  br label %155

; <label>:155:                                    ; preds = %148, %142
  br label %156

; <label>:156:                                    ; preds = %155, %134
  br label %157

; <label>:157:                                    ; preds = %156, %131
  br label %158

; <label>:158:                                    ; preds = %157, %123
  br label %159

; <label>:159:                                    ; preds = %158, %114, %111
  %160 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %161 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %195, label %164

; <label>:164:                                    ; preds = %159
  %165 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %166 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %195, label %169

; <label>:169:                                    ; preds = %164
  %170 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %171 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %170, i32 0, i32 43
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 200, i32 50
  store i32 %174, i32* %34, align 4
  %175 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %176 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %175, i32 0, i32 39
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %34, align 4
  %179 = srem i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %194

; <label>:181:                                    ; preds = %169
  %182 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %183 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %186 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %185, i32 0, i32 39
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %189 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %188, i32 0, i32 40
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %192 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %191, i32 0, i32 42
  %193 = load i32, i32* %192, align 4
  call arm_aapcscc void @timestatus(i32 %184, i32 %187, i32 %190, i32 %193)
  br label %194

; <label>:194:                                    ; preds = %181, %169
  br label %195

; <label>:195:                                    ; preds = %194, %164, %159
  %196 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %197 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %196, i32 0, i32 63
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %276

; <label>:200:                                    ; preds = %195
  %201 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %202 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %201, i32 0, i32 45
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, 1
  %205 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 %204
  %206 = load double, double* %205, align 8
  store double %206, double* %30, align 8
  store i32 0, i32* %25, align 4
  br label %207

; <label>:207:                                    ; preds = %272, %200
  %208 = load i32, i32* %25, align 4
  %209 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %210 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %209, i32 0, i32 45
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %275

; <label>:213:                                    ; preds = %207
  store i32 0, i32* %24, align 4
  br label %214

; <label>:214:                                    ; preds = %231, %213
  %215 = load i32, i32* %24, align 4
  %216 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %217 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %216, i32 0, i32 46
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %234

; <label>:220:                                    ; preds = %214
  %221 = load i32, i32* %24, align 4
  %222 = getelementptr inbounds [2 x i16*], [2 x i16*]* %20, i32 0, i32 %221
  %223 = load i16*, i16** %222, align 4
  %224 = load i32, i32* %25, align 4
  %225 = mul nsw i32 %224, 576
  %226 = add nsw i32 576, %225
  %227 = sub nsw i32 %226, 272
  %228 = getelementptr inbounds i16, i16* %223, i32 %227
  %229 = load i32, i32* %24, align 4
  %230 = getelementptr inbounds [2 x i16*], [2 x i16*]* %35, i32 0, i32 %229
  store i16* %228, i16** %230, align 4
  br label %231

; <label>:231:                                    ; preds = %220
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %214

; <label>:234:                                    ; preds = %214
  %235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %236 = getelementptr inbounds [2 x i16*], [2 x i16*]* %35, i32 0, i32 0
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %25, align 4
  %239 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 %238
  %240 = load i32, i32* %25, align 4
  %241 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i32 %240
  %242 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %16, i32 0, i32 0
  %243 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %17, i32 0, i32 0
  %244 = load i32, i32* %25, align 4
  %245 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %21, i32 0, i32 %244
  %246 = getelementptr inbounds [2 x double], [2 x double]* %245, i32 0, i32 0
  %247 = load i32, i32* %25, align 4
  %248 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %22, i32 0, i32 %247
  %249 = getelementptr inbounds [2 x double], [2 x double]* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i32 0, i32 0
  call arm_aapcscc void @L3psycho_anal(%struct.lame_global_flags* %235, i16** %236, i32 %237, double* %239, double* %29, double* %241, [2 x %struct.III_psy_ratio]* %242, [2 x %struct.III_psy_ratio]* %243, double* %246, double* %249, i32* %250)
  store i32 0, i32* %24, align 4
  br label %251

; <label>:251:                                    ; preds = %268, %234
  %252 = load i32, i32* %24, align 4
  %253 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %254 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %253, i32 0, i32 46
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %271

; <label>:257:                                    ; preds = %251
  %258 = load i32, i32* %24, align 4
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i32 0, i32 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %25, align 4
  %262 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i32 %261
  %263 = getelementptr inbounds %struct.anon, %struct.anon* %262, i32 0, i32 0
  %264 = load i32, i32* %24, align 4
  %265 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %263, i32 0, i32 %264
  %266 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %266, i32 0, i32 6
  store i32 %260, i32* %267, align 4
  br label %268

; <label>:268:                                    ; preds = %257
  %269 = load i32, i32* %24, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %24, align 4
  br label %251

; <label>:271:                                    ; preds = %251
  br label %272

; <label>:272:                                    ; preds = %271
  %273 = load i32, i32* %25, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %25, align 4
  br label %207

; <label>:275:                                    ; preds = %207
  br label %310

; <label>:276:                                    ; preds = %195
  store i32 0, i32* %25, align 4
  br label %277

; <label>:277:                                    ; preds = %306, %276
  %278 = load i32, i32* %25, align 4
  %279 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %280 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %279, i32 0, i32 45
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %309

; <label>:283:                                    ; preds = %277
  store i32 0, i32* %24, align 4
  br label %284

; <label>:284:                                    ; preds = %302, %283
  %285 = load i32, i32* %24, align 4
  %286 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %287 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %286, i32 0, i32 46
  %288 = load i32, i32* %287, align 4
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %305

; <label>:290:                                    ; preds = %284
  %291 = load i32, i32* %25, align 4
  %292 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i32 %291
  %293 = getelementptr inbounds %struct.anon, %struct.anon* %292, i32 0, i32 0
  %294 = load i32, i32* %24, align 4
  %295 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %293, i32 0, i32 %294
  %296 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %296, i32 0, i32 6
  store i32 0, i32* %297, align 4
  %298 = load i32, i32* %25, align 4
  %299 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %21, i32 0, i32 %298
  %300 = load i32, i32* %24, align 4
  %301 = getelementptr inbounds [2 x double], [2 x double]* %299, i32 0, i32 %300
  store double 7.000000e+02, double* %301, align 8
  br label %302

; <label>:302:                                    ; preds = %290
  %303 = load i32, i32* %24, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %24, align 4
  br label %284

; <label>:305:                                    ; preds = %284
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load i32, i32* %25, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %25, align 4
  br label %277

; <label>:309:                                    ; preds = %277
  br label %310

; <label>:310:                                    ; preds = %309, %275
  store i32 0, i32* %25, align 4
  br label %311

; <label>:311:                                    ; preds = %348, %310
  %312 = load i32, i32* %25, align 4
  %313 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %314 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %313, i32 0, i32 45
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %351

; <label>:317:                                    ; preds = %311
  store i32 0, i32* %24, align 4
  br label %318

; <label>:318:                                    ; preds = %344, %317
  %319 = load i32, i32* %24, align 4
  %320 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %321 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %320, i32 0, i32 46
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %347

; <label>:324:                                    ; preds = %318
  %325 = load i32, i32* %25, align 4
  %326 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i32 %325
  %327 = getelementptr inbounds %struct.anon, %struct.anon* %326, i32 0, i32 0
  %328 = load i32, i32* %24, align 4
  %329 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %327, i32 0, i32 %328
  %330 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %329, i32 0, i32 0
  store %struct.gr_info* %330, %struct.gr_info** %37, align 4
  %331 = load %struct.gr_info*, %struct.gr_info** %37, align 4
  %332 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %331, i32 0, i32 7
  store i32 0, i32* %332, align 4
  %333 = load %struct.gr_info*, %struct.gr_info** %37, align 4
  %334 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340

; <label>:337:                                    ; preds = %324
  %338 = load %struct.gr_info*, %struct.gr_info** %37, align 4
  %339 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %338, i32 0, i32 5
  store i32 0, i32* %339, align 4
  br label %343

; <label>:340:                                    ; preds = %324
  %341 = load %struct.gr_info*, %struct.gr_info** %37, align 4
  %342 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %341, i32 0, i32 5
  store i32 1, i32* %342, align 4
  br label %343

; <label>:343:                                    ; preds = %340, %337
  br label %344

; <label>:344:                                    ; preds = %343
  %345 = load i32, i32* %24, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %24, align 4
  br label %318

; <label>:347:                                    ; preds = %318
  br label %348

; <label>:348:                                    ; preds = %347
  %349 = load i32, i32* %25, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %25, align 4
  br label %311

; <label>:351:                                    ; preds = %311
  %352 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %353 = getelementptr inbounds [2 x i16*], [2 x i16*]* %20, i32 0, i32 0
  %354 = load i16*, i16** %353, align 4
  %355 = getelementptr inbounds [2 x i16*], [2 x i16*]* %20, i32 0, i32 1
  %356 = load i16*, i16** %355, align 4
  %357 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %13, i32 0, i32 0
  call arm_aapcscc void @mdct_sub48(%struct.lame_global_flags* %352, i16* %354, i16* %356, [2 x [576 x double]]* %357, %struct.III_side_info_t* @l3_side)
  %358 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %359 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %358, i32 0, i32 8
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 1
  %362 = zext i1 %361 to i32
  store i32 %362, i32* %28, align 4
  %363 = load i32, i32* %28, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %376

; <label>:365:                                    ; preds = %351
  %366 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 6), align 4
  %367 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 6), align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %373

; <label>:369:                                    ; preds = %365
  %370 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6), align 4
  %371 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i32 1, i32 0, i32 1, i32 0, i32 6), align 4
  %372 = icmp eq i32 %370, %371
  br label %373

; <label>:373:                                    ; preds = %369, %365
  %374 = phi i1 [ false, %365 ], [ %372, %369 ]
  %375 = zext i1 %374 to i32
  store i32 %375, i32* %28, align 4
  br label %376

; <label>:376:                                    ; preds = %373, %351
  %377 = load i32, i32* %28, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %398

; <label>:379:                                    ; preds = %376
  %380 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 0), align 8
  %381 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 1), align 8
  %382 = fadd double %380, %381
  %383 = load double, double* %30, align 8
  %384 = fadd double %382, %383
  %385 = load double, double* %29, align 8
  %386 = fadd double %384, %385
  %387 = fmul double 2.500000e-01, %386
  store double %387, double* %38, align 8
  %388 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i32 0), align 8
  %389 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i32 1), align 8
  %390 = fadd double %388, %389
  %391 = fmul double 5.000000e-01, %390
  store double %391, double* %39, align 8
  %392 = load double, double* %38, align 8
  %393 = fcmp olt double %392, 3.500000e-01
  br i1 %393, label %394, label %397

; <label>:394:                                    ; preds = %379
  %395 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %396 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %395, i32 0, i32 52
  store i32 2, i32* %396, align 4
  br label %397

; <label>:397:                                    ; preds = %394, %379
  br label %398

; <label>:398:                                    ; preds = %397, %376
  %399 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %400 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %399, i32 0, i32 10
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

; <label>:403:                                    ; preds = %398
  %404 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %405 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %404, i32 0, i32 52
  store i32 2, i32* %405, align 4
  br label %406

; <label>:406:                                    ; preds = %403, %398
  %407 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %408 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %407, i32 0, i32 52
  %409 = load i32, i32* %408, align 4
  %410 = icmp eq i32 2, %409
  br i1 %410, label %411, label %412

; <label>:411:                                    ; preds = %406
  store [2 x [2 x %struct.III_psy_ratio]]* %17, [2 x [2 x %struct.III_psy_ratio]]** %18, align 4
  store [2 x [2 x double]]* %22, [2 x [2 x double]]** %23, align 4
  br label %413

; <label>:412:                                    ; preds = %406
  store [2 x [2 x %struct.III_psy_ratio]]* %16, [2 x [2 x %struct.III_psy_ratio]]** %18, align 4
  store [2 x [2 x double]]* %21, [2 x [2 x double]]** %23, align 4
  br label %413

; <label>:413:                                    ; preds = %412, %411
  %414 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %415 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %414, i32 0, i32 21
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %427

; <label>:418:                                    ; preds = %413
  %419 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %420 = load [2 x [2 x double]]*, [2 x [2 x double]]** %23, align 4
  %421 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %420, i32 0, i32 0
  %422 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %13, i32 0, i32 0
  %423 = load [2 x [2 x %struct.III_psy_ratio]]*, [2 x [2 x %struct.III_psy_ratio]]** %18, align 4
  %424 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %423, i32 0, i32 0
  %425 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %14, i32 0, i32 0
  %426 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %19, i32 0, i32 0
  call arm_aapcscc void @VBR_iteration_loop(%struct.lame_global_flags* %419, [2 x double]* %421, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 0), [2 x [576 x double]]* %422, [2 x %struct.III_psy_ratio]* %424, %struct.III_side_info_t* @l3_side, [2 x [576 x i32]]* %425, [2 x %struct.III_scalefac_t]* %426)
  br label %436

; <label>:427:                                    ; preds = %413
  %428 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %429 = load [2 x [2 x double]]*, [2 x [2 x double]]** %23, align 4
  %430 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %13, i32 0, i32 0
  %432 = load [2 x [2 x %struct.III_psy_ratio]]*, [2 x [2 x %struct.III_psy_ratio]]** %18, align 4
  %433 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %14, i32 0, i32 0
  %435 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %19, i32 0, i32 0
  call arm_aapcscc void @iteration_loop(%struct.lame_global_flags* %428, [2 x double]* %430, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 0), [2 x [576 x double]]* %431, [2 x %struct.III_psy_ratio]* %433, %struct.III_side_info_t* @l3_side, [2 x [576 x i32]]* %434, [2 x %struct.III_scalefac_t]* %435)
  br label %436

; <label>:436:                                    ; preds = %427, %418
  %437 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  call arm_aapcscc void @getframebits(%struct.lame_global_flags* %437, i32* %27, i32* %26)
  %438 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %439 = load i32, i32* %27, align 4
  %440 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %14, i32 0, i32 0
  %441 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %19, i32 0, i32 0
  call arm_aapcscc void @III_format_bitstream(%struct.lame_global_flags* %438, i32 %439, [2 x [576 x i32]]* %440, %struct.III_side_info_t* @l3_side, [2 x %struct.III_scalefac_t]* %441, %struct.bit_stream_struc* @bs)
  %442 = load i32, i32* getelementptr inbounds (%struct.bit_stream_struc, %struct.bit_stream_struc* @bs, i32 0, i32 5), align 4
  %443 = load i32, i32* @lame_encode_frame.sentBits, align 4
  %444 = sub i32 %442, %443
  store i32 %444, i32* @lame_encode_frame.frameBits, align 4
  %445 = load i32, i32* @lame_encode_frame.frameBits, align 4
  %446 = load i32, i32* @lame_encode_frame.bitsPerSlot, align 4
  %447 = urem i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %459

; <label>:449:                                    ; preds = %436
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %451 = load i32, i32* @lame_encode_frame.frameBits, align 4
  %452 = load i32, i32* @lame_encode_frame.frameBits, align 4
  %453 = load i32, i32* @lame_encode_frame.bitsPerSlot, align 4
  %454 = udiv i32 %452, %453
  %455 = load i32, i32* @lame_encode_frame.frameBits, align 4
  %456 = load i32, i32* @lame_encode_frame.bitsPerSlot, align 4
  %457 = urem i32 %455, %456
  %458 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i32 %451, i32 %454, i32 %457)
  br label %459

; <label>:459:                                    ; preds = %449, %436
  %460 = load i32, i32* @lame_encode_frame.frameBits, align 4
  %461 = load i32, i32* @lame_encode_frame.sentBits, align 4
  %462 = add i32 %461, %460
  store i32 %462, i32* @lame_encode_frame.sentBits, align 4
  %463 = load i8*, i8** %11, align 4
  %464 = load i32, i32* %12, align 4
  %465 = call arm_aapcscc i32 @copy_buffer(i8* %463, i32 %464, %struct.bit_stream_struc* @bs)
  store i32 %465, i32* %15, align 4
  %466 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %467 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

; <label>:470:                                    ; preds = %459
  %471 = load i32, i32* @lame_encode_frame.sentBits, align 4
  %472 = udiv i32 %471, 8
  call arm_aapcscc void @AddVbrFrame(i32 %472)
  br label %473

; <label>:473:                                    ; preds = %470, %459
  %474 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %475 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %474, i32 0, i32 39
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %475, align 4
  %478 = load i32, i32* %15, align 4
  ret i32 %478
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #3

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #2

declare arm_aapcscc void @timestatus(i32, i32, i32, i32) #2

declare arm_aapcscc void @L3psycho_anal(%struct.lame_global_flags*, i16**, i32, double*, double*, double*, [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]*, double*, double*, i32*) #2

declare arm_aapcscc void @mdct_sub48(%struct.lame_global_flags*, i16*, i16*, [2 x [576 x double]]*, %struct.III_side_info_t*) #2

declare arm_aapcscc void @VBR_iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #2

declare arm_aapcscc void @iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #2

declare arm_aapcscc void @getframebits(%struct.lame_global_flags*, i32*, i32*) #2

declare arm_aapcscc void @III_format_bitstream(%struct.lame_global_flags*, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*, %struct.bit_stream_struc*) #2

declare arm_aapcscc i32 @copy_buffer(i8*, i32, %struct.bit_stream_struc*) #2

declare arm_aapcscc void @AddVbrFrame(i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @fill_buffer_resample(%struct.lame_global_flags*, i16*, i32, i16*, i32, i32*, i32) #0 {
  %8 = alloca %struct.lame_global_flags*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %8, align 4
  store i16* %1, i16** %9, align 4
  store i32 %2, i32* %10, align 4
  store i16* %3, i16** %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %30 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 39
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %7
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i32 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i32 %39
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %14, align 4
  %42 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i32 %41
  store double 0.000000e+00, double* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %43
  %45 = getelementptr inbounds [5 x i16], [5 x i16]* %44, i32 0, i32 0
  %46 = bitcast i16* %45 to i8*
  call void @llvm.memset.p0i8.i32(i8* %46, i8 0, i32 10, i32 2, i1 false)
  br label %47

; <label>:47:                                     ; preds = %38, %33, %7
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 39
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i32 %53
  store i32 0, i32* %54, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %47
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %57 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 49
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %61 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %60, i32 0, i32 49
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = fadd double 5.000000e-01, %63
  %65 = call arm_aapcscc double @floor(double %64) #7
  %66 = fsub double %59, %65
  %67 = call arm_aapcscc double @fabs(double %66) #7
  %68 = fcmp olt double %67, 1.000000e-04
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %70

; <label>:70:                                     ; preds = %273, %55
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %276

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %17, align 4
  %76 = sitofp i32 %75 to float
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %78 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 49
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = fpext float %80 to double
  store double %81, double* %28, align 8
  %82 = load double, double* %28, align 8
  %83 = load i32, i32* %14, align 4
  %84 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fsub double %82, %85
  %87 = call arm_aapcscc double @floor(double %86) #7
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 2
  %91 = load i32, i32* %12, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %74
  br label %276

; <label>:94:                                     ; preds = %74
  %95 = load double, double* %28, align 8
  %96 = load i32, i32* %14, align 4
  %97 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i32 %96
  %98 = load double, double* %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sitofp i32 %99 to double
  %101 = fadd double %98, %100
  %102 = fsub double %95, %101
  store double %102, double* %25, align 8
  %103 = load double, double* %25, align 8
  %104 = fsub double %103, 1.000000e+00
  store double %104, double* %26, align 8
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %115

; <label>:107:                                    ; preds = %94
  %108 = load i32, i32* %14, align 4
  %109 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 5, %110
  %112 = getelementptr inbounds [5 x i16], [5 x i16]* %109, i32 0, i32 %111
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i32
  br label %121

; <label>:115:                                    ; preds = %94
  %116 = load i16*, i16** %11, align 4
  %117 = load i32, i32* %16, align 4
  %118 = getelementptr inbounds i16, i16* %116, i32 %117
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  br label %121

; <label>:121:                                    ; preds = %115, %107
  %122 = phi i32 [ %114, %107 ], [ %120, %115 ]
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 1, %123
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %134

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %127
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 6, %129
  %131 = getelementptr inbounds [5 x i16], [5 x i16]* %128, i32 0, i32 %130
  %132 = load i16, i16* %131, align 2
  %133 = sext i16 %132 to i32
  br label %141

; <label>:134:                                    ; preds = %121
  %135 = load i16*, i16** %11, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 1, %136
  %138 = getelementptr inbounds i16, i16* %135, i32 %137
  %139 = load i16, i16* %138, align 2
  %140 = sext i16 %139 to i32
  br label %141

; <label>:141:                                    ; preds = %134, %126
  %142 = phi i32 [ %133, %126 ], [ %140, %134 ]
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

; <label>:145:                                    ; preds = %141
  %146 = load i32, i32* %22, align 4
  %147 = sitofp i32 %146 to double
  %148 = load double, double* %25, align 8
  %149 = fmul double %147, %148
  %150 = load i32, i32* %21, align 4
  %151 = sitofp i32 %150 to double
  %152 = load double, double* %26, align 8
  %153 = fmul double %151, %152
  %154 = fsub double %149, %153
  %155 = fadd double 5.000000e-01, %154
  %156 = call arm_aapcscc double @floor(double %155) #7
  %157 = fptosi double %156 to i16
  %158 = load i16*, i16** %9, align 4
  %159 = load i32, i32* %17, align 4
  %160 = getelementptr inbounds i16, i16* %158, i32 %159
  store i16 %157, i16* %160, align 2
  br label %272

; <label>:161:                                    ; preds = %141
  %162 = load double, double* %25, align 8
  %163 = fadd double %162, 1.000000e+00
  store double %163, double* %24, align 8
  %164 = load double, double* %25, align 8
  %165 = fsub double %164, 2.000000e+00
  store double %165, double* %27, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 %166, 1
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %178

; <label>:169:                                    ; preds = %161
  %170 = load i32, i32* %14, align 4
  %171 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %170
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %172, 1
  %174 = add nsw i32 5, %173
  %175 = getelementptr inbounds [5 x i16], [5 x i16]* %171, i32 0, i32 %174
  %176 = load i16, i16* %175, align 2
  %177 = sext i16 %176 to i32
  br label %185

; <label>:178:                                    ; preds = %161
  %179 = load i16*, i16** %11, align 4
  %180 = load i32, i32* %16, align 4
  %181 = sub nsw i32 %180, 1
  %182 = getelementptr inbounds i16, i16* %179, i32 %181
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  br label %185

; <label>:185:                                    ; preds = %178, %169
  %186 = phi i32 [ %177, %169 ], [ %184, %178 ]
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 2
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %199

; <label>:190:                                    ; preds = %185
  %191 = load i32, i32* %14, align 4
  %192 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %191
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 2
  %195 = add nsw i32 5, %194
  %196 = getelementptr inbounds [5 x i16], [5 x i16]* %192, i32 0, i32 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  br label %206

; <label>:199:                                    ; preds = %185
  %200 = load i16*, i16** %11, align 4
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 2
  %203 = getelementptr inbounds i16, i16* %200, i32 %202
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  br label %206

; <label>:206:                                    ; preds = %199, %190
  %207 = phi i32 [ %198, %190 ], [ %205, %199 ]
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %20, align 4
  %209 = sub nsw i32 0, %208
  %210 = sitofp i32 %209 to double
  %211 = load double, double* %25, align 8
  %212 = fmul double %210, %211
  %213 = load double, double* %26, align 8
  %214 = fmul double %212, %213
  %215 = load double, double* %27, align 8
  %216 = fmul double %214, %215
  %217 = fdiv double %216, 6.000000e+00
  %218 = fadd double 5.000000e-01, %217
  %219 = load i32, i32* %21, align 4
  %220 = sitofp i32 %219 to double
  %221 = load double, double* %24, align 8
  %222 = fmul double %220, %221
  %223 = load double, double* %26, align 8
  %224 = fmul double %222, %223
  %225 = load double, double* %27, align 8
  %226 = fmul double %224, %225
  %227 = fdiv double %226, 2.000000e+00
  %228 = fadd double %218, %227
  %229 = load i32, i32* %22, align 4
  %230 = sitofp i32 %229 to double
  %231 = load double, double* %24, align 8
  %232 = fmul double %230, %231
  %233 = load double, double* %25, align 8
  %234 = fmul double %232, %233
  %235 = load double, double* %27, align 8
  %236 = fmul double %234, %235
  %237 = fdiv double %236, 2.000000e+00
  %238 = fsub double %228, %237
  %239 = load i32, i32* %23, align 4
  %240 = sitofp i32 %239 to double
  %241 = load double, double* %24, align 8
  %242 = fmul double %240, %241
  %243 = load double, double* %25, align 8
  %244 = fmul double %242, %243
  %245 = load double, double* %26, align 8
  %246 = fmul double %244, %245
  %247 = fdiv double %246, 6.000000e+00
  %248 = fadd double %238, %247
  %249 = call arm_aapcscc double @floor(double %248) #7
  %250 = fptosi double %249 to i32
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %19, align 4
  %252 = icmp sgt i32 %251, 32767
  br i1 %252, label %253, label %257

; <label>:253:                                    ; preds = %206
  %254 = load i16*, i16** %9, align 4
  %255 = load i32, i32* %17, align 4
  %256 = getelementptr inbounds i16, i16* %254, i32 %255
  store i16 32767, i16* %256, align 2
  br label %271

; <label>:257:                                    ; preds = %206
  %258 = load i32, i32* %19, align 4
  %259 = icmp slt i32 %258, -32767
  br i1 %259, label %260, label %264

; <label>:260:                                    ; preds = %257
  %261 = load i16*, i16** %9, align 4
  %262 = load i32, i32* %17, align 4
  %263 = getelementptr inbounds i16, i16* %261, i32 %262
  store i16 -32767, i16* %263, align 2
  br label %270

; <label>:264:                                    ; preds = %257
  %265 = load i32, i32* %19, align 4
  %266 = trunc i32 %265 to i16
  %267 = load i16*, i16** %9, align 4
  %268 = load i32, i32* %17, align 4
  %269 = getelementptr inbounds i16, i16* %267, i32 %268
  store i16 %266, i16* %269, align 2
  br label %270

; <label>:270:                                    ; preds = %264, %260
  br label %271

; <label>:271:                                    ; preds = %270, %253
  br label %272

; <label>:272:                                    ; preds = %271, %145
  br label %273

; <label>:273:                                    ; preds = %272
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %17, align 4
  br label %70

; <label>:276:                                    ; preds = %93, %70
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 2
  %280 = icmp slt i32 %277, %279
  br i1 %280, label %281, label %283

; <label>:281:                                    ; preds = %276
  %282 = load i32, i32* %12, align 4
  br label %286

; <label>:283:                                    ; preds = %276
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 2
  br label %286

; <label>:286:                                    ; preds = %283, %281
  %287 = phi i32 [ %282, %281 ], [ %285, %283 ]
  %288 = load i32*, i32** %13, align 4
  store i32 %287, i32* %288, align 4
  %289 = load i32*, i32** %13, align 4
  %290 = load i32, i32* %289, align 4
  %291 = sitofp i32 %290 to float
  %292 = load i32, i32* %17, align 4
  %293 = sitofp i32 %292 to float
  %294 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %295 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %294, i32 0, i32 49
  %296 = load float, float* %295, align 4
  %297 = fmul float %293, %296
  %298 = fsub float %291, %297
  %299 = fpext float %298 to double
  %300 = load i32, i32* %14, align 4
  %301 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i32 %300
  %302 = load double, double* %301, align 8
  %303 = fadd double %302, %299
  store double %303, double* %301, align 8
  store i32 0, i32* %15, align 4
  br label %304

; <label>:304:                                    ; preds = %320, %286
  %305 = load i32, i32* %15, align 4
  %306 = icmp slt i32 %305, 5
  br i1 %306, label %307, label %323

; <label>:307:                                    ; preds = %304
  %308 = load i16*, i16** %11, align 4
  %309 = load i32*, i32** %13, align 4
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %310, %311
  %313 = sub nsw i32 %312, 5
  %314 = getelementptr inbounds i16, i16* %308, i32 %313
  %315 = load i16, i16* %314, align 2
  %316 = load i32, i32* %14, align 4
  %317 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i32 %316
  %318 = load i32, i32* %15, align 4
  %319 = getelementptr inbounds [5 x i16], [5 x i16]* %317, i32 0, i32 %318
  store i16 %315, i16* %319, align 2
  br label %320

; <label>:320:                                    ; preds = %307
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %15, align 4
  br label %304

; <label>:323:                                    ; preds = %304
  %324 = load i32, i32* %17, align 4
  ret i32 %324
}

; Function Attrs: nounwind
define arm_aapcscc i32 @fill_buffer(%struct.lame_global_flags*, i16*, i32, i16*, i32) #0 {
  %6 = alloca %struct.lame_global_flags*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %6, align 4
  store i16* %1, i16** %7, align 4
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %5
  %16 = load i32, i32* %8, align 4
  br label %19

; <label>:17:                                     ; preds = %5
  %18 = load i32, i32* %10, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %11, align 4
  %21 = load i16*, i16** %7, align 4
  %22 = bitcast i16* %21 to i8*
  %23 = load i16*, i16** %9, align 4
  %24 = bitcast i16* %23 to i8*
  %25 = load i32, i32* %11, align 4
  %26 = mul i32 2, %25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %24, i32 %26, i32 1, i1 false)
  %27 = load i32, i32* %11, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags*, i16*, i16*, i32, i8*, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.lame_global_flags*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i16*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i16*], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %8, align 4
  store i16* %1, i16** %9, align 4
  store i16* %2, i16** %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i16*, i16** %9, align 4
  %23 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 0
  store i16* %22, i16** %23, align 4
  %24 = load i16*, i16** %10, align 4
  %25 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 1
  store i16* %24, i16** %25, align 4
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %27 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %26, i32 0, i32 42
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 1024, %28
  %30 = sub nsw i32 %29, 272
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp sge i32 3056, %31
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %6
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 995, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.lame_encode_buffer, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %33, %6
  %35 = phi i1 [ true, %6 ], [ false, %33 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 39
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* @lame_encode_buffer.frame_buffered, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

; <label>:44:                                     ; preds = %41
  call void @llvm.memset.p0i8.i32(i8* bitcast ([2 x [3056 x i16]]* @mfbuf to i8*), i8 0, i32 12224, i32 2, i1 false)
  store i32 1, i32* @lame_encode_buffer.frame_buffered, align 4
  store i32 1088, i32* @mf_samples_to_encode, align 4
  store i32 752, i32* @mf_size, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %41, %34
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %47 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 39
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  store i32 0, i32* @lame_encode_buffer.frame_buffered, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %45
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %53 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %94

; <label>:56:                                     ; preds = %51
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %58 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 46
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %94

; <label>:61:                                     ; preds = %56
  store i32 0, i32* %16, align 4
  br label %62

; <label>:62:                                     ; preds = %90, %61
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %93

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 0
  %68 = load i16*, i16** %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = getelementptr inbounds i16, i16* %68, i32 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 1
  %74 = load i16*, i16** %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = getelementptr inbounds i16, i16* %74, i32 %75
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = add nsw i32 %72, %78
  %80 = sdiv i32 %79, 2
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 0
  %83 = load i16*, i16** %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = getelementptr inbounds i16, i16* %83, i32 %84
  store i16 %81, i16* %85, align 2
  %86 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 1
  %87 = load i16*, i16** %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = getelementptr inbounds i16, i16* %87, i32 %88
  store i16 0, i16* %89, align 2
  br label %90

; <label>:90:                                     ; preds = %66
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %62

; <label>:93:                                     ; preds = %62
  br label %94

; <label>:94:                                     ; preds = %93, %56, %51
  br label %95

; <label>:95:                                     ; preds = %227, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %228

; <label>:98:                                     ; preds = %95
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %99

; <label>:99:                                     ; preds = %146, %98
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %102 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %101, i32 0, i32 46
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %149

; <label>:105:                                    ; preds = %99
  %106 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %107 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %106, i32 0, i32 49
  %108 = load float, float* %107, align 4
  %109 = fcmp une float %108, 1.000000e+00
  br i1 %109, label %110, label %125

; <label>:110:                                    ; preds = %105
  %111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %112 = load i32, i32* %17, align 4
  %113 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %112
  %114 = load i32, i32* @mf_size, align 4
  %115 = getelementptr inbounds [3056 x i16], [3056 x i16]* %113, i32 0, i32 %114
  %116 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %117 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %116, i32 0, i32 42
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 %119
  %121 = load i16*, i16** %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call arm_aapcscc i32 @fill_buffer_resample(%struct.lame_global_flags* %111, i16* %115, i32 %118, i16* %121, i32 %122, i32* %20, i32 %123)
  store i32 %124, i32* %21, align 4
  br label %140

; <label>:125:                                    ; preds = %105
  %126 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %127 = load i32, i32* %17, align 4
  %128 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %127
  %129 = load i32, i32* @mf_size, align 4
  %130 = getelementptr inbounds [3056 x i16], [3056 x i16]* %128, i32 0, i32 %129
  %131 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %132 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %131, i32 0, i32 42
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %17, align 4
  %135 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 %134
  %136 = load i16*, i16** %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call arm_aapcscc i32 @fill_buffer(%struct.lame_global_flags* %126, i16* %130, i32 %133, i16* %136, i32 %137)
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %21, align 4
  store i32 %139, i32* %20, align 4
  br label %140

; <label>:140:                                    ; preds = %125, %110
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %17, align 4
  %143 = getelementptr inbounds [2 x i16*], [2 x i16*]* %19, i32 0, i32 %142
  %144 = load i16*, i16** %143, align 4
  %145 = getelementptr inbounds i16, i16* %144, i32 %141
  store i16* %145, i16** %143, align 4
  br label %146

; <label>:146:                                    ; preds = %140
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %99

; <label>:149:                                    ; preds = %99
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* @mf_size, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* @mf_size, align 4
  %156 = load i32, i32* @mf_size, align 4
  %157 = icmp sle i32 %156, 3056
  br i1 %157, label %159, label %158

; <label>:158:                                    ; preds = %149
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1045, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.lame_encode_buffer, i32 0, i32 0))
  br label %159

; <label>:159:                                    ; preds = %158, %149
  %160 = phi i1 [ true, %149 ], [ false, %158 ]
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* @mf_samples_to_encode, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* @mf_samples_to_encode, align 4
  %165 = load i32, i32* @mf_size, align 4
  %166 = load i32, i32* %18, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %227

; <label>:168:                                    ; preds = %159
  %169 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %170 = load i32, i32* @mf_size, align 4
  %171 = load i8*, i8** %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call arm_aapcscc i32 @lame_encode_frame(%struct.lame_global_flags* %169, i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 0, i32 0), i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 1, i32 0), i32 %170, i8* %171, i32 %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %168
  store i32 -1, i32* %7, align 4
  br label %236

; <label>:177:                                    ; preds = %168
  %178 = load i32, i32* %15, align 4
  %179 = load i8*, i8** %12, align 4
  %180 = getelementptr inbounds i8, i8* %179, i32 %178
  store i8* %180, i8** %12, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %185 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %184, i32 0, i32 42
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @mf_size, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* @mf_size, align 4
  %189 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %190 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %189, i32 0, i32 42
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @mf_samples_to_encode, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* @mf_samples_to_encode, align 4
  store i32 0, i32* %17, align 4
  br label %194

; <label>:194:                                    ; preds = %223, %177
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %197 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %196, i32 0, i32 46
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %226

; <label>:200:                                    ; preds = %194
  store i32 0, i32* %16, align 4
  br label %201

; <label>:201:                                    ; preds = %219, %200
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @mf_size, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %222

; <label>:205:                                    ; preds = %201
  %206 = load i32, i32* %17, align 4
  %207 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %206
  %208 = load i32, i32* %16, align 4
  %209 = load %struct.lame_global_flags*, %struct.lame_global_flags** %8, align 4
  %210 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %209, i32 0, i32 42
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  %213 = getelementptr inbounds [3056 x i16], [3056 x i16]* %207, i32 0, i32 %212
  %214 = load i16, i16* %213, align 2
  %215 = load i32, i32* %17, align 4
  %216 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %215
  %217 = load i32, i32* %16, align 4
  %218 = getelementptr inbounds [3056 x i16], [3056 x i16]* %216, i32 0, i32 %217
  store i16 %214, i16* %218, align 2
  br label %219

; <label>:219:                                    ; preds = %205
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %201

; <label>:222:                                    ; preds = %201
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %17, align 4
  br label %194

; <label>:226:                                    ; preds = %194
  br label %227

; <label>:227:                                    ; preds = %226, %159
  br label %95

; <label>:228:                                    ; preds = %95
  %229 = load i32, i32* %11, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

; <label>:231:                                    ; preds = %228
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1066, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.lame_encode_buffer, i32 0, i32 0))
  br label %232

; <label>:232:                                    ; preds = %231, %228
  %233 = phi i1 [ true, %228 ], [ false, %231 ]
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %7, align 4
  br label %236

; <label>:236:                                    ; preds = %232, %176
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

; Function Attrs: nounwind
define arm_aapcscc i32 @lame_encode_buffer_interleaved(%struct.lame_global_flags*, i16*, i32, i8*, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lame_global_flags*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 4
  %18 = alloca i16*, align 4
  %19 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %7, align 4
  store i16* %1, i16** %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 42
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 1024, %22
  %24 = sub nsw i32 %23, 272
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp sge i32 3056, %25
  br i1 %26, label %28, label %27

; <label>:27:                                     ; preds = %5
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1083, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.lame_encode_buffer_interleaved, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %27, %5
  %29 = phi i1 [ true, %5 ], [ false, %27 ]
  %30 = zext i1 %29 to i32
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %28
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %37 = load i16*, i16** %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags* %36, i16* %37, i16* null, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %297

; <label>:42:                                     ; preds = %28
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 49
  %45 = load float, float* %44, align 4
  %46 = fcmp une float %45, 1.000000e+00
  br i1 %46, label %47, label %101

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = mul i32 2, %48
  %50 = call arm_aapcscc i8* @malloc(i32 %49)
  %51 = bitcast i8* %50 to i16*
  store i16* %51, i16** %17, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul i32 2, %52
  %54 = call arm_aapcscc i8* @malloc(i32 %53)
  %55 = bitcast i8* %54 to i16*
  store i16* %55, i16** %18, align 4
  %56 = load i16*, i16** %17, align 4
  %57 = icmp eq i16* %56, null
  br i1 %57, label %61, label %58

; <label>:58:                                     ; preds = %47
  %59 = load i16*, i16** %18, align 4
  %60 = icmp eq i16* %59, null
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58, %47
  store i32 -1, i32* %6, align 4
  br label %297

; <label>:62:                                     ; preds = %58
  store i32 0, i32* %14, align 4
  br label %63

; <label>:63:                                     ; preds = %85, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

; <label>:67:                                     ; preds = %63
  %68 = load i16*, i16** %8, align 4
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 2, %69
  %71 = getelementptr inbounds i16, i16* %68, i32 %70
  %72 = load i16, i16* %71, align 2
  %73 = load i16*, i16** %17, align 4
  %74 = load i32, i32* %14, align 4
  %75 = getelementptr inbounds i16, i16* %73, i32 %74
  store i16 %72, i16* %75, align 2
  %76 = load i16*, i16** %8, align 4
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 1
  %80 = getelementptr inbounds i16, i16* %76, i32 %79
  %81 = load i16, i16* %80, align 2
  %82 = load i16*, i16** %18, align 4
  %83 = load i32, i32* %14, align 4
  %84 = getelementptr inbounds i16, i16* %82, i32 %83
  store i16 %81, i16* %84, align 2
  br label %85

; <label>:85:                                     ; preds = %67
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %63

; <label>:88:                                     ; preds = %63
  %89 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %90 = load i16*, i16** %17, align 4
  %91 = load i16*, i16** %18, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i8*, i8** %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags* %89, i16* %90, i16* %91, i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i16*, i16** %17, align 4
  %97 = bitcast i16* %96 to i8*
  call arm_aapcscc void @free(i8* %97)
  %98 = load i16*, i16** %18, align 4
  %99 = bitcast i16* %98 to i8*
  call arm_aapcscc void @free(i8* %99)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %6, align 4
  br label %297

; <label>:101:                                    ; preds = %42
  %102 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %103 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %102, i32 0, i32 39
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %106
  call void @llvm.memset.p0i8.i32(i8* bitcast ([2 x [3056 x i16]]* @mfbuf to i8*), i8 0, i32 12224, i32 2, i1 false)
  store i32 1, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, i32* @mf_samples_to_encode, align 4
  store i32 752, i32* @mf_size, align 4
  br label %110

; <label>:110:                                    ; preds = %109, %106, %101
  %111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %112 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %111, i32 0, i32 39
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %110
  store i32 0, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %116

; <label>:116:                                    ; preds = %115, %110
  %117 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %118 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %161

; <label>:121:                                    ; preds = %116
  %122 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %123 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %122, i32 0, i32 46
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %161

; <label>:126:                                    ; preds = %121
  store i32 0, i32* %14, align 4
  br label %127

; <label>:127:                                    ; preds = %157, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %160

; <label>:131:                                    ; preds = %127
  %132 = load i16*, i16** %8, align 4
  %133 = load i32, i32* %14, align 4
  %134 = mul nsw i32 2, %133
  %135 = getelementptr inbounds i16, i16* %132, i32 %134
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  %138 = load i16*, i16** %8, align 4
  %139 = load i32, i32* %14, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %140, 1
  %142 = getelementptr inbounds i16, i16* %138, i32 %141
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = add nsw i32 %137, %144
  %146 = sdiv i32 %145, 2
  %147 = trunc i32 %146 to i16
  %148 = load i16*, i16** %8, align 4
  %149 = load i32, i32* %14, align 4
  %150 = mul nsw i32 2, %149
  %151 = getelementptr inbounds i16, i16* %148, i32 %150
  store i16 %147, i16* %151, align 2
  %152 = load i16*, i16** %8, align 4
  %153 = load i32, i32* %14, align 4
  %154 = mul nsw i32 2, %153
  %155 = add nsw i32 %154, 1
  %156 = getelementptr inbounds i16, i16* %152, i32 %155
  store i16 0, i16* %156, align 2
  br label %157

; <label>:157:                                    ; preds = %131
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %127

; <label>:160:                                    ; preds = %127
  br label %161

; <label>:161:                                    ; preds = %160, %121, %116
  br label %162

; <label>:162:                                    ; preds = %288, %161
  %163 = load i32, i32* %9, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %289

; <label>:165:                                    ; preds = %162
  %166 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %167 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %166, i32 0, i32 42
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %175

; <label>:171:                                    ; preds = %165
  %172 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %173 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %172, i32 0, i32 42
  %174 = load i32, i32* %173, align 4
  br label %177

; <label>:175:                                    ; preds = %165
  %176 = load i32, i32* %9, align 4
  br label %177

; <label>:177:                                    ; preds = %175, %171
  %178 = phi i32 [ %174, %171 ], [ %176, %175 ]
  store i32 %178, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %179

; <label>:179:                                    ; preds = %203, %177
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %206

; <label>:183:                                    ; preds = %179
  %184 = load i16*, i16** %8, align 4
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 2, %185
  %187 = getelementptr inbounds i16, i16* %184, i32 %186
  %188 = load i16, i16* %187, align 2
  %189 = load i32, i32* @mf_size, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %189, %190
  %192 = getelementptr inbounds [3056 x i16], [3056 x i16]* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 0), i32 0, i32 %191
  store i16 %188, i16* %192, align 2
  %193 = load i16*, i16** %8, align 4
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 2, %194
  %196 = add nsw i32 %195, 1
  %197 = getelementptr inbounds i16, i16* %193, i32 %196
  %198 = load i16, i16* %197, align 2
  %199 = load i32, i32* @mf_size, align 4
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %199, %200
  %202 = getelementptr inbounds [3056 x i16], [3056 x i16]* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 1), i32 0, i32 %201
  store i16 %198, i16* %202, align 2
  br label %203

; <label>:203:                                    ; preds = %183
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %179

; <label>:206:                                    ; preds = %179
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 2, %207
  %209 = load i16*, i16** %8, align 4
  %210 = getelementptr inbounds i16, i16* %209, i32 %208
  store i16* %210, i16** %8, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %9, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* @mf_size, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* @mf_size, align 4
  %217 = load i32, i32* @mf_size, align 4
  %218 = icmp sle i32 %217, 3056
  br i1 %218, label %220, label %219

; <label>:219:                                    ; preds = %206
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.lame_encode_buffer_interleaved, i32 0, i32 0))
  br label %220

; <label>:220:                                    ; preds = %219, %206
  %221 = phi i1 [ true, %206 ], [ false, %219 ]
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @mf_samples_to_encode, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* @mf_samples_to_encode, align 4
  %226 = load i32, i32* @mf_size, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %288

; <label>:229:                                    ; preds = %220
  %230 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %231 = load i32, i32* @mf_size, align 4
  %232 = load i8*, i8** %10, align 4
  %233 = load i32, i32* %11, align 4
  %234 = call arm_aapcscc i32 @lame_encode_frame(%struct.lame_global_flags* %230, i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 0, i32 0), i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 1, i32 0), i32 %231, i8* %232, i32 %233)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %238

; <label>:237:                                    ; preds = %229
  store i32 -1, i32* %6, align 4
  br label %297

; <label>:238:                                    ; preds = %229
  %239 = load i32, i32* %13, align 4
  %240 = load i8*, i8** %10, align 4
  %241 = getelementptr inbounds i8, i8* %240, i32 %239
  store i8* %241, i8** %10, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %12, align 4
  %245 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %246 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %245, i32 0, i32 42
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @mf_size, align 4
  %249 = sub nsw i32 %248, %247
  store i32 %249, i32* @mf_size, align 4
  %250 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %251 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %250, i32 0, i32 42
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @mf_samples_to_encode, align 4
  %254 = sub nsw i32 %253, %252
  store i32 %254, i32* @mf_samples_to_encode, align 4
  store i32 0, i32* %15, align 4
  br label %255

; <label>:255:                                    ; preds = %284, %238
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %258 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %257, i32 0, i32 46
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %287

; <label>:261:                                    ; preds = %255
  store i32 0, i32* %14, align 4
  br label %262

; <label>:262:                                    ; preds = %280, %261
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @mf_size, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %283

; <label>:266:                                    ; preds = %262
  %267 = load i32, i32* %15, align 4
  %268 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %267
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.lame_global_flags*, %struct.lame_global_flags** %7, align 4
  %271 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %270, i32 0, i32 42
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %269, %272
  %274 = getelementptr inbounds [3056 x i16], [3056 x i16]* %268, i32 0, i32 %273
  %275 = load i16, i16* %274, align 2
  %276 = load i32, i32* %15, align 4
  %277 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i32 %276
  %278 = load i32, i32* %14, align 4
  %279 = getelementptr inbounds [3056 x i16], [3056 x i16]* %277, i32 0, i32 %278
  store i16 %275, i16* %279, align 2
  br label %280

; <label>:280:                                    ; preds = %266
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %14, align 4
  br label %262

; <label>:283:                                    ; preds = %262
  br label %284

; <label>:284:                                    ; preds = %283
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %255

; <label>:287:                                    ; preds = %255
  br label %288

; <label>:288:                                    ; preds = %287, %220
  br label %162

; <label>:289:                                    ; preds = %162
  %290 = load i32, i32* %9, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %293, label %292

; <label>:292:                                    ; preds = %289
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 1161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.lame_encode_buffer_interleaved, i32 0, i32 0))
  br label %293

; <label>:293:                                    ; preds = %292, %289
  %294 = phi i1 [ true, %289 ], [ false, %292 ]
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %6, align 4
  br label %297

; <label>:297:                                    ; preds = %293, %237, %88, %61, %35
  %298 = load i32, i32* %6, align 4
  ret i32 %298
}

declare arm_aapcscc i8* @malloc(i32) #2

declare arm_aapcscc void @free(i8*) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @lame_encode(%struct.lame_global_flags*, [1152 x i16]*, i8*, i32) #0 {
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca [1152 x i16]*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store [1152 x i16]* %1, [1152 x i16]** %6, align 4
  store i8* %2, i8** %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @mf_samples_to_encode, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %13 = load [1152 x i16]*, [1152 x i16]** %6, align 4
  %14 = getelementptr inbounds [1152 x i16], [1152 x i16]* %13, i32 0
  %15 = getelementptr inbounds [1152 x i16], [1152 x i16]* %14, i32 0, i32 0
  %16 = load [1152 x i16]*, [1152 x i16]** %6, align 4
  %17 = getelementptr inbounds [1152 x i16], [1152 x i16]* %16, i32 1
  %18 = getelementptr inbounds [1152 x i16], [1152 x i16]* %17, i32 0, i32 0
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %20 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %19, i32 0, i32 45
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 576, %21
  %23 = load i8*, i8** %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call arm_aapcscc i32 @lame_encode_buffer(%struct.lame_global_flags* %12, i16* %15, i16* %18, i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* @mf_samples_to_encode, align 4
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

; Function Attrs: nounwind
define arm_aapcscc void @lame_init(%struct.lame_global_flags*) #0 {
  %2 = alloca %struct.lame_global_flags*, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %2, align 4
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %4 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 36
  store i32 0, i32* %4, align 4
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %6 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 33
  store i32 0, i32* %6, align 4
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %8 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 34
  store i32 0, i32* %8, align 4
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 5
  store i32 1, i32* %10, align 4
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 35
  store float 0.000000e+00, float* %12, align 4
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %14 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 17
  store i32 0, i32* %14, align 4
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %16 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 18
  store i32 0, i32* %16, align 4
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 19
  store i32 0, i32* %18, align 4
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %20 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %19, i32 0, i32 20
  store i32 0, i32* %20, align 4
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %22 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 39
  store i32 0, i32* %22, align 4
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %26 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %25, i32 0, i32 6
  store i32 5, i32* %26, align 4
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %28 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 29
  store i32 0, i32* %28, align 4
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %30 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 59
  store i32 0, i32* %30, align 4
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 25
  store i32 0, i32* %32, align 4
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %34 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 26
  store i32 0, i32* %34, align 4
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 27
  store i32 -1, i32* %36, align 4
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 28
  store i32 -1, i32* %38, align 4
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %40 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 53
  store float 0.000000e+00, float* %40, align 4
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %42 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %41, i32 0, i32 54
  store float 0.000000e+00, float* %42, align 4
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 55
  store float 0.000000e+00, float* %44, align 4
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %46 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 56
  store float 0.000000e+00, float* %46, align 4
  %47 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %48 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %47, i32 0, i32 57
  store i32 32, i32* %48, align 4
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %50 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 58
  store i32 -1, i32* %50, align 4
  %51 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %52 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %51, i32 0, i32 37
  store i32 0, i32* %52, align 4
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %54 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 49
  store float 1.000000e+00, float* %54, align 4
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %56 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 15
  store i32 2, i32* %56, align 4
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %58 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 44
  store i32 0, i32* %58, align 4
  %59 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %60 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %59, i32 0, i32 30
  store i32 0, i32* %60, align 4
  %61 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %62 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %61, i32 0, i32 7
  store i32 0, i32* %62, align 4
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %64 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 40
  store i32 0, i32* %64, align 4
  %65 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %66 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %65, i32 0, i32 21
  store i32 0, i32* %66, align 4
  %67 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %68 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %67, i32 0, i32 22
  store i32 4, i32* %68, align 4
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %70 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 23
  store i32 0, i32* %70, align 4
  %71 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %72 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %71, i32 0, i32 24
  store i32 0, i32* %72, align 4
  %73 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %74 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %73, i32 0, i32 47
  store i32 1, i32* %74, align 4
  %75 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %76 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %75, i32 0, i32 48
  store i32 13, i32* %76, align 4
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %78 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 43
  store i32 1, i32* %78, align 4
  %79 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %80 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %79, i32 0, i32 8
  store i32 1, i32* %80, align 4
  %81 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %82 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %81, i32 0, i32 9
  store i32 0, i32* %82, align 4
  %83 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %84 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %83, i32 0, i32 10
  store i32 0, i32* %84, align 4
  %85 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %86 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %85, i32 0, i32 11
  store i32 0, i32* %86, align 4
  %87 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %88 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %87, i32 0, i32 12
  store i32 0, i32* %88, align 4
  %89 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %90 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %89, i32 0, i32 13
  store i32 1, i32* %90, align 4
  %91 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %92 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %91, i32 0, i32 16
  store i32 0, i32* %92, align 4
  %93 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %94 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %93, i32 0, i32 14
  store i32 0, i32* %94, align 4
  %95 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %96 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %95, i32 0, i32 38
  store i32 0, i32* %96, align 4
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %98 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 2
  store i32 44100, i32* %98, align 4
  %99 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %100 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %99, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %102 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %101, i32 0, i32 1
  store i32 2, i32* %102, align 4
  %103 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %104 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 4
  %105 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %106 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %105, i32 0, i32 31
  store i8* null, i8** %106, align 4
  %107 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %108 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %107, i32 0, i32 32
  store i8* null, i8** %108, align 4
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @lame_encode_finish(%struct.lame_global_flags*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x [1152 x i16]], align 2
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %11, i32 0, i32 0
  %13 = bitcast [1152 x i16]* %12 to i8*
  call void @llvm.memset.p0i8.i32(i8* %13, i8 0, i32 4608, i32 2, i1 false)
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %33, %3
  %15 = load i32, i32* @mf_samples_to_encode, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %45

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i32 0, i32* %10, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %17
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %26 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %11, i32 0, i32 0
  %27 = load i8*, i8** %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call arm_aapcscc i32 @lame_encode(%struct.lame_global_flags* %25, [1152 x i16]* %26, i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %24
  call arm_aapcscc void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  store i32 -1, i32* %4, align 4
  br label %95

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %6, align 4
  %36 = getelementptr inbounds i8, i8* %35, i32 %34
  store i8* %36, i8** %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %41 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %40, i32 0, i32 42
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @mf_samples_to_encode, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* @mf_samples_to_encode, align 4
  br label %14

; <label>:45:                                     ; preds = %14
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %47 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 39
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %51 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %76, label %54

; <label>:54:                                     ; preds = %45
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %56 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %54
  %60 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %61 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %64 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 39
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %67 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %66, i32 0, i32 40
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %70 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 42
  %71 = load i32, i32* %70, align 4
  call arm_aapcscc void @timestatus(i32 %62, i32 %65, i32 %68, i32 %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %73 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %75 = call arm_aapcscc i32 @fflush(%struct._IO_FILE* %74)
  br label %76

; <label>:76:                                     ; preds = %59, %54, %45
  call arm_aapcscc void @III_FlushBitstream()
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %76
  store i32 0, i32* %10, align 4
  br label %83

; <label>:83:                                     ; preds = %82, %76
  %84 = load i8*, i8** %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call arm_aapcscc i32 @copy_buffer(i8* %84, i32 %85, %struct.bit_stream_struc* @bs)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %83
  call arm_aapcscc void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  store i32 -1, i32* %4, align 4
  br label %95

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  call arm_aapcscc void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

; <label>:95:                                     ; preds = %90, %89, %32
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare arm_aapcscc void @desalloc_buffer(%struct.bit_stream_struc*) #2

declare arm_aapcscc void @III_FlushBitstream() #2

; Function Attrs: nounwind
define arm_aapcscc void @lame_mp3_tags(%struct.lame_global_flags*) #0 {
  %2 = alloca %struct.lame_global_flags*, align 4
  %3 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %2, align 4
  %4 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 22
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 100
  %13 = sdiv i32 %12, 9
  store i32 %13, i32* %3, align 4
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %15 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 32
  %16 = load i8*, i8** %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %19 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 43
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 1, %20
  %22 = call arm_aapcscc i32 @PutVbrTag(i8* %16, i32 %17, i32 %21)
  br label %23

; <label>:23:                                     ; preds = %8, %1
  %24 = load i32, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %23
  call arm_aapcscc void @id3_buildtag(%struct.ID3TAGDATA* @id3tag)
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %2, align 4
  %28 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 32
  %29 = load i8*, i8** %28, align 4
  %30 = call arm_aapcscc i32 @id3_writetag(i8* %29, %struct.ID3TAGDATA* @id3tag)
  br label %31

; <label>:31:                                     ; preds = %26, %23
  ret void
}

declare arm_aapcscc i32 @PutVbrTag(i8*, i32, i32) #2

declare arm_aapcscc void @id3_buildtag(%struct.ID3TAGDATA*) #2

declare arm_aapcscc i32 @id3_writetag(i8*, %struct.ID3TAGDATA*) #2

; Function Attrs: nounwind
define arm_aapcscc void @lame_version(%struct.lame_global_flags*, i8*) #0 {
  %3 = alloca %struct.lame_global_flags*, align 4
  %4 = alloca i8*, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %3, align 4
  store i8* %1, i8** %4, align 4
  %5 = load i8*, i8** %4, align 4
  %6 = call arm_aapcscc i8* @get_lame_version()
  %7 = call arm_aapcscc i8* @strncpy(i8* %5, i8* %6, i32 20)
  ret void
}

declare arm_aapcscc i8* @strncpy(i8*, i8*, i32) #2

declare arm_aapcscc i8* @get_lame_version() #2

declare arm_aapcscc i8* @strrchr(i8*, i32) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
