set(PROG Obsequi)
list(APPEND CPPFLAGS -DCOUNTBITS16 -DLASTBIT16 -DCOUNTMOVES_TABLE)
list(APPEND CPPFLAGS -DTWO_STAGE_GENERATION)
if(DEFINED SMALL_PROBLEM_SIZE)
  list(APPEND CPPFLAGS -DHASHCODEBITS=15)
else()
  list(APPEND CPPFLAGS -DHASHCODEBITS=23)
endif()
if(NOT "${ARCH}" STREQUAL "PowerPC")
  list(APPEND LDFLAGS -lsupc++)
endif()
set(STDIN_FILENAME ${CMAKE_CURRENT_SOURCE_DIR}/input)
llvm_multisource()
