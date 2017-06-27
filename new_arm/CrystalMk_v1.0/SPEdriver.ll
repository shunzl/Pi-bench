; ModuleID = 'SPEdriver.c'
source_filename = "SPEdriver.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0A***** timing for Crystal_div \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0AWall time = %f seconds. \0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\0ACPU  time = %f seconds. \0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\0A***** timing for Crystal_pow \0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\0A***** timing for Crystal_Cholesky \0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc double @SPEdriver(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %9 = alloca double*, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca [12 x double]*, align 4
  %15 = alloca [12 x double]*, align 4
  %16 = alloca [12 x double]*, align 4
  %17 = alloca %struct.timeval, align 4
  %18 = alloca %struct.timeval, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store double 0.000000e+00, double* %21, align 8
  store i32 1000000, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %28 = call arm_aapcscc i32 @clock()
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %29

; <label>:29:                                     ; preds = %41, %8
  %30 = load i32, i32* %24, align 4
  %31 = icmp slt i32 %30, 1000000
  br i1 %31, label %32, label %44

; <label>:32:                                     ; preds = %29
  %33 = load double*, double** %9, align 4
  %34 = load double*, double** %10, align 4
  %35 = load double*, double** %11, align 4
  %36 = load double*, double** %12, align 4
  %37 = load double*, double** %13, align 4
  %38 = load [12 x double]*, [12 x double]** %14, align 4
  %39 = load [12 x double]*, [12 x double]** %15, align 4
  %40 = load [12 x double]*, [12 x double]** %16, align 4
  call arm_aapcscc void @Crystal_div(i32 12, double 1.000000e-02, double* %33, double* %34, double* %35, double* %36, double* %37, [12 x double]* %38, [12 x double]* %39, [12 x double]* %40)
  br label %41

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %24, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %24, align 4
  br label %29

; <label>:44:                                     ; preds = %29
  %45 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %46 = call arm_aapcscc i32 @clock()
  store i32 %46, i32* %20, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = sitofp i32 %51 to double
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = fadd double %52, %59
  store double %60, double* %21, align 8
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %62 = load double, double* %21, align 8
  %63 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), double %62)
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 1.000000e+06
  %69 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), double %68)
  %70 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %71 = call arm_aapcscc i32 @clock()
  store i32 %71, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %72

; <label>:72:                                     ; preds = %78, %44
  %73 = load i32, i32* %24, align 4
  %74 = icmp slt i32 %73, 1000000
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %72
  %76 = load double*, double** %9, align 4
  %77 = call arm_aapcscc double @Crystal_pow(i32 12, double* %76)
  store double %77, double* %22, align 8
  br label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %24, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %24, align 4
  br label %72

; <label>:81:                                     ; preds = %72
  %82 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %83 = call arm_aapcscc i32 @clock()
  store i32 %83, i32* %20, align 4
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %85, %87
  %89 = sitofp i32 %88 to double
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 1.000000e+06
  %97 = fadd double %89, %96
  store double %97, double* %21, align 8
  %98 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  %99 = load double, double* %21, align 8
  %100 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), double %99)
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %104, 1.000000e+06
  %106 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), double %105)
  %107 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %108 = call arm_aapcscc i32 @clock()
  store i32 %108, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %109

; <label>:109:                                    ; preds = %132, %81
  %110 = load i32, i32* %24, align 4
  %111 = icmp slt i32 %110, 12
  br i1 %111, label %112, label %135

; <label>:112:                                    ; preds = %109
  store i32 0, i32* %25, align 4
  br label %113

; <label>:113:                                    ; preds = %128, %112
  %114 = load i32, i32* %25, align 4
  %115 = icmp slt i32 %114, 12
  br i1 %115, label %116, label %131

