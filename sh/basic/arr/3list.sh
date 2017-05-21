# command && command && command && command && command && command  
# command || command || command || command || command || command  
if [ -n "$1" ] && echo "1st argument=$1" && [ -n "$2" ] && echo "2nd argument=$2"
then
	echo "at least two argument"
else
	echo "less than two argument"
fi

exit 0
