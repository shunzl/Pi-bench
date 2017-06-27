; ModuleID = 'Crystal_div.c'
source_filename = "Crystal_div.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc void @Crystal_div(i32, double, double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 4
  %14 = alloca double*, align 4
  %15 = alloca double*, align 4
  %16 = alloca double*, align 4
  %17 = alloca double*, align 4
  %18 = alloca [12 x double]*, align 4
  %19 = alloca [12 x double]*, align 4
  %20 = alloca [12 x double]*, align 4
  %21 = alloca [12 x double], align 8
  %22 = alloca [12 x double], align 8
  %23 = alloca [12 x double], align 8
  %24 = alloca [12 x double], align 8
  %25 = alloca [12 x double], align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store double %1, double* %12, align 8
  store double* %2, double** %13, align 4
  store double* %3, double** %14, align 4
  store double* %4, double** %15, align 4
  store double* %5, double** %16, align 4
  store double* %6, double** %17, align 4
  store [12 x double]* %7, [12 x double]** %18, align 4
  store [12 x double]* %8, [12 x double]** %19, align 4
  store [12 x double]* %9, [12 x double]** %20, align 4
  store double 1.000000e-06, double* %26, align 8
  store double 3.000000e+01, double* %27, align 8
  store double 1.200000e+00, double* %28, align 8
  store double 1.000000e-02, double* %29, align 8
  store double 0.000000e+00, double* %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %33

; <label>:33:                                     ; preds = %47, %10
  %34 = load i32, i32* %31, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %31, align 4
  %39 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %38
  store double 1.000000e+00, double* %39, align 8
  %40 = load i32, i32* %31, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double 2.000000e-01, %41
  %43 = fdiv double %42, 1.200000e+01
  %44 = fadd double 9.000000e-01, %43
  %45 = load i32, i32* %31, align 4
  %46 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %45
  store double %44, double* %46, align 8
  br label %47

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %31, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %31, align 4
  br label %33

; <label>:50:                                     ; preds = %33
  store i32 0, i32* %31, align 4
  br label %51

; <label>:51:                                     ; preds = %69, %50
  %52 = load i32, i32* %31, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

; <label>:55:                                     ; preds = %51
  %56 = load double*, double** %13, align 4
  %57 = load i32, i32* %31, align 4
  %58 = getelementptr inbounds double, double* %56, i32 %57
  %59 = load double, double* %58, align 8
  %60 = load i32, i32* %31, align 4
  %61 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %60
  %62 = load double, double* %61, align 8
  %63 = fmul double %59, %62
  %64 = load double, double* %26, align 8
  %65 = fadd double %63, %64
  %66 = fdiv double 1.000000e+00, %65
  %67 = load i32, i32* %31, align 4
  %68 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %67
  store double %66, double* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %55
  %70 = load i32, i32* %31, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %31, align 4
  br label %51

; <label>:72:                                     ; preds = %51
  store i32 0, i32* %31, align 4
  br label %73

; <label>:73:                                     ; preds = %132, %72
  %74 = load i32, i32* %31, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %135

; <label>:77:                                     ; preds = %73
  %78 = load double, double* %27, align 8
  %79 = load i32, i32* %31, align 4
  %80 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %78, %81
  %83 = load i32, i32* %31, align 4
  %84 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = load double*, double** %15, align 4
  %88 = load i32, i32* %31, align 4
  %89 = getelementptr inbounds double, double* %87, i32 %88
  store double %86, double* %89, align 8
  store i32 0, i32* %32, align 4
  br label %90

; <label>:90:                                     ; preds = %107, %77
  %91 = load i32, i32* %32, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

; <label>:94:                                     ; preds = %90
  %95 = load double, double* %28, align 8
  %96 = load double, double* %12, align 8
  %97 = fmul double %95, %96
  %98 = load i32, i32* %31, align 4
  %99 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %98
  %100 = load double, double* %99, align 8
  %101 = fmul double %97, %100
  %102 = load [12 x double]*, [12 x double]** %18, align 4
  %103 = load i32, i32* %31, align 4
  %104 = getelementptr inbounds [12 x double], [12 x double]* %102, i32 %103
  %105 = load i32, i32* %32, align 4
  %106 = getelementptr inbounds [12 x double], [12 x double]* %104, i32 0, i32 %105
  store double %101, double* %106, align 8
  br label %107

; <label>:107:                                    ; preds = %94
  %108 = load i32, i32* %32, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %32, align 4
  br label %90

; <label>:110:                                    ; preds = %90
  %111 = load double*, double** %15, align 4
  %112 = load i32, i32* %31, align 4
  %113 = getelementptr inbounds double, double* %111, i32 %112
  %114 = load double, double* %113, align 8
  %115 = load double, double* %29, align 8
  %116 = fmul double %114, %115
  %117 = load i32, i32* %31, align 4
  %118 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %117
  %119 = load double, double* %118, align 8
  %120 = fmul double %116, %119
  %121 = load i32, i32* %31, align 4
  %122 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %121
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = load [12 x double]*, [12 x double]** %18, align 4
  %126 = load i32, i32* %31, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 %126
  %128 = load i32, i32* %31, align 4
  %129 = getelementptr inbounds [12 x double], [12 x double]* %127, i32 0, i32 %128
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %124
  store double %131, double* %129, align 8
  br label %132

