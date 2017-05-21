for (( i = 0; i < 10; i++ )); do
	let "tmp=i%2"
	if [[ $tmp == 0 ]]; then
		continue
	fi
	echo "$i"
	if [ "$i" -eq 5 ]
	then
		break
	fi
done
