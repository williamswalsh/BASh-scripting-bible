#!/bin/bash


ps -p <PID> -o pid, ppid, ni, cmd
# ni -> nice rating

# -> SIGINT
# CTRL + c
# Terminates a process


# -> SIGSTP
# CTRL + z
# Stops or pauses a process

# -> SIGCONT
# Continues a stopped process


# Job number
# [<JOB_NUMBER>] <PID>

# Signals
1 - SIGHUP  # kill cmd -> terminates
2 - SIGINT
3 - SIGQUIT
9 - SIGKILL   # kill -9 <PID>
15 - SIGTERM
17 - SIGSTOP
18 - SIGSTP
19 - SIGCONT



# ps States
S+          running
T           interrupted -> CTRL + Z
-           CTRL + C terminated process
