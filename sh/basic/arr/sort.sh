echo "input qantity of numbers:"
read num
for (( i = 0; i < $num; i++ ))
do
	echo "input a number:"
	read arr[$i]
done
for (( i = 0; i < $num; i++ ))
do
	for (( j = $i+1; j < $num; j++ )); do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			let "arr[$i]=arr[$j]"
			#这里必须用let
			arr[$j]=$temp
		fi
	done
done

for (( i = 0; i < $num; i++ )); do
	echo -n ${arr[$i]}" "
done
