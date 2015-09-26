set -e



export PROJECT_ROOT=$(cd ../../; pwd)
export PROJECT_GENERATE_TARGET="Visual Studio 11 2012"
export PROJECT_CONFIG=Release
export PROJECT_IDE_ROOT=${PROJECT_ROOT}/intermediate/project/win32/vs2012
export PROJECT_LIB_PATH=${PROJECT_ROOT}/libs/win32/vs2012
export PROJECT_GENERATE_EXTRA_FLAG=""
export PROJECT_BUILD_EXTRA_FLAG=""
${HORIZON_BUILD_TOOL_ROOT}/shell/build/win32/build_and_generate_target.sh
