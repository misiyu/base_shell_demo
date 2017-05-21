a=0
if [[ $a != 1 && $a != 2 ]]
then
	echo "1112"
fi
if [ $a -ne 1 ] && [ $a -ne 2 ]
then
	echo "1112"
fi
if [ $a -ne 1 -a $a -ne 2 ]
then
	echo "1112"
fi
