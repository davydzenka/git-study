#!/bin/bash

#set -x
#set -v
 
# script that accepts a given text input and computes 
# the occurrences of letters, digits, and specified symbols, 
# excluding any spaces 

# Removing extra spaces.

string=$(echo "$*" | sed 's/ //g')

# Checking the input of arguments.

if [ "$#" -eq 0 ]; then
    echo "Error. No arguments entered!"
    exit 1
fi

# Declaration of variables.

Digits=0
special=0
Alphabets=0

# We carry out calculations for each condition 

Digits=$(echo "$string" | grep -o '[[:digit:]]' | wc -l)
special=$(echo "$string" | grep -o '[*!@#$%^&()_+]' | wc -l)
Alphabets=$(echo "$string" | grep -o '[[:alpha:]]' | wc -l)

# Output of results

echo "Digits: $Digits"
echo "Special Characters: $special"
echo "Alphabets: $Alphabets"


