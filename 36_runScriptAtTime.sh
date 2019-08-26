#!/bin/bash


# 2 ways to run script at predefined time
# 1)
# at command
# atd at daemon
# Start the demon!!!!!!!
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist

# Directory
.
├── at.deny
├── cron.deny
├── jobs
├── spool
│   ├── a00002018d0f9d
│   └── a00003018d0fa6
├── tabs [error opening dir]
└── tmp [error opening dir]

# started at boot time
# can submit jobs to at queue using the at command
# at daemon runs in the background
# checks queue every minute
# Checks jobs
# if job to be run now -> runs jobs now

# at -f <FILENAME> <TIME>
# at -f 34_scheduling.sh 13:40

# time
# 13:40
# 01:41PM
# now
# midnight
# noon
# teatime

# now + 23 minutes
# 10:15PM tomorrow
# 10:34 + 3 days


# 26 different queues to select
# a queue has the highest priority
at -q a|b

# -M
# surpress any output from the commands run using the at daemon

# list pending jobs
atq

# Remove pending jobs
atrm <JOB_NUMBER>
