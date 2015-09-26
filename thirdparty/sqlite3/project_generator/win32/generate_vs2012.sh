set -e

export PROJECT_ROOT=$(cd ../../; pwd)
export PROJECT_IDE_ROOT=${PROJECT_ROOT}/intermediate/project/win32/vs2012
export PROJECT_LIB_PATH=${PROJECT_ROOT}/libs/win32/vs2012
export PROJECT_GENERATE_TARGET="Visual Studio 11 2012"
${HORIZON_BUILD_TOOL_ROOT}/shell/build/win32/generate_target.sh