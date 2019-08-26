#!/bin/bash

# cat <string_from_STDIN>


# Redirecting a file to a command
# Command normally takes its input from STDIN
# cat < <FILENAME>




# Run command
# . ->  real file -> Produces output
# fakeFile -> not real file -> Errors out
ls -lAhrt  . fakeFile 1> outputFile 2> errorFile
# 1> redirects data from command to file
# 2> redirects erros from command to file


ls -lAhrt  . fakeFile &> combinedDataAndErrorFile
# &> redirects both data & errors (the output) to a filename
# Errors given higher priority than data - therefore all errors displayed first before data

# ls: fakeFile: No such file or directory
# .:
# total 148
# -rw-r--r--  1 will  staff    16B  5 Jun 08:13 fileToLinkTo
# lrwxr-xr-x  1 will  staff    12B  5 Jun 08:15 symbolicLinkName -> fileToLinkTo
# -rw-r--r--  2 will  staff    16B  5 Jun 08:25 hardLink


# Running scripts
./test.sh 2> errorFile


# permanently redirecting output to file
# for script duration
exec 1> output.log
exec 2> error.log

# Switching back to the default isn't as simple
