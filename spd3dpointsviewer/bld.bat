
cmake -G "NMake Makefiles" -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
	-D SPDLIB_IO_INCLUDE_DIR=%LIBRARY_INC% ^
	-D SPDLIB_IO_LIB_PATH=%LIBRARY_LIB% ^
	-D HDF5_INCLUDE_DIR=%LIBRARY_INC% ^
	-D HDF5_LIB_PATH=%LIBRARY_LIB% ^
	-D GDAL_INCLUDE_DIR=%LIBRARY_INC% ^
	-D GDAL_LIB_PATH=%LIBRARY_LIB% ^
	-D BOOST_INCLUDE_DIR=%LIBRARY_INC% ^
	-D BOOST_LIB_PATH=%LIBRARY_LIB% ^
	-D CMAKE_BUILD_TYPE=Release ^
	.

if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
