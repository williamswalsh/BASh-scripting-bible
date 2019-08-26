#!/bin/bash

#Format
* * * * *  command to execute
│ │ │ │ │
│ │ │ │ └─── day of week (0 - 6) (0 to 6 are Sunday to Saturday, or use names; 7 is Sunday, the same as 0)
│ │ │ └──────── month (1 - 12)
│ │ └───────────── day of month (1 - 31)
│ └────────────────── hour (0 - 23)
└─────────────────────── min (0 - 59)

#min hour dayOfMonth month dayOfWeek absolute-file-path > outputFile

# Job run by user which submitted job

# command everyday @ 10:15AM - COFFEE TIME!!!
15 10 * * * /Users/will/repository/BASh/makeCoffee.sh > /Users/will/repository/BASh/coffeeReminder.log

# 16:15 on 1st day of week
15 16 * * 1

# 12:00 on 1st dat of month
00 12 1 * *


crontab -l
# crontab: no crontab for will

# Edit jobs
crontab -e

# Sun = 0
# Sat = 6


Execute on workdays 1AM mon(1)->fri(5)
0 1 * * 1-5 /bin/execute/this/script.sh

Execute every 10 minutes
*/10 * * * * /bin/execute/this/script.sh

Log output to file

*/10 * * * * /bin/execute/this/script.sh >> /var/log/script_output.log 2>&1
