#!/bin/bash

gawk 'BEGIN{
capital["Ireland"]="Kerry"
capital["France"]="Paris"
print capital["Ireland"]

for ( country in capital )
{
  print "i:", country," - v:", capital[country]
}
}'