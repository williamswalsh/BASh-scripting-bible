#!/bin/bash

# Check if messages are allowed for the current user
# mesg
#
# mesg y  # enable
# mesg n  # disable
#
# # Checks if mesg are enabled (+) or disabled (-)
# who -T
#
# # Current user name
# whoami


# Send msg
# write will ttys001
# <MSG><ENTER_KEY>
# <CTRL+D>



# Is user logged on?
# grep -m 1 -> only get first instance
# not the best as it matches with substrings so user "wil" matches for "will"
# changed statement to remove above bug so now it matches the whole word (grep -w)
logged_on=$(who|grep -w -i -m 1 $1|gawk '{print $1}')


if [[ -z $logged_on ]]
then
  echo "$1 isn't logged on to the system."
  echo "Exiting script...."
  exit 1
fi

allowed=$(who -T|grep -w -i -m 1 $1|gawk '{print $2}')

# There are two wills returned with who -t causing issues -> one isn't allowed msging
# if [[ $allowed != "+" ]]
# then
#   echo "$1 isn't allowed to use messaging."
#   echo "You won't be able to send messages to them."
#   echo "Exiting script...."
#   exit 1
# fi


if [[ -z $2 ]]
then
  echo "No message command line parameter typed."
  echo "Exiting script...."
  exit 1
fi

# Change var name as purpose has changed -> maybe rename from start
user_name=$logged_on
unset logged_on

# Get the users teletype id
user_tty=$(who|grep -w -i -m $1|gawk '{print $2}')

# Write message to users teletype -> user could have multiple teletypes -> so you could choose
#         write <USER>     <TELETYPE>
echo $2 | write $user_name $user_tty


