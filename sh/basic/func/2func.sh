output()
{
	for (( i = 0; i < 5; i++ )); do
		echo -n "$i "
	done
}
let "num2=1"
while [ "$num2" -le 5 ]
do
	output
	echo ""
	let "num2=num2+1"
done
