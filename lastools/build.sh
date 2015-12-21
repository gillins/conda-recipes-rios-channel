#!/bin/bash

make

mkdir -p $PREFIX/lib
cp LASlib/lib/liblas.so $PREFIX/lib
mkdir -p $PREFIX/include
cp LASlib/inc/* $PREFIX/include
cp LASzip/src/*.hpp $PREFIX/include
mkdir -p $PREFIX/bin
find src -executable -type f -exec cp {} $PREFIX/bin \;
