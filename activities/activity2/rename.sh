#!/bin/bash
TODAY="date +%Y%m%d"
filename="file1_`$TODAY`"
files=()

for i in files/*
do
        files+=($i)
done

#If we run this script on another day then it will think the files doesn't exist and append the files inside the folder as well. Thus need a check if there are files in the folder already or not
for i in "${files[*]}"
do 
#even without any files in the 'files' folder, the for loop earlier  will still appends 'files/*' to the 'files' array 
#thus need to check if 'files' array has the string '/' or not. If not then that means there are files inside the folder because there will be filenames instead of 'files/*' in the 'files' array 
if [[ ! "$i" = *"/"* ]] || [[ ! "${files[*]}" =~ "$filename" ]]
then
	echo "File doesn't exist. Creating files.'"
	touch files/file{1..3}.txt
	for f in files/*.txt
        do 
	        mv -- "$f" "${f%.txt}_`$TODAY`.txt"
        done

else
	 echo "Error: Files already exist"
fi
done

