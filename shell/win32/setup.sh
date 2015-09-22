#!/bin/sh
set -e
echo "==============START register HORIZON_SCRIPT_ROOT path======================"
pushd ../../HorizonScript
CMD "/C setx HORIZON_SCRIPT_ROOT %cd%"
popd
echo "==============END register HORIZON_SCRIPT_ROOT path======================"
echo "===============START build and Register BOOST_ROOT path====================="

#check boost folder exist, if not, download from official site

pushd ../../thirdparty/boost_1_59_0
pwd
#CMD "/C bootstrap.bat"
#b2.exe
#b2 variant=release inlining=off debug-symbols=on
CMD "/C setx BOOST_ROOT %cd%" 
popd
echo "===============END build and Register BOOST_ROOT path====================="


#echo "===============START generate win32 project for HorizonCore====================="
#pushd ../../HorizonCore/shell
#./generateWin32.sh
#popd
#echo "===============END generate win32 project for HorizonCore====================="