#!/bin/bash

# File descriptors from 0-2 are system descriptors
# File descriptors from 3-8 are customizeable descriptors
# Bash script can handle a total of 9 file descriptors (0-8)


exec 3> personalRedirectionFile

echo "This goes to stdout"
echo "This goes to file descriptor 3" >&3
echo "This goes to stdout"
