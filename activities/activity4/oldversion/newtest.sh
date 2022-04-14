echo "Length should be 8 or more characters 
The password should contain numbers and letters
There should be both uppercase and lowercase letters"
read -p "Enter Password: " password

if [[ ${#password} -ge 8 ]]
then
	if [[ $password =~ [0-9] ]]
	then 	
		if [[ $password =~ [A-Z] ]]
		then		
			if [[ $password =~ [a-z] ]]
			then
			echo "Pasword Accepted!"	
			else
				while [[ ! $password =~ [A-Z] ]]
				do
				echo "Password doesn't contain upper and lower case"
				read -p "Enter a password with upper and lower case:" password
        			done	
				echo "Password Accepted!"

	else 
	while [[ ! $password =~ [0-9] ]]
	do 
	echo "Password requires a number"
	read -p "Enter a password with numbers: " password
	done
	
else
while [[ ${#password} -lt 8 ]]
do
echo "Password requires 8 or more characters"
read -p "Enter Password with 8 or more characters: " password
done
fi
fi			
fi

	
