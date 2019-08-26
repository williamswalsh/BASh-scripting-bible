#!/bin/bash
# Good way to process c.l. params

while getopts v:h:w: option
do
    case "${option}" in
        v)  echo "Found volume switch, with value $OPTARG" ;;
        h)  echo "Found height switch, with value $OPTARG" ;;
        w)  echo "Found width switch, with value $OPTARG" ;;
        *)  echo "Unknown switch, with value $OPTARG" ;;
    esac
done

shift $[ $OPTIND - 1 ]

echo
count=1

for param in "$@"
do
    echo "Param $count: $param"
    count=$[ $count + 1 ]
done


# count=$ - works
# count = $ - doesn't work

