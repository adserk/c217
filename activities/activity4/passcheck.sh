#!/bin/bash
#password="USER INPUT"

read -p "Enter Password: " password

#password="Op3rater"

#echo "Your password: $password"

#Checks if the password contains 8 or more characters
if [[ ${#password} -ge 8 ]]
then
	echo "Password has 8 or more characters"
else 
	echo "Password requires 8 or more characters"
fi

#Check if the password contains a number
if [[ $password =~ [0-9] ]]
then
	echo "Password contains number"
else 
	echo "Password requires a number"
fi

#Check if the password contains upper and lower case
if [[ $password =~ [A-Z] ]]
then 
	if [[ $password =~ [a-z] ]]
	then
	echo "Password contains upper and lower case"
	fi
else
	echo "Password doesn't contain upper and lower case"
fi
