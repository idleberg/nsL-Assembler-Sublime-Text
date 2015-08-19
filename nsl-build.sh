#!/bin/bash

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