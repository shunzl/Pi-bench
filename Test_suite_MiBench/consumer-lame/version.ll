; ModuleID = 'version.c'
source_filename = "version.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

@.str = private unnamed_addr constant [39 x i8] c"LAME version %s (www.sulaco.org/mp3) \0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"GPSYCHO: GPL psycho-acoustic and noise shaping model version %s. \0A\00", align 1
@lpszVersion = internal global [80 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d:%02d\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @lame_print_version(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %4 = call arm_aapcscc i8* @get_lame_version()
  %5 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 4
  %7 = call arm_aapcscc i8* @get_psy_version()
  %8 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i32 0, i32 0), i8* %7)
  ret void
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @get_lame_version() #0 {
  %1 = call arm_aapcscc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 3, i32 70)
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0)
}

; Function Attrs: nounwind
define arm_aapcscc i8* @get_psy_version() #0 {
  %1 = call arm_aapcscc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 77)
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0)
}

declare arm_aapcscc i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
define arm_aapcscc i8* @get_mp3x_version() #0 {
  %1 = call arm_aapcscc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 82)
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i32 0, i32 0)
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
