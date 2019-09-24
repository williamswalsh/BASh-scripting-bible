#!/bin/bash
EMAIL_ADDR="william.walsh@fmail.com"
MAIL=$(which mail)
MSG_FILE=~/msg

# Short msg
echo "This is the body of the email." | $MAIL -s "This is the subject" $EMAIL_ADDR

# Long msg
cat $MSG_FILE | $MAIL -s "This is the subject" $EMAIL_ADDR

