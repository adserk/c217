#!/bin/bash

read -p "Enter a number a = " a
while [[ ! "$a" =~ ^[0-9]+$ ]]
do
	echo "Not a number! Try again."
        read -p "Enter a number a = " a
done		

read -p "Enter a number b = : " b
while [[ ! "$b" =~ ^[0-9]+$ ]]
do
        echo "Not a number! Try again."
        read -p "Enter a number b = " b
done


#Need to output the absolute value to find the difference between a and b
sign () { echo "$(( $1 < 0 ? -1 : 1 ))"; }

if [[ $a =~ [0-9] ]]
then
	if [[ $b =~ [0-9] ]]
	then
		if [[ a -eq b ]]
		then
		echo "FALSE: a equals b"
		echo "Difference between a and b is 0"
		
		elif [[ a -lt b ]]
		then 
		echo "FALSE: a is less than b"
		diff=$((a-b))
		echo "Difference between a and b is $(( diff * $(sign "$diff") ))"

		else [[ a -gt b ]]
		echo "TRUE: a is greater than b"
		diff=$((a-b))
		echo "Difference between a and b is $(( diff * $(sign "$diff") ))"

		fi
	else 
	echo "b is not a number"
	fi
else "a is not a number"
echo 
fi 

