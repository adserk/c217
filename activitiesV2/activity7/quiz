#!/bin/bash

#TRUE or FALSE quiz
#This script allows for users to type both upper and lower case 'T' and 'F' to be the answer from the user, in case they use both.
#Also, an option to exit with 'q' or 'Q' has been added at anytime the user is asked for an input
questions="questions.txt"
answers="answers.txt"
lines=`wc -l < questions.txt`

quesarr=()
while IFS= read -r line
do
	quesarr+=("$line")
done < $questions
#Array of answers in upper case
ansarr=()
#Array of answers in lower case 
ans_lower=()
while IFS= read -r line
do
        ansarr+=("$line")
	#This $(..) notation capture the outpt of the command in a variable
	var_lower=$(echo "$line" | tr '[:upper:]' '[:lower:]')
	ans_lower+=($var_lower)
done < $answers

#Loop over the whole file counting its lines as the range
for i in $(seq 1 $lines)
do 	
	echo "True or False:"
	echo "${quesarr[($i-1)]}"
	read -p "Enter T (True) or F (FALSE) or q (To Quit): " input
	#If input is "q" exit the loop	
	if [ $input = "q" ] || [ $input = "Q" ]
        then
                echo "Quit"
                break
	fi

	#Checks user input with the answer array at a specific element relative to each loop
	#If the input is the same as the answer then execute the next line
	while [[ $input != ${ansarr[($i-1)]} && $input != ${ans_lower[($i-1)]} && $input != "q" && $input != "Q" ]]
	do 
		echo "Incorrect. Please try again."
		echo "True or False:"
		echo "${quesarr[($i-1)]}"
		read -p "Enter T (True) or F (FALSE) or q (To Quit): " input
	done
	
	if [ $input = ${ansarr[($i-1)]} ] || [ $input = ${ans_lower[($i-1)]} ]
	then
		echo "Correct! Well Done!"
		
	elif [ $input = "q" ] || [ $input = "Q" ] 
	then 
		echo "Quit"
		break
	fi
done

