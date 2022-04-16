#!/bin/sh
TODAY=`date +%Y%m%d`
array50=()
array10=()
lotterynum=()

filename="lotterynum_`date +%Y%m%d`.txt"
ar50="array50_`date +%Y%m%d`.txt"
ar10="array10_`date +%Y%m%d`.txt"
files=()

#CHECK if folder already exist before creating a new folder
folders=()
 
#Extract an array of folder names from the current directory
for i in */
do
        folders+=($i)
done

foldername="files"
#If folder exists output an error
#If folder doesn't create a new file
if [[ ! "${folders[*]}" =~ "$foldername" ]]
then
        echo "Folder doesn't exist. Creating folder '$foldername'"
        mkdir $foldername
else
        echo "Folder '$foldername' already exist!"
fi

#Extract an array of file names from the "files" directory
for i in files/*
do
        files+=($i)
done

#We want to check the latest files created by comparing their dates, if the date doesn't exist then we can create a new lottery number for the day!

#An array of file names' dates
fname=()
for i in files/*
do
        j="$i"
        k=`printf '%s\n' "${j//.txt/}"`
        p=${k: -8}
        fname+=($p)
done

#Now compare today's date with the 'fname' array, if it doesn't exist then new lottery number can be created
if [[ ! ${fname[*]} =~ $TODAY ]]
then
#If file exists output an error 
#If file doesn't create a new file 
        echo "Today's Lottery doesn't exist. Creating files '$filename' '$ar50' '$ar10' "
        touch files/$filename

#Generating lottery number
for i in {1..5};
do
        random50=$[RANDOM % 50 + 1]
        lotterynum+=($random50)
        echo "${lotterynum[i-1]}" >> files/"lotterynum_`date +%Y%m%d`.txt"

done
echo "The lottery numbers are: ${lotterynum[*]}"

#Generating 5 numbers from (1-50)
for i in {1..5};
do
        random50=$[RANDOM % 50 + 1]
        array50+=($random50)
        echo "${array50[i-1]}" >> files/"array50_`date +%Y%m%d`.txt"
done
echo "Your 5 picks are: ${array50[*]}"

#Generating 1 number from (1-10)
for i in {1};
do
        random10=$[RANDOM % 10 + 1]
        array10+=($random10)
        echo "${array10[0]}" >> files/"array10_`date +%Y%m%d`.txt"
done
echo "Your bonus pick is: ${array10[*]}" 


else
        echo "Error: Today's Lottery already exist!"
fi


