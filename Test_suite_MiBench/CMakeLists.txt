llvm_add_subdirectories(automotive-basicmath automotive-bitcount automotive-susan consumer-jpeg consumer-typeset network-dijkstra network-patricia security-rijndael security-sha telecomm-CRC32 telecomm-FFT telecomm-gsm)
if(NOT "${ARCH}" STREQUAL "XCore")
  llvm_add_subdirectories(consumer-lame)
endif()
if(NOT TEST_SUITE_BENCHMARKING_ONLY)
  llvm_add_subdirectories(office-stringsearch security-blowfish telecomm-adpcm)
  if((NOT "${ARCH}" STREQUAL "XCore") AND (NOT "${ARCH}" STREQUAL "ARM"))
    llvm_add_subdirectories(office-ispell)
  endif()
endif()
