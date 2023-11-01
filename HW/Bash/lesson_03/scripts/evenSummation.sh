#!/bin/bash

# Given an unarranged series of digits provided to the script, 
# the task is to compute and showcase the collective sum of
# numbers that are even.

sum=0
regex='([02468])'
string=$*
IFS=","

for arg in $string; do

     if [[ "$arg" =~ $regex ]]; then
	  sum=$(( $sum + $arg ))
     fi
done

echo "Output: $sum"
