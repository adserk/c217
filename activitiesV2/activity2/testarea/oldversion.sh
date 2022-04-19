#!/bin/bash
TODAY="date +%Y%m%d"
filename="file1_`$TODAY`"
files=()

for i in *
do
        files+=($i)
done

#If file doesn't exist, create files and rename with today's date as an extension
#If file already exist then skip and echo error code
if [[ ! "${files[*]}" =~ "$filename" ]]
then
	echo "File doesn't exist. Creating files.'"
        touch file{1..3}.txt
	
	for f in *.txt
       	do 
		mv -- "$f" "${f%.txt}_`$TODAY`.txt"
       	done

else 
	echo "Error: Files already exist"
fi


