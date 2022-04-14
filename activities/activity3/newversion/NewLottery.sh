#!/bin/sh

array50=()
array10=()
lotterynum=()


filename="lotterynum_`date +%Y%m%d`.txt"
ar50="array50_`date +%Y%m%d`.txt"
ar10="array10_`date +%Y%m%d`.txt"
files=()

#Extract an array of file names from the current directory
for i in *
do
        files+=($i)
done

num1=`ls -d lotterynum* | wc -l`
num2=`ls -d array10* | wc -l`
num3=`ls -d array50* | wc -l`
#If file exists output an error 
#If file doesn't create a new file 
if [[ $num1 -lt 1 ]] && [[ $num2 -lt 1 ]] && [[ $num3 -lt 1 ]]
then
        echo "Files doesn't exist. Creating files '$filename' '$ar50' '$ar10' "
        touch $filename
	#Generating lottery number
for i in {1..5};
do
        random50=$[RANDOM % 50 + 1]
        lotterynum+=($random50)
        echo "${lotterynum[i-1]}" >> "lotterynum_`date +%Y%m%d`.txt"

done
echo "The lottery numbers are: ${lotterynum[*]}"

#Generating 5 numbers from (1-50)
for i in {1..5};
do
        random50=$[RANDOM % 50 + 1]
        #echo $random50  
        array50+=($random50)
        echo "${array50[i-1]}" >> "array50_`date +%Y%m%d`.txt"
        #echo ${array50[i-1]}
done
#echo "array50 = ${array50[*]}"
echo "Your 5 picks are: ${array50[*]}"

#Generating 1 number from (1-10)
for i in {1};
do
        random10=$[RANDOM % 10 + 1]
        array10+=($random10)
        echo "${array10[0]}" >> "array10_`date +%Y%m%d`.txt"
done
#echo "array10 = ${array10[*]}"
echo "Your bonus pick is: ${array10[*]}" 


else
        echo "Error: Files already exist!"
fi



#create a file from the arrays with the date
#echo "${array50[*]}" > "array50_`date +%Y%m%d`.txt"
#echo "${array10[*]}" > "array10_`date +%Y%m%d`.txt"
#echo "${lotterynum[*]}" > lotterynum_`date +%Y%m%d`.txt

