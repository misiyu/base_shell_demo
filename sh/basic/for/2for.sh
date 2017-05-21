echo "number of arguments is $#"
echo "what you input is :"
for arg in "$*"
do
	echo "$arg"
done

# $*和$@都表示从$1开始的全部参数
