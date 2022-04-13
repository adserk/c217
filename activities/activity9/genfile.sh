#!/bin/bash
#list=$(ls ./)
filename="newfile.txt"
files=()
for i in *
do
	files+=($i)
	#echo "$i"
done

if [[ ! "${files[*]}" =~ "$filename" ]]
then 
	echo "File doesn't exist. Creating file '$filename'"
	touch $filename
else
	echo "Error: File already exist"
fi


