#!/bin/bash



# jobs command
# -l -> Shows PID

[1]  18885 Running                 sleep 100 &
[2]  21206 Running                 sleep 100 &
[3]- 22755 Running                 sleep 100 &
[4]+ 25039 Running                 sleep 100 &

# + -> default job? -> job selected if no job number was specified
# - -> next default job? -> job selected when current default finishes processing


# bg -> run default job in the background (if stopped)
# bg 13 -> run job 13 in the background (if stopped)

# fg -> run default job in the foreground (if stopped)
# fg 14-> run job 14 in the foreground (if stopped)
