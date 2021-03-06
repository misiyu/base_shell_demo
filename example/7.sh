# 统计词频
if [ $# -ne 1 ]
then
	echo "Usage: $0 filename"
	exit 1
fi

filename=$1

egrep -o "\b[[:alpha:]]+\b" $filename | 
awk '{ count[$0]++ } 
END{
	for(ind in count)
	{
		printf("%-14s%d\n",ind,count[ind]);
	}
}' 
