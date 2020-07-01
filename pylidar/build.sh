#!/bin/bash

# Test to see if the Riegl libs are installed under /opt
# and export the appropriate env vars if so.
RIVLIB_ROOT=/opt/riegl/rivlib/rivlib-2_5_6-x86_64-linux-gcc55
RIWAVELIB_ROOT=/opt/riegl/riwavelib/riwavelib_wfm-2_5_7-x86_64-linux-gcc55
RDBLIB_ROOT=/opt/riegl/rdblib/rdblib-2.2.1-x86_64-linux

if [ -d "$RIVLIB_ROOT" ]; then
    export RIVLIB_ROOT
fi
if [ -d "$RIWAVELIB_ROOT" ]; then
    export RIWAVELIB_ROOT
fi
if [ -d "$RDBLIB_ROOT" ]; then
    export RDBLIB_ROOT
fi

# this should always be installed - part of the prereqs
export LASTOOLS_ROOT=$PREFIX

# this should always be installed - part of the prereqs
export PULSEWAVES_ROOT=$PREFIX

# this should always be installed - part of the prereqs
export ZLIB_ROOT=$PREFIX

# use Python entry points instead of our programs in bin
export PYLIDAR_NOCMDLINE=1

$PYTHON setup.py install
