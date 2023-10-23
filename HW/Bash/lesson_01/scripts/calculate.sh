#!/bin/bash

#Assigning Values to  X and Y Variables

x=$1
y=$2

#Results header
echo "Expected Output:"

#Sum of the two numbers.

Sum=$((x+y)) 
echo "Sum: $Sum"

#Product of the two numbers.

Product=$((x*y))
echo "Product: $Product"


#Quotient when the first number is divided by the second.

let "Quotient=x/y"
echo "Quotient: $Quotient"

#Difference between the first and the second number.

Difference=`expr $x - $y`
echo "Difference: $Difference"


