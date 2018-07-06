#!/bin/bash

# Save current working directory
PWD=`pwd`
pushd $PWD

echo '-------- Build C++ (G++) ------------------------'

# Figure out location of this script. Don't assume absolute paths because paths can change between pipeline host and dev box.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd  $DIR
echo  "value of dir is " $DIR

echo "Building hello world sample in ..."
pwd
echo  "contents of the  build dir"
ls

# Invoke G++ to compile the sample.
g++ -v helloworld.cpp -o HelloWorld &> build.log

# Save the exit code from G++
EX=$?

# Check exit code from G++ and exit with it to ensure build fails
if [ "$EX" -ne "0" ]; then
    popd
    echo Failed to build hello world sample
fi

# Exit with explicit 0 exit code to make sure build passes
exit $EX
