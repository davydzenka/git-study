#!/bin/bash

# Validating input from more than one argument

if [ "$#" -gt 1 ]; then
	echo "Error. More than one argument entered!"
	exit 1
elif [ "$#" -lt 1 ]; then
	echo "Error. No argument entered!"
	exit 1
fi

# reversed version of the input string

copy=$1

len=${#copy}
for((i=$len-1;i>=0;i--)); do 
	rev=$(echo -n "$rev${copy:$i:1}")
done

echo "Output: $(echo -n "$rev" | tr 'a-zA-Z' 'A-Za-z')"
