#!/bin/bash

# Source the library file to make the methods available in this file
# NOTE: This file is in the same directory
. ./42_libraryFile.sh


# Source using absolute path
. /$HOME/library/42_libraryFile.sh

# fx call
myVeryUsefulMethod
