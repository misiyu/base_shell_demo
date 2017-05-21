i=1
res=1
for i in {1..10}
do
	#let "res*=i"
	res=`expr $res \* $i`
done
echo $res
