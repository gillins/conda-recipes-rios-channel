#!/bin/bash

cmake -D GDAL_INCLUDE_DIR=${PREFIX}/include \
-D GDAL_LIB_PATH=${PREFIX}/lib \
-D GDAL_SRC_PATH=~/gdal-2.0.2 \
-D CMAKE_INSTALL_PREFIX=$PREFIX \
.

make
make install

# Make sure GDAL_DATA and set and still present in the package
ACTIVATE_DIR=$PREFIX/etc/conda/activate.d
DEACTIVATE_DIR=$PREFIX/etc/conda/deactivate.d
mkdir -p $ACTIVATE_DIR
mkdir -p $DEACTIVATE_DIR

cp $RECIPE_DIR/scripts/activate.sh $ACTIVATE_DIR/gdalaoi-activate.sh
cp $RECIPE_DIR/scripts/deactivate.sh $DEACTIVATE_DIR/gdalaoi-deactivate.sh

