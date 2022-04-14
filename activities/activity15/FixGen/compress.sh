
files=()

for i in */fixlog*
do 
	#i='%s\n' "${$i//logs/}"
	files+=($i)
	echo "$i"
done

echo "${files[*]}"
