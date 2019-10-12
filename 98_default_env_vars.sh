#!/bin/bash

echo "\$- Current command line option flags: $-"

sleep 10 &
echo "\$! - PID of most recently exec bg process: $!"

echo "\$0 - Name of command from the command line: $0"
echo "Parent PID - PPID: $PPID"
echo "MACHTYPE: $MACHTYPE"
echo "OSTYPE: $OSTYPE"
echo "HOSTNAME: $HOSTNAME"
echo "HOSTTYPE: $HOSTTYPE"
echo "BASH_SUBSHELL: $BASH_SUBSHELL"
