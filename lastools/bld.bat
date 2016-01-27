
REM Supplied VC workspaces don't work for me
nmake -f makefile.vc
if errorlevel 1 exit 1

mkdir %LIBRARY_LIB%
copy laslib.lib %LIBRARY_LIB%
if errorlevel 1 exit 1

mkdir %LIBRARY_BIN%
copy laslib.dll %LIBRARY_BIN%
if errorlevel 1 exit 1

copy *.exe %LIBRARY_BIN%
if errorlevel 1 exit 1

mkdir %LIBRARY_INC%
copy LASlib\inc\*.* %LIBRARY_INC%
if errorlevel 1 exit 1

copy LASzip\src\*.hpp %LIBRARY_INC%
if errorlevel 1 exit 1
