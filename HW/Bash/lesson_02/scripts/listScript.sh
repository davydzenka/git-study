#!/bin/bash

# Validating input from more than one argument

if [ "$#" -gt 1 ]; then
	echo "Error. More than one argument entered!"
	exit 1
elif [ "$#" -lt 1 ]; then
	echo "Error. No argument entered!"
	exit 1
fi

# checking the number of directories entered

if [ $1 -ge 1 ] && [ $1 -le 32 ]; then
	num=$1
else 
	echo "Error. Enter a number from 1 to 32!"
	exit 1
fi

# Creating a specified number of directories

dir_num=()
string=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

for (( i=0; i<${num}; i++ )); do
	mkdir dir_${string[${i}]}
	dir_num+=$(echo -n "dir_${string[${i}]}, ")
done

echo "Result: ${i} directories established: ${dir_num%??}."
