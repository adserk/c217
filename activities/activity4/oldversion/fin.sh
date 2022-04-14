#read -p "Enter Password: " password

#if [[ ${#password} -ge 8 ]] && [[ $password =~ [0-9] ]] && [[ $password =~ [A-Z] ]] && [[ $password =~ [a-z] ]]
#then 
#	echo "Password accepted!"
#else 
#fi
read -p "Enter Password: " password
while [[ ! $password =~ [a-Z] ]] && [[ ! $password =~ [0-9] ]] && [[! ${#password} -ge 8 ]]
do
        read -p "Re-enter a password:" password
done
