#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export GDAL_DRIVER_PATH=`echo $GDAL_DRIVER_PATH | sed "s@${DIR}@@"`

