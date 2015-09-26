#!/bin/bash

# Define location of nsL.jar
NSL_JAR=

if [ -z $NSL_JAR ]; then
    echo "nsL.jar not defined in build script"
elif [ -f $NSL_JAR ]; then
    eval java -jar $NSL_JAR $@
    exit 0
else
    echo "'$NSL_JAR' not found"
fi

### Wine fallback (via https://gist.github.com/derekstavis/8288379)
echo
echo "Trying to use Wine fallback"

command -v wine >/dev/null 2>&1 || { 
    echo >&2 "Error: Wine not found"
    exit 127
}

# Get Program Files path via Wine command prompt
PROGRAMS_WIN=$(wine cmd /c 'echo %PROGRAMFILES%' 2>/dev/null)

# Translate windows path to absolute unix path
PROGRAMS_UNIX=$(winepath -u "${PROGRAMS_WIN}" 2>/dev/null)

# Get NSIS path
NSIS=$(printf %q "${PROGRAMS_UNIX%?}/NSIS")

eval java -jar "$NSIS/NSL/nsL.jar" $@