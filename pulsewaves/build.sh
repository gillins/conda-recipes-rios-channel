#!/bin/bash

cp $RECIPE_DIR/CMakeLists.txt .

mkdir build
cd build

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX -D CMAKE_BUILD_TYPE=Release ..

make
make install
