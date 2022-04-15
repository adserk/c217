#!/bin/

f1=()
f2=()

#Read the files using cat
file1="file1*"
lines1=$(cat $file1)
file2="file2*"
lines2=$(cat $file2)

#For all elements in "lines1" append it to "f1" array
for l in $lines1
do 
	f1+=($l)
done
#For all elements in "lines2" append it to "f2" array
for l in $lines2
do 
	f2+=($l)
done

echo "File 1: ${f1[*]}"
echo "File 2: ${f2[*]}"

#Extract all the common elements from "f1" and "f2" and append to "common"
common=()
for i in "${f2[@]}"
do
	if [[ "${f1[*]}" =~ "$i" ]]
	then 
		common+=("$i")
	fi
done

lenarray=${#common[*]}

#Check if length of "common" array  is greater than or equal to one 
if [[ $lenarray  -ge 1 ]]
then
	echo "At least one common element exist"
	echo "Common element(s): ${common[*]}"
else 
	echo "No common elemeent exist"
fi

