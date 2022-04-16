#!/bin/s
lotterynum=()
array50=()
array10=()
files=()
TODAY=`date +%Y%m%d`

#Only compare the files that are generated today
#Thus want to only compare files with today's date 

FILENAME1="lotterynum_`date +%Y%m%d`.txt"
LINES1=$(cat files/$FILENAME1)
FILENAME2="array50_`date +%Y%m%d`.txt"
LINES2=$(cat files/$FILENAME2)
FILENAME3="array10_`date +%Y%m%d`.txt"
LINES3=$(cat files/$FILENAME3)

for l in $LINES1
do 
	lotterynum+=($l)
done
echo "Today's Lottery number: ${lotterynum[*]}"

for l in $LINES2
do  
	array50+=($l)
	
done
echo "5 picks are: ${array50[*]}"

for l in $LINES3
do 
	array10+=($l)
done
echo "1 pick is: ${array10[*]}"

#Checks for simililarities between two files:
lottery50=$(grep -w -f files/$FILENAME1 files/$FILENAME2)
#echo "$lottery50"
#If lottery10 is greater than zero that means we have a match and therefore won the lottery
if [[ $lottery50 -gt 0 ]]
then
echo "You won today! Your match is $lottery50."
else 
	echo "You didn't win the lottery today."
fi

#If lottery10 is greater than zero that means we have a match and therefore won the bonus
lottery10=$(grep -w -f files/$FILENAME1 files/$FILENAME3)
if [[ $lottery10 -gt 0 ]]
then 
	echo "You won the bonus! Your match is $lottery10."
else
	echo "You didn't win the bonus."
fi
