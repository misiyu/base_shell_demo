res=1
while [ $# -gt 0 ]
do
	let "res *= $1"
	shift
done
echo $res
