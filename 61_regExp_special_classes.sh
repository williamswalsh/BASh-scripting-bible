#!/bin/bash

# [[:upper:]] -> A-Z
# [[:lower:]] -> a-z
# [[:alpha:]] -> A-Za-z
# [[:digit:]] -> 0-9
# [[:alnum:]] -> A-Za-z0-9
# [[:blank:]] -> Space or Tab
# [[:print:]] -> Any printable character -> ! \t , \n ...
# [[:punct:]] -> Punctuation character -> . , ? , ! , , , ; , : , dash, hyphen, () , [] , {} , ' apostrophe, " quotation marks, and ... ellipsis.
# [[:space:]] -> Tab, NL, FF, VT, CR

# asterix
# previous character must appear zero or more times ( >=0 )
# British english vs american english differences can be handled
echo "I am getting a colour TV." | sed -n '/colou*r/p' # u -> 0 or more times
echo "I am getting a color TV." | sed -n '/colou*r/p'

# ?
# Don't use ? special character in UNIX sed
# It isn't enabled by default
# It is a interpreted as a standard character
echo "I? am getting a color TV." | sed -n '/I?/p'

# No output
echo "I am getting a color TV." | gawk '/?/{print $0}'

# Character class -> zero or one time(s)
gawk '/[ae]?/{print $0}'

# Outputs beat
echo 'beat' | gawk '/[ae]?/{print $0}'
# No Output
# too many characters in the charact class matching 2 ( 2 > 0 or 1)
echo 'beat' | gawk '/[ae]?/{print $0}'


# +
# e character 1 or more times
# At least once
echo 'e' | gawk '/e+/{print $0}'            # Match
echo 'beetroot' | gawk '/e+/{print $0}'     # Match
echo 'carrot' | gawk '/e+/{print $0}'       # No match

