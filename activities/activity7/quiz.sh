#!/bin/bash

#TRUE or FALSE quiz

questions="questions.txt"
answers="answers.txt"
lines=`wc -l < questions.txt`

quesarr=()
while IFS= read -r line
do
	quesarr+=("$line")
done < $questions

ansarr=()
while IFS= read -r line
do
        ansarr+=("$line")
done < $answers

#Loop over the whole file counting its lines as the range
for i in $(seq 1 $lines)
do 	
	echo "${quesarr[($i-1)]}"
	read -p "Enter T (True) or F (FALSE) or q (To Quit): " input
	#If input is "q" exit the loop	
	if [ $input = "q" ]
        then
                echo "Quit"
                break
	fi

	#Checks user input with the answer array at a specific element relative to each loop
	#If the input is the same as the answer then execute the next line
	while [ $input != ${ansarr[($i-1)]} ]
	do 
		echo "Incorrect. Try again."
		read -p "Enter T (True) or F (FALSE): " input
	done
	
	if [ $input = ${ansarr[($i-1)]} ]
	then
		echo "Correct"
		
	fi
done

