set(PROG Expansion-dbl)
list(APPEND LDFLAGS -lm)
list(APPEND CFLAGS -std=gnu99)
set(RUN_OPTIONS 4160 14)
if(ARCH STREQUAL "XCore")
  set(RUNTIMELIMIT 7200)
endif()
llvm_multisource()
