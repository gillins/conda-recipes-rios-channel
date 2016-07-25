#!/bin/bash

cmake -D GDAL_INCLUDE_DIR=${PREFIX}/include \
-D GDAL_LIB_PATH=${PREFIX}/lib \
-D GDAL_SRC_PATH=~/gdal-2.1.1 \
-D CMAKE_INSTALL_PREFIX=$PREFIX/lib \
.

make
make install

