#!/bin/bash
f1=()
f2=()

#Read the files using cat
file1="file1*"
lines1=$(cat $file1)
file2="file2*"
lines2=$(cat $file2)

#For all elements in "lines1" append it to "f1" array
for l in $lines1
do 
	f1+=($l)
done
#For all elements in "lines2" append it to "f2" array
for l in $lines2
do 
	f2+=($l)
done

echo "File 1: ${f1[*]}"
echo "File 2: ${f2[*]}"

#Need to extract the differences then compare with each array
diff=()
only1=()
only2=()
#Check for differences that exist only in 2
for i in "${f2[@]}"
do 
	if [[ ! "${f1[*]}" =~ "$i" ]]
	then
		diff+=("$i")
		only2+=("$i")
	fi
done
#Check for differences that exist only in 1
for i in "${f1[@]}"
do
        if [[ ! "${f2[*]}" =~ "$i" ]]
        then
                diff+=("$i")
		only1+=("$i")
        fi
done

echo "All the differences: ${diff[*]}"
echo -e "Only in file 1:\n$only1"
echo -e "Only in file 2:\n$only2"




