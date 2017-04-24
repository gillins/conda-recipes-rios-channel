cmake_minimum_required (VERSION 3.4)
project (PULSEWAVES)

set(PULSEWAVES_SRC src/pulsewaves_dll.cpp 
    src/pulseheader.cpp 
    src/pulsevlrs.cpp 
    src/pulsedescriptor.cpp 
    src/pulsepulse.cpp 
    src/waveswaves.cpp 
    src/pulsereader.cpp 
    src/pulsewriter.cpp 
    src/pulsereadermerged.cpp 
    src/pulsereader_pls.cpp 
    src/pulsewriter_pls.cpp 
    src/pulsewriter_txt.cpp 
    src/pulsereadwaves_raw.cpp 
    src/pulsereadwaves_compressed.cpp 
    src/pulsewritewaves_raw.cpp 
    src/pulsewritewaves_compressed.cpp 
    src/pulseutility.cpp 
    src/pulsefilter.cpp 
    src/pulsetransform.cpp 
    src/pulsezip.cpp 
    src/pulsereadpulse.cpp 
    src/pulsereaditemcompressed_v1.cpp 
    src/pulsewritepulse.cpp 
    src/pulsewriteitemcompressed_v1.cpp 
    src/integercompressor.cpp 
    src/arithmeticdecoder.cpp 
    src/arithmeticencoder.cpp 
    src/arithmeticmodel.cpp)

add_library (pulsewaves SHARED ${PULSEWAVES_SRC})
target_include_directories (pulsewaves PUBLIC inc dll)
set_target_properties(pulsewaves PROPERTIES WINDOWS_EXPORT_ALL_SYMBOLS TRUE)

add_definitions(-D_CRT_SECURE_NO_WARNINGS)
add_definitions(-DNDEBUG)
add_definitions(-DPULSEWAVES_DLL)
if( NOT MSVC)
   add_definitions(-DUNORDERED)
endif()

install(TARGETS pulsewaves
   RUNTIME DESTINATION bin
   LIBRARY DESTINATION lib
   ARCHIVE DESTINATION lib)

FILE(GLOB PULSEWAVES_INC inc/*.hpp)
install(FILES ${PULSEWAVES_INC} DESTINATION include)

