count()
{
	if [ $# -ne 3 ]
	then
		echo "the number of arguments is not 3!"
	fi
	let "s = 0"

	case $2 in
	+) 
		let "s = $1 + $3"
		echo "$1 + $1 = $s";;
	-) 
		let "s = $1 + $3"
		echo "$1 + $1 = $s";;
	\*) 
		let "s = $1 + $3"
		echo "$1 + $1 = $s";;
	\/) 
		let "s = $1 + $3"
		echo "$1 + $1 = $s";;
	*)
		echo "what you input is wrong!!";;
	esac
}

echo "please type your word: (eg : 1 + 1)"
read a b c 
echo "$a $b $c"
count $a $b $c
