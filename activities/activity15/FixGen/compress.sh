#!/bin/bash
fname=()
for i in logs/*
do
        j="$i"
        h=`printf '%s\n' "${j//logs\/fixlog}"`
        fname+=($h)
done

#Array of just the file numbers in the "logs" folder
name=()
for i in "${fname[@]}"
do
        j="$i"
	
        h=`printf '%s\n' "${j//\.log}"`
        name+=($h)
        #echo "$h"
done

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

#Array of file names to compress
NotTop3=()
#For all elements in the array of file numbers 
for i in ${name[*]}
do 
	#Compare if the element in file numbers  exist in the top 3 file,
	#if it doesn't exist then execute the next line (i.e. not in the top 3)
	if [[ ! "${top3[*]}" =~ "$i" ]] && [[ ${#top3[*]} -ge 3 ]]
	then 
		#echo "Compressing fixlog$i.log"
		comp="fixlog$i.log"
		NotTop3+=($comp)
		#zip $comp /logs  
	fi
	
done

#If there's no file to compress the next line will not be executed
#since NotTop3 array contains the files which are not the latest 3 file, if this is less than 1 then there's no file to compress
if [[ ${#NotTop3[*]} -ge 1 ]]
then
	echo "File(s) Compressed: ${NotTop3[*]}"
else 
	echo "No file to compress"
fi
