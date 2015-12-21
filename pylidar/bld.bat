
REM todo: check for different versions of VC
set "RIVLIB_ROOT=c:\dev\rivlib-2_1_1-x86_64-windows-vc100"
set "RIWAVELIB_ROOT=c:\dev\riwavelib_wfm-2_0_1-x86_64-windows-vc100"

if not exist %RIVLIB_ROOT% (set "RIVLIB_ROOT=")
if not exist %RIWAVELIB_ROOT% (set "RIWAVELIB_ROOT=")

%PYTHON% setup.py install
if errorlevel 1 exit 1
