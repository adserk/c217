#!/bin/bash

echo "Length should be 8 or more characters 
The password should contain numbers and letters
There should be both uppercase and lowercase letters"

read -p "Enter Password: " password

#Checks if the password contains 8 or more characters
	while [[ ${#password} -lt 8 ]]	
	do 	
	echo "Password requires 8 or more characters"
	read -p "Enter Password with 8 or more characters: " password
	done

#Check if the password contains a number
	while [[ ! $password =~ [0-9] ]]
	do 
	echo "Password requires a number"
	read -p "Enter a password with numbers: " password
	done

#Check if the password contains upper and lower case
while [[ ! $password =~ [A-Z] ]]
        do
        echo "Password doesn't contain upper and lower case"
        read -p "Enter a password with upper and lower case:" password
        done

while [[ ! $password =~ [a-Z] || ! $password =~ [0-9] || ! ${#password} -ge 8 ]]
do 
	read -p "Re-enter a password (Still missing a number, upper and lower case 
	or less than 8 characters):" password
done

echo "Password Accepted!"

