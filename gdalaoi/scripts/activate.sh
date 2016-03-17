#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ -z "$GDAL_DRIVER_PATH" ]]; then
  export GDAL_DRIVER_PATH="${DIR}/../../../gdalplugins"
else
  export GDAL_DRIVER_PATH="${DIR}/../../../gdalplugins":$GDAL_DRIVER_PATH
fi
