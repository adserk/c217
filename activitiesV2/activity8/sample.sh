array=(6 7 2 8 3)

#The * output the numbers as an array
for i in "${array[*]}"
do 
	echo "$i"
done

#The @ output the numbers as a list independently
array=( one two three )
for i in "${array[@]}"
do
	echo "$i"
done
