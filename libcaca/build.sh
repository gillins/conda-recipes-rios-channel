#!/bin/bash

./configure --prefix=$PREFIX \
--enable-ncurses=$PREFIX \
--enable-java=no \
--enable-python=no \
--enable-ruby=no \
--enable-shared=yes \
--enable-static=no

make
make install
