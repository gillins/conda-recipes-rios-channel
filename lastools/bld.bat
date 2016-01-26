
REM Supplied VC workspaces don't work for me
REM Martin doesn't have EXPORTS so can't (easily) make this into a DLL
nmake -f makefile.vc
if errorlevel 1 exit 1

mkdir %LIBRARY_LIB%
copy laslib.lib %LIBRARY_LIB%
mkdir %LIBRARY_BIN%
copy *.exe %LIBRARY_BIN%
mkdir %LIBRARY_INC%
copy LASlib\inc\*.* %LIBRARY_INC%
copy LASzip\src\*.hpp %LIBRARY_INC%
