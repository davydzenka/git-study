#!/bin/bash

echo "The file to search must be in the current directory"
echo

# Validating input from more than one file

if [ "$#" -gt 1 ]; then
	echo "Error. More than one file entered!"
	exit 1
elif [ "$#" -lt 1 ]; then
	echo "There is no file to search!"
	exit 1
fi

if [ -f $1 ]; then
  file=$1
  else
	  echo "$1 file not found or invalid file name"
	  exit 1
fi

# Finding the file size and matching a condition based on its size

####### filesize=$(stat -c%s "$file");

filesize=$(wc -c < "$file");

if [ "$filesize" -le "1024" ]; then
	echo "OK"
else
	if [ "$filesize" -ge "1024" ]; then
		echo "FAIL"
	fi
fi


