#!/bin/bash

# {}  {2} {5,7}
# ERE
# don't use with sed
# sed doesn't fulfil all ERE contracts
echo 'bt' | gawk --re-interval '/be{1}t/{print $0}'  # No match
echo 'bet' | gawk --re-interval '/be{1}t/{print $0}' # Match
echo 'beet' | gawk --re-interval '/be{1}t/{print $0}' # No match


# --re-interval
# Recognize regular expressions intervals

# |
# Pipe
# Logical OR of patterns
# If either pattern matches then perform action
# /pattern1|pattern2/
# not /pattern1/|/pattern2/ WRONG
echo 'I surf using my surfboard on the waves' | gawk '/surf|wave/{print $0}' # Match
echo 'I surf using my surfboard on the waves' | gawk '/surf|wvve/{print $0}' # Match
echo 'I surf using my surfboard on the waves' | gawk '/sirf|wave/{print $0}' # Match
echo 'I surf using my surfboard on the waves' | gawk '/sirf|wvve/{print $0}' # No match


# ()
# Grouping expressions
# Treat characters in group as a standard character
# Matches Sat or Saturday
echo "Sat" | gawk '/Sat(urday)?/{print $0}'

echo "cat" | gawk '/(b|c)a(r|t)/{print $0}'