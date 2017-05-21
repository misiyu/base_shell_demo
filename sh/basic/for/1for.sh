for v in 1 2 3 4 5
do
	echo "$v"
done
echo "===================="

for v in {1..5}
do
	echo "$v"
done
echo "===================="

sum=0
for i in {1..100..2}
do
	let "sum+=i"
done
echo "sum=$sum"
echo "===================="

sum=0
for i in $(seq 1 2 100)
do
	let "sum+=i"
done
echo "sum=$sum"
echo "===================="

for day in Monday Tuesday Wednesday Thursday Friday Saturday Sunday
do
	echo "$day"
done

echo "===================="
for file in $(ls)
do
	echo "$file"
done

#echo "===================="
#for file in $(*)
#do
	#echo "$file"
#done

