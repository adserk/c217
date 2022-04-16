#!/bin/sh

#random50=$[RANDOM % 50 + 1]
#random10=$[RANDOM % 10 + 1]
array50=()
array10=()
lotterynum=()

#Generating lottery number
for i in {1..5};
do
        random50=$[RANDOM % 50 + 1]

        lotterynum+=($random50)

done
echo "The lottery numbers are: ${lotterynum[*]}"

#Generating 5 numbers from (1-50)
for i in {1..5};
do 
	random50=$[RANDOM % 50 + 1] 
	#echo $random50  
	array50+=($random50) 
	#echo ${array50[i-1]}
done
#echo "array50 = ${array50[*]}"
echo "Your 5 picks are: ${array50[*]}"

#Generating 1 number from (1-10)
for i in {1};
do
	random10=$[RANDOM % 10 +1]
	array10+=($random10)
done
#echo "array10 = ${array10[*]}"
echo "Your bonus pick is: ${array10[*]}" 

          
       

#create a file from the arrays with the date
echo "${array50[*]}" > "array50_`date +%Y%m%d`.txt"
echo "${array10[*]}" > "array10_`date +%Y%m%d`.txt"
echo "${lotterynum[*]}" > lotterynum_`date +%Y%m%d`.txt

#cat array50*
#cat array10*
#cat lotterynum*
