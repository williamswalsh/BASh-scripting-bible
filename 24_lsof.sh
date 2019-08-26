#!/bin/bash


# lsof
# displays info about every file open on the system
# this includes all processes in the background
# and user accounts logged into system


lsof -p <PID> # File descriptors related to a process(PID)
lsof -d <fileDescriptor>
lsof -a       # AND's multiple conditions

$$ # value of current process


# Gets open files related to current PID and related to STDIN, STDOUT & STDERR
lsof -a -p $$ -d 0,1,2
