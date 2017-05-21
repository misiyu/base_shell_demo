if [ "$1" ]
then
	echo "what you input is not null."
	if [ -e "$1" ]
	then
		echo "The file $1 is existance"
	else
		echo "The file $1 is not existance"
	fi
else
	echo "what you input is null."
fi

#===================== elif
echo "please input a integer (0-100):"
read score
if [ "$score" -lt 0 -o "$score" -gt 100 ]
then
	echo "wrong score scole"
elif [ "$score" -ge 90 ]
then
	echo "Teh grade is A!"
elif [ "$score" -ge 80 ]
then
	echo "Teh grade is B!"
elif [ "$score" -ge 70 ]
then
	echo "Teh grade is C!"
elif [ "$score" -ge 60 ]
then
	echo "Teh grade is D!"
else
	echo "Teh grade is E!"
fi
