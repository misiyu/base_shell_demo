# 随机数的产生

MAX=5
i=1
echo "$MAX random numbers ate generated:"
while [ $i -le $MAX ]
do
	number=$RANDOM
	echo $number
	let "i=i+1"
done
