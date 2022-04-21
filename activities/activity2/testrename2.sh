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

count=()
for i in files/*.txt
do
        if [[ ! $i =~ ['_'] ]]
        then
		echo "Renaming the file: $i"
		mv -- "$i" "${i%.txt}_`$TODAY`.txt"
		count+=(1)

	fi
done

if [[ $count -lt 1 ]]
then
	echo "Today's files already exist!"
fi
