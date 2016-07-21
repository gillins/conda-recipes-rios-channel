#!/bin/bash

# FIXME: This is a hack to make sure the environment is activated.
# The reason this is required is due to the conda-build issue
# mentioned below.
#
# https://github.com/conda/conda-build/issues/910
#
source activate "${CONDA_DEFAULT_ENV}"

# Test to see if the Riegl libs are installed under the users
# home directory and export the appropriate env vars if so.
RIVLIB_ROOT=~/rivlib-2_3_0-x86_64-linux-gcc44
RIWAVELIB_ROOT=~/riwavelib_wfm-2_3_0-x86_64-linux-gcc44

if [ -d "$RIVLIB_ROOT" ]; then
    export RIVLIB_ROOT
    # needed on older versions of g++
    export PYLIDAR_CXX_FLAGS="-std=c++0x"
fi
if [ -d "$RIWAVELIB_ROOT" ]; then
    export RIWAVELIB_ROOT
fi

# this should always be installed - part of the prereqs
export LASTOOLS_ROOT=$PREFIX

# this should always be installed - part of the prereqs
export ZLIB_ROOT=$PREFIX

# use Python entry points instead of our programs in bin
export PYLIDAR_NOCMDLINE=1

$PYTHON setup.py install --prefix=$PREFIX
