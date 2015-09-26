set -e




export PROJECT_PLATFORM=win32
export PROJECT_ROOT=$(cd ../../src; pwd)
export PROJECT_GENERATE_TARGET="Visual Studio 11 2012"
export PROJECT_CONFIG=Release

IDE_VER=vs2012
export PROJECT_IDE_ROOT=${PROJECT_ROOT}/intermediate/project/${PROJECT_PLATFORM}/${IDE_VER}
export PROJECT_LIB_PATH=${PROJECT_ROOT}/../libs/${PROJECT_PLATFORM}/${IDE_VER}

#C:\Users\dorgonman\Documents\workspace\sgbf-autobuild\sgbf-client\libGumiFramework\cpp\external\soci\src\intermediate\sqlite3\src
SQLITE3_INCLUDE_DIR=$(cd "../../../sqlite3/src/"; pwd)
SQLITE3_LIBRARIES=$(cd "../../../sqlite3/libs/win32/${IDE_VER}/${PROJECT_CONFIG}"; pwd)
export PROJECT_GENERATE_EXTRA_FLAG="-DWITH_SQLITE3=ON -DSOCI_EMPTY=OFF -DWITH_MYSQL=OFF -DWITH_ORACLE=OFF -DWITH_DB2=OFF -DWITH_FIREBIRD=OFF -DWITH_POSTGRESQL=OFF -DSOCI_TESTS=OFF \
									-DWITH_ODBC=OFF -DSQLITE3_INCLUDE_DIR=${SQLITE3_INCLUDE_DIR} -DSQLITE3_LIBRARY=${SQLITE3_LIBRARIES}"
export PROJECT_BUILD_EXTRA_FLAG="--target soci_core_static"
${HORIZON_BUILD_TOOL_ROOT}/shell/build/win32/generate_target.sh