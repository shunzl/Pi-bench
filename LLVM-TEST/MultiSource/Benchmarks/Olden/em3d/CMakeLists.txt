set(PROG em3d)
list(APPEND CPPFLAGS -DTORONTO)
if(DEFINED SMALL_PROBLEM_SIZE)
  set(RUN_OPTIONS 256 250 35)
else()
  set(RUN_OPTIONS 1024 1000 125)
endif()
llvm_multisource()