; <label>:116:                                    ; preds = %113
  %117 = load [12 x double]*, [12 x double]** %14, align 4
  %118 = load i32, i32* %24, align 4
  %119 = getelementptr inbounds [12 x double], [12 x double]* %117, i32 %118
  %120 = load i32, i32* %25, align 4
  %121 = getelementptr inbounds [12 x double], [12 x double]* %119, i32 0, i32 %120
  %122 = load double, double* %121, align 8
  %123 = load [12 x double]*, [12 x double]** %16, align 4
  %124 = load i32, i32* %24, align 4
  %125 = getelementptr inbounds [12 x double], [12 x double]* %123, i32 %124
  %126 = load i32, i32* %25, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 0, i32 %126
  store double %122, double* %127, align 8
  br label %128

; <label>:128:                                    ; preds = %116
  %129 = load i32, i32* %25, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %25, align 4
  br label %113

; <label>:131:                                    ; preds = %113
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %24, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %24, align 4
  br label %109

; <label>:135:                                    ; preds = %109
  store i32 0, i32* %24, align 4
  br label %136

; <label>:136:                                    ; preds = %170, %135
  %137 = load i32, i32* %24, align 4
  %138 = icmp slt i32 %137, 1000000
  br i1 %138, label %139, label %173

; <label>:139:                                    ; preds = %136
  store i32 0, i32* %25, align 4
  br label %140

; <label>:140:                                    ; preds = %163, %139
  %141 = load i32, i32* %25, align 4
  %142 = icmp slt i32 %141, 12
  br i1 %142, label %143, label %166

; <label>:143:                                    ; preds = %140
  store i32 0, i32* %26, align 4
  br label %144

; <label>:144:                                    ; preds = %159, %143
  %145 = load i32, i32* %26, align 4
  %146 = icmp slt i32 %145, 12
  br i1 %146, label %147, label %162

; <label>:147:                                    ; preds = %144
  %148 = load [12 x double]*, [12 x double]** %16, align 4
  %149 = load i32, i32* %25, align 4
  %150 = getelementptr inbounds [12 x double], [12 x double]* %148, i32 %149
  %151 = load i32, i32* %26, align 4
  %152 = getelementptr inbounds [12 x double], [12 x double]* %150, i32 0, i32 %151
  %153 = load double, double* %152, align 8
  %154 = load [12 x double]*, [12 x double]** %14, align 4
  %155 = load i32, i32* %25, align 4
  %156 = getelementptr inbounds [12 x double], [12 x double]* %154, i32 %155
  %157 = load i32, i32* %26, align 4
  %158 = getelementptr inbounds [12 x double], [12 x double]* %156, i32 0, i32 %157
  store double %153, double* %158, align 8
  br label %159

; <label>:159:                                    ; preds = %147
  %160 = load i32, i32* %26, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %26, align 4
  br label %144

; <label>:162:                                    ; preds = %144
  br label %163

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %25, align 4
  br label %140

; <label>:166:                                    ; preds = %140
  %167 = load [12 x double]*, [12 x double]** %14, align 4
  %168 = load double*, double** %11, align 4
  %169 = load double*, double** %13, align 4
  call arm_aapcscc void @Crystal_Cholesky(i32 12, [12 x double]* %167, double* %168, double* %169)
  br label %170

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %24, align 4
  br label %136

; <label>:173:                                    ; preds = %136
  %174 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %175 = call arm_aapcscc i32 @clock()
  store i32 %175, i32* %20, align 4
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %177, %179
  %181 = sitofp i32 %180 to double
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %183, %185
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %187, 1.000000e+06
  %189 = fadd double %181, %188
  store double %189, double* %21, align 8
  %190 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0))
  %191 = load double, double* %21, align 8
  %192 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), double %191)
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %19, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sitofp i32 %195 to double
  %197 = fdiv double %196, 1.000000e+06
  %198 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), double %197)
  %199 = load double, double* %22, align 8
  ret double %199
}

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #1

declare arm_aapcscc i32 @clock() #1

declare arm_aapcscc void @Crystal_div(i32, double, double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc double @Crystal_pow(i32, double*) #1

declare arm_aapcscc void @Crystal_Cholesky(i32, [12 x double]*, double*, double*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
