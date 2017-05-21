half()
{
	let "n = $1"
	let "n = n/2"
	echo "In function half() n is $n"
}

let "m = $1"
echo "before the function is called, m is $m"
half $m
echo "after the function is called, m is $m"

