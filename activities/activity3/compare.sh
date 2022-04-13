#!/bin/s
lotterynum=()
array50=()
array10=()

FILENAME1="lotterynum*"
LINES1=$(cat $FILENAME1)
FILENAME2="array50*"
LINES2=$(cat $FILENAME2)
FILENAME3="array10*"
LINES3=$(cat $FILENAME3)

for l in $LINES1
do 
	lotterynum+=($l)
done
echo "lottery number: ${lotterynum[*]}"

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
lottery50=$(grep -w -f lotterynum* array50*)
#echo "$lottery50"
if [[ $lottery50 -gt 0 ]]
then
echo "You won! Your match is $lottery50"
else 
	echo "You didn't win the lottery"
fi

lottery10=$(grep -w -f lotterynum* array10*)
if [[ $lottery10 -gt 0 ]]
then 
	echo "You won the bonus! Your match is $lottery10"
else
	echo "But you didn't win the bonus"
fi
