#!/bin/bash


if [ `uname` == Darwin ]; then
    # From toolchain
    # for Mac OSX
    export CC=clang
    export CXX=clang++
    export MACOSX_VERSION_MIN="10.9"
    export MACOSX_DEPLOYMENT_TARGET="${MACOSX_VERSION_MIN}"
    export CMAKE_OSX_DEPLOYMENT_TARGET="${MACOSX_VERSION_MIN}"
    export CFLAGS="${CFLAGS} -mmacosx-version-min=${MACOSX_VERSION_MIN}"
    export CXXFLAGS="${CXXFLAGS} -mmacosx-version-min=${MACOSX_VERSION_MIN}"
    export CXXFLAGS="${CXXFLAGS} -stdlib=libc++"
    export LDFLAGS="${LDFLAGS} -headerpad_max_install_names"
    export LDFLAGS="${LDFLAGS} -mmacosx-version-min=${MACOSX_VERSION_MIN}"
    export LDFLAGS="${LDFLAGS} -lc++"
    export LINKFLAGS="${LDFLAGS}"
    # needed otherwise linking fails
    export DYLD_FALLBACK_LIBRARY_PATH=$PREFIX/lib
else
    # Boost wants to enable `float128` support on Linux by default.
    # However, we don't install `libquadmath` so it will fail to find
    # the needed headers and fail to compile things. Adding this flag
    # tells Boost not to support `float128` and avoids this search
    # process. As it has confused a few people. We have added it here.
    # The idea to add this flag was inspired by this Boost ticked.
    #
    # https://svn.boost.org/trac/boost/ticket/9240
    #
    export CXXFLAGS="${CXXFLAGS} -DBOOST_MATH_DISABLE_FLOAT128"
    # needed otherwise linking fails
    export LD_LIBRARY_PATH=$PREFIX/lib
fi

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D PYTHON_EXE=$PYTHON \
    -D INSTALL_PYTHON_USING_PREFIX=OFF \
	-D BOOST_INCLUDE_DIR=$PREFIX/include \
	-D BOOST_LIB_PATH=$PREFIX/lib \
	-D GDAL_INCLUDE_DIR=$PREFIX/include \
	-D GDAL_LIB_PATH=$PREFIX/lib \
	-D HDF5_INCLUDE_DIR=$PREFIX/include \
	-D HDF5_LIB_PATH=$PREFIX/lib \
	-D XERCESC_INCLUDE_DIR=$PREFIX/include \
	-D XERCESC_LIB_PATH=$PREFIX/lib \
	-D GSL_INCLUDE_DIR=$PREFIX/include \
	-D GSL_LIB_PATH=$PREFIX/lib \
	-D GEOS_INCLUDE_DIR=$PREFIX/include \
	-D GEOS_LIB_PATH=$PREFIX/lib \
	-D MUPARSER_INCLUDE_DIR=$PREFIX/include \
	-D MUPARSER_LIB_PATH=$PREFIX/lib \
	-D CGAL_INCLUDE_DIR=$PREFIX/include \
	-D CGAL_LIB_PATH=$PREFIX/lib \
	-D GMP_INCLUDE_DIR=$PREFIX/include \
	-D GMP_LIB_PATH=$PREFIX/lib \
	-D MPFR_INCLUDE_DIR=$PREFIX/include \
	-D MPFR_LIB_PATH=$PREFIX/lib \
	-D KEA_INCLUDE_DIR=$PREFIX/include \
	-D KEA_LIB_PATH=$PREFIX/lib \
    -D CMAKE_BUILD_TYPE=Release \
	.

make
make install

cd python_tests/RSGISLibTests
$PYTHON RSGIStests.py --all
