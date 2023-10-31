#!/bin/bash

# Validating input from more than one argument

if [ "$#" -gt 1 ]; then
	echo "Error. More than one argument entered!"
	exit 1
elif [ "$#" -lt 1 ]; then
	echo "Error. No argument entered!"
	exit 1
fi

# Checking the temperature scale entry by register

string=$1

temp_CK=$(echo ${string:${#string}-1:1})

if [ $temp_CK == k ] || [ $temp_CK == c ]; then
	temp_CK=$(echo ${temp_CK} | tr 'a-z' 'A-Z')
fi

# Checking whether the temperature scale has been entered.

if [ $temp_CK == K ] || [ $temp_CK == C ]; then
	echo "" > /dev/null
else
	echo "Error. The temperature scale is not indicated!"
	exit 1
fi

# Checking whether the value is a number.

num=`expr ${#string} - 1`

temp_num=$(echo ${string:0:${num}})

if [ -z ${temp_num} ]; then
	echo "Error. Temperature value not entered. Enter an integer!"
	exit 1
fi

REGEX="^[+-]?[0-9]+?$"
if [[ ! $temp_num =~ $REGEX ]]; then
       	echo "Error. The entered temperature value is incorrect. Enter an integer!" >&2
	exit 1
fi

# Checking the condition for indicating a temperature 
# below absolute zero and converting the value

zero=273

if [ $temp_CK == K ]; then
        if [ $temp_num -ge 0 ]; then
		K=`expr $temp_num - ${zero}`
		echo "Temperature in Celsius: ${K}C"
	else
		echo "Error. The temperature is not entered or it is less than absolute zero 0K!"
		exit 1
	fi
fi

if [ $temp_CK == C ]; then
        if [ $temp_num -ge -273 ]; then
       		C=`expr $temp_num + $zero`
       		echo "Temperature in Kelvin: ${C}K"
	else
		echo "Error. The temperature was not entered or it is less than absolute zero -273C!"
		exit 1
	fi
fi
