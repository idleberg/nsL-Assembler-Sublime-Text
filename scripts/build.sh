#!/bin/bash

# Define location of nsL.jar
NSL_JAR=

if [ -z $NSL_JAR ]; then
    echo "nsL.jar not defined in build script"
elif [ -f $NSL_JAR ]; then
    eval java -jar $NSL_JAR /nomake $@
    exit 0
else
    echo "'$NSL_JAR' not found"
fi