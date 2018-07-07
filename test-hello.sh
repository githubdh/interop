#!/bin/bash 
echo "Starting tests - run HelloWorld from Parent Build Artifacts"
# execute test
$(System.ArtifactsDirectory)/drop/linux/outputs/build/HelloWorld
# read the result from test/result and return code so that build succeeds or fails
echo "Reading results of test"
