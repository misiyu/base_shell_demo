#if exp
#then
	#command
#else
	#command
#fi
if [ ! -e "$1" ]
then
	echo "file $1 do not exist."
	exit 1
else
	echo "file $1 exist."
fi
