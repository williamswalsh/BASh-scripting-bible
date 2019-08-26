#!/bin/bash

# Setting error and output fileDescriptors to specific local files
# exec 1>> output.log
# exec 2>> error.log
# exec &>> outAndError.log

trap "echo 'Stop  me!'" SIGHUP
trap "echo 'Stop interrupting me!'" SIGINT
trap "echo 'Stop quiting me!'" SIGQUIT
trap "echo 'Stop killing me!'" SIGKILL   # kill -9 <PID>
trap "echo 'Stop terminating me!'" SIGTERM
trap "echo 'Stop stopping me!'" SIGSTOP
trap "echo 'Stop stopping/pausing me!'" SIGTSTP
trap "echo 'Stop continuing me!'" SIGCONT

count=0

while [[ $count -lt 100 ]]
do
  # echo "Loop #${count}"
  sleep 1
  echo "Data"
  ls /fakeDir/errorCausing
  count=$[ $count + 1 ]
done

# Capture script exit -> performs task -> good for closing down tasks
# trap "echo 'Exiting script'" EXIT

trap "cleanup" EXIT

cleanup(){
  echo 'Exiting script';
  echo 'Performing script cleanup';
}


removeATrap(){
  trap -- SIGINT
  # OR
  trap - SIGINT
}
