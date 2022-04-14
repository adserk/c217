#!/bin/s

array=()

file="num*"
lines=$(cat $file)

for l in $lines
do 
	array+=($l)
done
echo "Original: ${array[*]}"

#tr Translate the spaces ' ' between the array into newlines '\n'
#Then sort the array as a list
#The <<< passes the strings back to the original array form
sorted=($(tr ' ' '\n' <<<"${array[*]}" | sort -n))

echo "Sorted: ${sorted[*]}"

uniq=()
#This iterates over the sorted array, carrying i
for i in "${sorted[@]}"
do
        #This checks if the uniq array has a duplicate  number or not
	#if not then append the number i  
	if [[ ! "${uniq[*]}" =~ "$i" ]]
	then
		uniq+=("$i")
	fi
done
echo "Unique Sorted: ${uniq[*]}"
