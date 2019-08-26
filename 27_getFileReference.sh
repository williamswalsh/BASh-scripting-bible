#!/bin/bash


# Useful to get reference to newly created file **
# N.B.
fileRef=$(mktemp -t myTempFile.XXX)
echo "${fileRef}"
