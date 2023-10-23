#!/bin/bash

echo "The file to search must be in the current directory"

#Assigning the argument the name of the file to search

file=$1

#Finding the file size and matching a condition based on its size

filesize=$(stat -c%s "$file");
if [ "$filesize" -le "1024" ]; then
	echo "OK"
else
	if [ "$filesize" -ge "1024" ]; then
		echo "FAIL"
	fi
fi


