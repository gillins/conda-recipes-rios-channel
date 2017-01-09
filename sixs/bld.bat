
%LIBRARY_BIN%\cmake -G "MinGW Makefiles" -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -D CMAKE_BUILD_TYPE=Release ^
    .
if errorlevel 1 exit 1

mingw32-make 
if errorlevel 1 exit 1

mingw32-make install
if errorlevel 1 exit 1
