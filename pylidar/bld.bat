
hg up rdb

REM %VS_MAJOR% is set to 15, but we are actually building with the 14 toolset
REM %vc% seems to be set to the right value.
set MSVC_VER=%vc%0

set "RIVLIB_ROOT=c:\dev\rivlib-2_3_0-x86_64-windows-vc%MSVC_VER%"
set "RIWAVELIB_ROOT=c:\dev\riwavelib_wfm-2_3_0-x86_64-windows-vc%MSVC_VER%"
set "RDBLIB_ROOT=C:\dev\rdblib-2.2.1-x86_64-windows"

if not exist %RIVLIB_ROOT% (set "RIVLIB_ROOT=")
if not exist %RIWAVELIB_ROOT% (set "RIWAVELIB_ROOT=")
if not exist %RDBLIB_ROOT% (set "RDBLIB_ROOT=")

set LASTOOLS_ROOT=%LIBRARY_PREFIX%
set PULSEWAVES_ROOT=%LIBRARY_PREFIX%
set ZLIB_ROOT=%LIBRARY_PREFIX%
set GDAL_HOME=%LIBRARY_PREFIX%

REM use Python entry points instead of our programs in bin
set PYLIDAR_NOCMDLINE=1

%PYTHON% setup.py install
if errorlevel 1 exit 1
