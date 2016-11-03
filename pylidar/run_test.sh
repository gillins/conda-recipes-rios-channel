#!/bin/sh

if [ "x$PYLIDAR_TESTDATA" = "x" ]; then 
    echo "Set \$PYLIDAR_TESTDATA to location of latest testdata_X.tar.gz"
    echo "from https://bitbucket.org/chchrsc/pylidar/downloads"
    echo "to run test as part of build"
    exit 0
fi

pylidar_test -i $PYLIDAR_TESTDATA -p /tmp

