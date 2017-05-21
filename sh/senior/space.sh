# 有关文件名带有空格符的解决

for file in `find . -type f`
do
	echo "$file"
done

echo "=============================="
for file in `find . -type f | tr " " "#"`
do
	echo "$file" | tr "#" " "
done

echo "=============================="
#	 IFS='
#	 '
IFS="" 
IFS=$'\x0A'
# 将IFS改为换行符
# 以上三种方法都行
for file in `find . -type f`
do
	echo "$file"
done
echo "=============================="
for file in ./* 
do
	echo "$file"
done

# 这个方法只能遍历一层
