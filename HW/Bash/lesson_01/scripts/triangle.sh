#!/bin/bash

#Defining the input of a number from a range

if [ "$1" -ge 1 ] && [ "$1" -le 100 ]; then
	X=$1
else
	echo "Enter X number ranging from 1 to 100!"
	exit 1
fi

if [ "$2" -ge 1 ] && [ "$2" -le 100 ]; then
        Y=$2
else
        echo "Enter Y number ranging from 1 to 100!"
	exit 1
fi

if [ "$3" -ge 1 ] && [ "$3" -le 100 ]; then
        Z=$3
else
        echo "Enter Z number ranging from 1 to 100!"
	exit 1
fi
set -e

#Checking if a triangle is equilateral

if [ "$X" -eq "$Y" ] && [ "$X" -eq "$Z" ]; then
	echo "This triangle is EQUILATERAL!"
else
	if [ "$X" -eq "$Y" ] || [ "$X" -eq "$Z" ] || [ "$Y" -eq "$Z" ]; then
		echo "This triangle is ISOSCELES!"
	else
		if [ $X -ne $Y ] && [ $X -ne $Z ] && [ $Y -ne $Z ]; then
			echo "This triangle is SCALENE!"
		fi
	fi
fi
