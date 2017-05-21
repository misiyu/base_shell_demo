arr[0]=0
arr[1]=1
arr[2]=2
arr[3]=3
arr[4]=4
arr[5]=5
arr[6]=6
arr[7]=7
arr[8]=8
arr[9]=9
for i in {1..10}
do
	echo $[arr[$i]]
	#echo ${arr[$i]}
	#大括号与中括号等价
done
