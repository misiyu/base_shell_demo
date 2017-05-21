show_week()
{
	for day in Monday Tuesday Wednesday Thursday Friday Saturday Sunday
	do
		echo -n "$day "
	done
}

show_number()
{
	for (( i = 0; i < 7; i++ )); do
		echo "$i "
	done
}

show_square()
{
	i=0
	until [[ "$i" -gt 7 ]]; do
		let "square=i*i"
		echo "$i * $i = $square"
		let "i++"
	done
}

show_week
show_number
show_square
