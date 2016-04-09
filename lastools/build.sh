#!/bin/bash

make

mkdir -p $PREFIX/lib
cp LASlib/lib/liblas.so $PREFIX/lib
mkdir -p $PREFIX/include
cp LASlib/inc/* $PREFIX/include
cp LASzip/src/*.hpp $PREFIX/include
mkdir -p $PREFIX/bin
if [ `uname` == Darwin ]; then
    # -executable flag isn't available on find for OS X so
    # check for user execute.
    find src -perm +u=x -type f -exec cp {} $PREFIX/bin \;
else
    find src -executable -type f -exec cp {} $PREFIX/bin \;
fi

