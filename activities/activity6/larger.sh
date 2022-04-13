#!/bin/bash

#a="4"
#b="f"

read -p "Enter number a: " a
read -p "Enter number b: " b

sign () { echo "$(( $1 < 0 ? -1 : 1 ))"; }

if [[ $a =~ [0-9] ]]
then
	if [[ $b =~ [0-9] ]]
	then
		if [[ a -eq b ]]
		then
		echo "TRUE: a equals b"
		echo "Difference between a and b is 0"
		
		elif [[ a -lt b ]]
		then 
		echo "FALSE: a is less than b"
		diff=$((a-b))

		else [[ a -gt b ]]
		echo "FALSE: a is greater than b"
		diff=$((a-b))

		#else 
		#echo "False: a not equal to b"
	        #diff=$((a-b))
		#echo "Difference between a and b is $(( diff * $(sign "$diff") ))"
		fi
	else 
	echo "b is not a number"
	fi
else "a is not a number"
echo 
fi 
#Find the difference between a and b:
#Need to output the absolute value
#sign () { echo "$(( $1 < 0 ? -1 : 1 ))"; }
#diff=$((a-b))

#echo "Difference between a and #b  is $(( diff * $(sign "$diff") ))" 
