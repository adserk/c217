#!/bin/bash

lenarray="${#array[*]}"
array=()

echo "Enter a minimum of 5 numbers and up to 10"
while [ $lenarray -lt 5	]
do
	read -p "Enter a number: " input
	#Checks if the input is a number before executing the next line
	while [[ ! "$input" =~ ^[0-9]+$ ]]
	do 
		echo "Not a number! Try again."
		read -p "Enter a number: " input
	done	

	array+=($input)
	lenarray="${#array[*]}"
done

echo "Your numbers are:  ${array[*]}"

echo "Would you like to add more numbers?"
read -p "Type y (Yes) or n (No): " more

if [[ $more == 'y' ]]
then 
	echo "You like more numbers"
	
	while [ $lenarray -lt 10 ]
	do
		read -p "Enter a number: " input2
		
		#Checks if the input is a number before executing the next line
        	while [[ ! "$input2" =~ ^[0-9]+$ ]]
        	do
                echo "Not a number! Try again."
                read -p "Enter a number: " input2
        	done		
		
		array+=($input2)
        	lenarray="${#array[*]}"
	done
echo "Your numbers are now: ${array[*]}"
else
	echo "No more number"
fi


#Now we want to find the PRODUCT, AVERAGE, SUM, MIN, MAX of the array
#This finds the product of the integers
tot=1
for i in ${array[*]}
do
        tot=$(( tot*i))
done
echo "The product of the integers: $tot"

#This finds the sum of the array
sum=0
lenarray=${#array[*]}
for i in ${array[*]}
do
        sum=$(( sum+i ))
done
echo "The sum of the integers: $sum"

#average=$(( sum/lenarray ))
#This finds the average of the array
#The 2 specify the precision of the devision
av=$(printf "%.2f\n" $((10**2 * sum/lenarray ))e-2)
echo "The average of the integers: $av"

#Max and Min value:
max=${array[0]}
min=${array[0]}

for i in "${array[@]}"
do
        if [[ $i -gt $max ]]
        then
        max=$i
        fi
done
echo "The max value: $max"

for i in "${array[@]}"
do
        if [[ $i -lt $min ]]
        then
        min=$i
        fi
done
echo "The min value: $min"
