#!/bin/bash

# Make the 3rd file descriptor point to the file
exec 3> customFileDescriptor


echo "After adding file descriptor" >&3
# Remove the file reference from the file descriptor
exec 3>&-


echo "After removing file descriptor" >&3
# Causes error - "Bad file descriptor"
