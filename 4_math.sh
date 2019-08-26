#!/bin/bash


numberOfRequests=100	# HTTP GET's
totalTimeRequired=6	# minutes

requestsPerMinute=$[numberOfRequests / totalTimeRequired]
echo "Number of requests served per minute: $requestsPerMinute"


# BASh Calc
# May be useful 
var1=100
var2=9090
var3=$( echo "scale=6; $var1 * $var2" | bc)
echo "The final result is: $var3"