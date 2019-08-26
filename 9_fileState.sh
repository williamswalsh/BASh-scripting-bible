#!/bin/bash

# -e        if file exists
# -f        if file exists AND is a file
# -d        if file exists AND is a dir
# -r        if file exists AND is readable
# -s        if file exists AND isn't empty
# -w        if file exists AND is writeable
# -x        if file exists AND is executable
# -O        if file exists AND is owned by the current user
# -G        if file exists AND the default group os the same as the current user


# fileA -nt fileB       if fileA is newer than fileB
# fileA -ot fileB       if fileA is older than fileB