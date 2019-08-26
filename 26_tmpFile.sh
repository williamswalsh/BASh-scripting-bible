#!/bin/bash

# Creates a file locally
mktemp <myTempFile>

# Creates a file in /tmp directory
mktemp -t <myTempFile>

# Files created in /tmp are auto removed at bootup time

# command can be called multiple times
mktemp myTempFile.XXX
# creates myTempFile.12e

mktemp <myTempFile>.XXX
# creates myTempFile.jhp

# Creates a unique file each time (in namespace XXX 000-999aaa-zzzAAA-ZZZ)

mktemp -d myDirectory
# Creates a temp directory
