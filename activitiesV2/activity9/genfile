#!/bin/bash
#list=$(ls ./)
filename="newfile.txt"
files=()

#Extract an array of file names from the current directory
for i in *
do
	files+=($i)
	#echo "$i"
done

#Check if file exists or not 
#If file exists output an error 
#If file doesn't create a new file 
if [[ ! "${files[*]}" =~ "$filename" ]]
then 
	echo "File doesn't exist. Creating file '$filename'"
	touch $filename
else
	echo "Error: File already exist"
fi


