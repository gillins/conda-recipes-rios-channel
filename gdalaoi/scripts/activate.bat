if not defined GDAL_DRIVER_PATH (
  set "GDAL_DRIVER_PATH=%~dp0\..\..\..\Library\gdalplugins"
) else (
  set "GDAL_DRIVER_PATH=%~dp0\..\..\..\Library\gdalplugins;%GDAL_DRIVER_PATH%"
)
