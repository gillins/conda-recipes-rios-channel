
:: Work out MSVC_VER - needed for build process.
:: Currently guess from Python version 
if "%CONDA_PY%" == "27" (
    set MSVC_VER=90
)
if "%CONDA_PY%" == "34" (
    set MSVC_VER=100
) 
if "%CONDA_PY%" == "35" (
    set MSVC_VER=140
) 
if "%CONDA_PY%" == "36" (
    set MSVC_VER=140
) 

IF "%MSVC_VER%"=="" (
    echo "Python version not supported. Please update bld.bat"
    exit 1
)

set "RIVLIB_ROOT=c:\dev\rivlib-2_3_0-x86_64-windows-vc%MSVC_VER%"
set "RIWAVELIB_ROOT=c:\dev\riwavelib_wfm-2_3_0-x86_64-windows-vc%MSVC_VER%"

if not exist %RIVLIB_ROOT% (set "RIVLIB_ROOT=")
if not exist %RIWAVELIB_ROOT% (set "RIWAVELIB_ROOT=")

set LASTOOLS_ROOT=%LIBRARY_PREFIX%
set ZLIB_ROOT=%LIBRARY_PREFIX%

REM use Python entry points instead of our programs in bin
set PYLIDAR_NOCMDLINE=1

%PYTHON% setup.py install
if errorlevel 1 exit 1
