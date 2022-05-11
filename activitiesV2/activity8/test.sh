array=(2 4 21 4 6)
#Max and Min value:
#Set the max value as the first element in the 'array'
max=${array[0]}
#Set the min value as the first element in the 'array'
min=${array[0]}
echo $min
echo $max

#for i in "${array[@]}"
#do 
#	echo "$i"
#done
for i in "${array[@]}"
do
        if [[ $i -gt $max ]]
        then
        max=$i
        fi
done
for i in "${array[@]}"
do
        if [[ $i -lt $min ]]
        then
        min=$i
        fi
done
echo $min
echo $max

