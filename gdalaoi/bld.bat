
cmake -G "NMake Makefiles" ^
-D GDAL_INCLUDE_DIR=%LIBRARAY_INC% ^
-D GDAL_LIB_PATH=%LIBRARY_LIB% ^
-D GDAL_SRC_PATH=c:\gdal-2.1.1 ^
-D CMAKE_BUILD_TYPE=Release ^
-D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%\lib ^
.
if errorlevel 1 exit 1
nmake
if errorlevel 1 exit 1
nmake install
if errorlevel 1 exit 1

