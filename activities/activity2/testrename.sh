#!/bin/bash
TODAY="date +%Y%m%d"
filename="file1_`$TODAY`"
files=()
for i in files/*
do

j="$i"
        h=`printf '%s\n'"${j//files\/file}"`
        fname+=($h)
done
#Array of just the file numbers in the "files" folder
name=()
for i in "${fname[@]}"
do
        j="$i"	
        h=`printf '%s\n'"${j//\.txt}"`
        name+=($h)
        #echo "$h"
done
echo "${name[*]}"

#Sort the array of file numbers from largest to smallest,
#Largest means latest since the date format of each file is Year-Month-Day(%Y%m%d)
revsorted=($(tr ' ' '\n' <<<"${name[*]}" | sort -nr))

#The first 3 elements of revsorted array (3 latest files) 
top3=()
if [[ ${#revsorted[*]} -ge 3 ]]
then
	for i in {1..3}
do
	j="${revsorted[(i-1)]}"
	top3+=($j)
done
fi

echo "${top3[*]}"

NotTop3=()
#For all elements in the array of file numbers
for i in ${name[*]}
do
       echo "i is $i"	
	#Compare if the element in file numbers  exist in the top 3 file,
	#if it doesn't exist then execute the next line (i.e. not in the top 3)
	if [[ ! "${top3[*]}" =~ "$i" ]] && [[ ${#top3[*]} -ge 3 ]]
	then
	       echo "h"	
		comp="file$i.txt"
		NotTop3+=($comp)
		  
	fi
	
done
echo "${NotTop3[*]}"

#We want to rename files that doesn't have date in its name already
