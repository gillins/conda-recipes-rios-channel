#!/bin/bash

make PREFIX=$PREFIX CC=gcc OPTS="-I${PREFIX}/include" build
make PREFIX=$PREFIX CC=gcc install


