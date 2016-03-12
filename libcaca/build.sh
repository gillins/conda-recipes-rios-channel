#!/bin/bash

./configure --prefix=$PREFIX \
--enable-java=no \
--enable-python=no \
--enable-shared=yes \
--enable-static=no

make
make install
