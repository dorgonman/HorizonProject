#!/bin/sh
set -e


#echo "==============START register HORIZON_BUILD_TOOL_ROOT path======================"
pushd HorizonBuildTool >> /dev/null

if [[ "$OSTYPE" == "darwin"* ]] || \
   [[ "$OSTYPE" == "linux-gnu" ]] || \
   [[ "$OSTYPE" == "freebsd"* ]] || \
   [[ "$OSTYPE" == "cygwin" ]]; then
    
	if [[ "${HORIZON_BUILD_TOOL_ROOT}" == "" ]];
	then
		# Append to the end of the file
		echo "export HORIZON_BUILD_TOOL_ROOT=$(pwd)" >> ~/.bash_profile
		# Update shell 
		source ~/.bash_profile
	fi

else
	CMD "/C setx HORIZON_BUILD_TOOL_ROOT %cd%"
fi
popd >> /dev/null

#echo "==============END register HORIZON_BUILD_TOOL_ROOT path======================"



#echo "===============START build and Register BOOST_ROOT path====================="

#check boost folder exist, if not, download from official site

pushd thirdparty/boost_1_59_0 >> /dev/null

if [[ "$OSTYPE" == "darwin"* ]] || \
   [[ "$OSTYPE" == "linux-gnu" ]] || \
   [[ "$OSTYPE" == "freebsd"* ]] || \
   [[ "$OSTYPE" == "cygwin" ]]; then
       
	if [[ "${BOOST_ROOT}" == "" ]];
	then
    	# Append to the end of the file
		echo "export BOOST_ROOT=$(pwd)" >> ~/.bash_profile
		# Update shell 
		source ~/.bash_profile
		
	fi
else
	#b2.exe
	#b2 variant=release inlining=off debug-symbols=on
	CMD "/C setx BOOST_ROOT %cd%"
fi

popd >> /dev/null
#echo "===============END build and Register BOOST_ROOT path====================="

echo "registed HORIZON_BUILD_TOOL_ROOT path:${HORIZON_BUILD_TOOL_ROOT}"
echo "registed BOOST_ROOT path:${BOOST_ROOT}"
