set(PROG enc-pc1)
if(DEFINED LARGE_PROBLEM_SIZE)
  set(RUN_OPTIONS 20000000)
else()
  if(DEFINED SMALL_PROBLEM_SIZE)
    set(RUN_OPTIONS 1000000)
  else()
    set(RUN_OPTIONS 5000000)
  endif()
endif()
llvm_multisource()
