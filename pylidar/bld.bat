
set MSVC_VER=%VS_MAJOR%0

set "RIVLIB_ROOT=c:\dev\rivlib-2_3_0-x86_64-windows-vc%MSVC_VER%"
set "RIWAVELIB_ROOT=c:\dev\riwavelib_wfm-2_3_0-x86_64-windows-vc%MSVC_VER%"

if not exist %RIVLIB_ROOT% (set "RIVLIB_ROOT=")
if not exist %RIWAVELIB_ROOT% (set "RIWAVELIB_ROOT=")

set LASTOOLS_ROOT=%LIBRARY_PREFIX%
set PULSEWAVES_ROOT=%LIBRARY_PREFIX%
set ZLIB_ROOT=%LIBRARY_PREFIX%
set GDAL_HOME=%LIBRARY_PREFIX%

REM use Python entry points instead of our programs in bin
set PYLIDAR_NOCMDLINE=1

%PYTHON% setup.py install
if errorlevel 1 exit 1
