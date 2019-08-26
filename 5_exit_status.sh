#!/bin/bash

# Exit Statuses
# 0       success
# 1       Unknown error
# 2       Misuse of command
# 126     Can't executes command (permission)
# 127     Cmd not found
# 128     Invalid exit argument
# 128+x   Fatal error with linux signal x
# 130     CMD terminated with CTRL+C
# 255     Exit status out of range

echo "hey"
exit 444 ;      # Will return an exit status of 188 = ( 444 - 256 )

# Previous command exit status
# echo $?