sum=0
for i in {1..100}
do
	if test `expr $i \% 3` -ne 0
	then
		continue
	fi
	let "sum=sum+i"
done
echo $sum
