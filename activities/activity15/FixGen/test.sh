#!/bin/bash

filename=()
for i in logs/*
do 
	j="$i"
	h=`printf '%s\n' "${j//logs\//}"`
	filename+=($h)	
	echo "${filename[*]}"
done