; <label>:132:                                    ; preds = %110
  %133 = load i32, i32* %31, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %31, align 4
  br label %73

; <label>:135:                                    ; preds = %73
  store i32 0, i32* %31, align 4
  br label %136

; <label>:136:                                    ; preds = %150, %135
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %153

; <label>:140:                                    ; preds = %136
  %141 = load [12 x double]*, [12 x double]** %18, align 4
  %142 = load i32, i32* %31, align 4
  %143 = getelementptr inbounds [12 x double], [12 x double]* %141, i32 %142
  %144 = load i32, i32* %31, align 4
  %145 = getelementptr inbounds [12 x double], [12 x double]* %143, i32 0, i32 %144
  %146 = load double, double* %145, align 8
  %147 = fdiv double 1.000000e+00, %146
  %148 = load i32, i32* %31, align 4
  %149 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %148
  store double %147, double* %149, align 8
  br label %150

; <label>:150:                                    ; preds = %140
  %151 = load i32, i32* %31, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %31, align 4
  br label %136

; <label>:153:                                    ; preds = %136
  store i32 0, i32* %31, align 4
  br label %154

; <label>:154:                                    ; preds = %230, %153
  %155 = load i32, i32* %31, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %233

; <label>:158:                                    ; preds = %154
  %159 = load double*, double** %15, align 4
  %160 = load i32, i32* %31, align 4
  %161 = getelementptr inbounds double, double* %159, i32 %160
  %162 = load double, double* %161, align 8
  %163 = load i32, i32* %31, align 4
  %164 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %163
  store double %162, double* %164, align 8
  store i32 0, i32* %32, align 4
  br label %165

; <label>:165:                                    ; preds = %206, %158
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %209

; <label>:169:                                    ; preds = %165
  %170 = load [12 x double]*, [12 x double]** %19, align 4
  %171 = load i32, i32* %31, align 4
  %172 = getelementptr inbounds [12 x double], [12 x double]* %170, i32 %171
  %173 = load i32, i32* %32, align 4
  %174 = getelementptr inbounds [12 x double], [12 x double]* %172, i32 0, i32 %173
  %175 = load double, double* %174, align 8
  %176 = load double, double* %12, align 8
  %177 = fmul double %175, %176
  store double %177, double* %30, align 8
  %178 = load double, double* %30, align 8
  %179 = load double*, double** %14, align 4
  %180 = load i32, i32* %32, align 4
  %181 = getelementptr inbounds double, double* %179, i32 %180
  %182 = load double, double* %181, align 8
  %183 = fmul double %178, %182
  %184 = load i32, i32* %31, align 4
  %185 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %184
  %186 = load double, double* %185, align 8
  %187 = fadd double %186, %183
  store double %187, double* %185, align 8
  %188 = load double, double* %30, align 8
  %189 = fsub double -0.000000e+00, %188
  %190 = load [12 x double]*, [12 x double]** %18, align 4
  %191 = load i32, i32* %31, align 4
  %192 = getelementptr inbounds [12 x double], [12 x double]* %190, i32 %191
  %193 = load i32, i32* %32, align 4
  %194 = getelementptr inbounds [12 x double], [12 x double]* %192, i32 0, i32 %193
  %195 = load double, double* %194, align 8
  %196 = fadd double %189, %195
  %197 = load i32, i32* %31, align 4
  %198 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %197
  %199 = load double, double* %198, align 8
  %200 = fmul double %196, %199
  %201 = load [12 x double]*, [12 x double]** %20, align 4
  %202 = load i32, i32* %31, align 4
  %203 = getelementptr inbounds [12 x double], [12 x double]* %201, i32 %202
  %204 = load i32, i32* %32, align 4
  %205 = getelementptr inbounds [12 x double], [12 x double]* %203, i32 0, i32 %204
  store double %200, double* %205, align 8
  br label %206

; <label>:206:                                    ; preds = %169
  %207 = load i32, i32* %32, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %32, align 4
  br label %165

; <label>:209:                                    ; preds = %165
  %210 = load i32, i32* %31, align 4
  %211 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %210
  %212 = load double, double* %211, align 8
  %213 = load double*, double** %16, align 4
  %214 = load i32, i32* %31, align 4
  %215 = getelementptr inbounds double, double* %213, i32 %214
  %216 = load double, double* %215, align 8
  %217 = fsub double %212, %216
  %218 = load i32, i32* %31, align 4
  %219 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %218
  store double %217, double* %219, align 8
  %220 = load i32, i32* %31, align 4
  %221 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %220
  %222 = load double, double* %221, align 8
  %223 = load i32, i32* %31, align 4
  %224 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %223
  %225 = load double, double* %224, align 8
  %226 = fmul double %222, %225
  %227 = load double*, double** %17, align 4
  %228 = load i32, i32* %31, align 4
  %229 = getelementptr inbounds double, double* %227, i32 %228
  store double %226, double* %229, align 8
  br label %230

; <label>:230:                                    ; preds = %209
  %231 = load i32, i32* %31, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %31, align 4
  br label %154

; <label>:233:                                    ; preds = %154
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
