show_week()
{
	echo "what you input is :"
	echo "$1"

	case $1 in
		0)
			echo "Sunday"
			return 0;;
		1)
			echo "Monday"
			return 0;;
		2)
			echo "Tuesday"
			return 0;;
		3)
			echo "Wednesday"
			return 0;;
		4)
			echo "Thursday"
			return 0;;
		5)
			echo "Friday"
			return 0;;
		6)
			echo "Saturday"
			return 0;;
		*)
			return 1;;
	esac
}

if show_week "$1"
then
	echo "your input is right"
else
	echo "your input is wrong"
fi
