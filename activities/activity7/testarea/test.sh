#read -p "Enter T (True) or F (FALSE) or q (To Quit): " input
#while [[ $input != "q" ]]
#        do
#                echo "Incorrect. Try again."
#                read -p "Enter T (True) or F (FALSE) or q (To Quit): " input
#        done
VAR_NAME="THIS IS a TEST"
kp=$(echo "$VAR_NAME" | tr '[:upper:]' '[:lower:]')

echo $kp
