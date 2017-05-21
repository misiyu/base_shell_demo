suffix="mp4"
i=0
for file in `ls -1 | tr -d " "`
do
	let "i=i+1"
	echo $file
	newname=`echo $file | tr -cd [0-9]`
	echo "new = ${newname%4}.$suffix"
done
echo "total = $i"
