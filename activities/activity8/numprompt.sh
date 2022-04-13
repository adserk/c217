#!/bin/bash

lenarray="${#array[*]}"
array=()
#echo $lenarray

echo "Enter a minimum of 5 numbers and up to 10"
while [ $lenarray -lt 2	]
do
	read -p "Enter a number: " input
	array+=($input)
	lenarray="${#array[*]}"
done

echo "Your numbers are:  ${array[*]}"
#echo $lenarray

echo "Would you like to add more numbers?"
read -p "Type y (Yes) or n (No): " more

if [[ $more == 'y' ]]
then 
	echo "You like more numbers"
	
	while [ $lenarray -lt 10 ]
	do
		read -p "Enter a number: " input2
		array+=($input2)
        	lenarray="${#array[*]}"
	done
echo "Your numbers are now: ${array[*]}"
else
	echo "No more number"
fi

