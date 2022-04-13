#!/bin/bash

#File name
fname="randnum.txt"
#Number of lines to write the random numbers to a new file
num=5
#Array of file names in the current directory
files=()

#Extract an array of file names from the current directory
for i in *
do
        files+=($i)
        #echo "$i"
done


#Check if file doesn't exist before executing
if [[ ! "${files[*]}" =~ "$fname" ]]
then
	for i in $(seq 1 $num) 
	do 
		random=$[RANDOM % 50 + 1]
		echo "$random" >> $fname
	done

else 
	echo "Error: File already exist"
fi

cat $fname
