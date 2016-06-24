#!/bin/bash

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX -D CMAKE_BUILD_TYPE=Release .

make
make install
