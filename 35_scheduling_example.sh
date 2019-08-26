#!/bin/bash

# nice command rates the priority of the task

# renice redefines the priority level
renice -n 10 -p <PID>
# Can only renice to lower priority ( a higher number )** ?? I can make it both smaller and larger from 0-20
# Requires sudo for -'ve input


# ** Nice guys finish last **
# -20 Highest priority
# 19 lowest priority

nice -n -18 ./34_scheduling.sh
nice: setpriority: Permission denied

# Highest priority -> Most importance
$> sudo nice -n -18 ./34_scheduling.sh
Password:
Duration: 11328

# Lowest priority -> Lowest importance
$> nice -n 19 ./34_scheduling.sh
Duration: 11636

# Difference in durations
