
cmake -G "NMake Makefiles" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D GDAL_INCLUDE_DIR=%LIBRARY_INC% ^
      -D GDAL_LIB_PATH=%LIBRARY_LIB% ^
      -D LIBCACA_INCLUDE_DIR=%LIBRARY_INC% ^
      -D LIBCACA_LIB_PATH=%LIBRARY_LIB% ^
      .
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1


