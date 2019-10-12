#!/bin/bash

SMS_RELAY="https://textbelt.com/text"
phone="+353871234624"
msg="Hello world"

SMS_SUCCESS=$(curl -s -X POST $SMS_RELAY \
--data-urlencode phone="$phone" \
--data-urlencode message="$msg" \
-d key=textbelt  | jq -r '.success')

echo "SMS Success:  $SMS_SUCCESS"

# Silent mode
# curl -s
# OR
# curl 2> /dev/null