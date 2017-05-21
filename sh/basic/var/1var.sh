v1=`ls -l`
echo $v1
echo "$v1"
#有引号和没引号的区别
readonly v1
# 将v1标为只读
v1=2
echo "===================="
readonly
# 查看所有只读变量

echo "===================="
a=2009
let "a+=1"
echo "a=$a"
b=xx09
echo "b=$b"
declare -i b  #将b强制转换为整型
echo "b=$b"

let "b+=1"
echo "b=$b"

exit 0
