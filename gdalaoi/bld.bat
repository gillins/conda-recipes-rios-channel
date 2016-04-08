
cmake -G "NMake Makefiles" ^
-D GDAL_INCLUDE_DIR=%LIBRARAY_INC% ^
-D GDAL_LIB_PATH=%LIBRARY_LIB% ^
-D GDAL_SRC_PATH=c:\gdal-2.0.2 ^
-D CMAKE_BUILD_TYPE=Release ^
-D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
.
if errorlevel 1 exit 1
nmake
if errorlevel 1 exit 1
nmake install
if errorlevel 1 exit 1

set ACTIVATE_DIR=%PREFIX%\etc\conda\activate.d
set DEACTIVATE_DIR=%PREFIX%\etc\conda\deactivate.d
mkdir %ACTIVATE_DIR%
mkdir %DEACTIVATE_DIR%

copy %RECIPE_DIR%\scripts\activate.bat %ACTIVATE_DIR%\gdalaoi-activate.bat
copy %RECIPE_DIR%\scripts\deactivate.bat %DEACTIVATE_DIR%\gdalaoi-deactivate.bat
