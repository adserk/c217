#!/bin/bash

TODAY="date +%Y%m%d"
filename="file1_`$TODAY`"
files=()
for i in files/*
do
	j="$i"
        h=`printf '%s\n'"${j//files\/}"`
	files+=($h)
done
#count the number of files that doesn't contain '_'
count=()
for i in files/*
do
if [[ ! "${files[*]}" =~ "$filename" ]]
        then
                echo "File doesn't exist. Creating files.'"
                touch files/file{1..3}.txt
        fi
done

for i in files/*.txt
do	
	#if files array doesn't contain an element with substring '_' then execute the next line 
        if [[ ! $i =~ ['_'] ]]
        then
		echo "Renaming the file: $i"
		mv -- "$i" "${i%.txt}_`$TODAY`.txt"
		count+=(1)

	fi
done
#if count is less than 1 then files already exist
if [[ $count -lt 1 ]]
then
	echo "Today's files already exist!"
fi
