
IF "%PYLIDAR_TESTDATA%"=="" (
    echo "Set the PYLIDAR_TESTDATA environment variable to location of latest testdata_X.tar.gz"
    echo "from https://github.com/ubarsc/pylidar/wiki/Testdata"
    echo "to run test as part of build"
    exit 0
) ELSE (
    pylidar_test -i "%PYLIDAR_TESTDATA%" -p %TMP%
)
