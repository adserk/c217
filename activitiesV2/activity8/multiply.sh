#!/bin/bash
array=(4 5 2 7 3)
echo "The integers are: ${array[*]}"
tot=1
for i in ${array[*]}
do 
	tot=$(( tot*i))
done
echo "The product of the integers: $tot"

sum=0
lenarray=${#array[*]}
for i in ${array[*]}
do 
	sum=$(( sum+i ))
done
echo "The sum of the integers: $sum"
 
#average=$(( sum/lenarray ))

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


