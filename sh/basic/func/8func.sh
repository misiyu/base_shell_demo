square()
{
	echo "please input the num:"
	read num1
	let "squ = num1 * num1"
	echo "the square of $num1 is $squ"
}

cube()
{
	echo "please input the num:"
	read num2
	let "cu =num2 *num2* num2  "

	echo "the cube of $num2 is $cu"
}

power()
{
	echo "please input the num:"
	read num3
	echo "please input the power:"
	read p
	let "temp = 1"
	for (( i = 1; i <= $p; i++ )); do
		let "temp = temp * num3"
	done
	echo "the power $p of $num3 is $temp."
}

choice()
{
	echo "please input the choice of operate(s for square; c for cube and p for power):"
	read char
	case $char in 
		s)
			square;;
		c)
			cube;;
		p)
			power;;
		*)
			echo "what you inputed is wrong!"
	esac
}

choice
