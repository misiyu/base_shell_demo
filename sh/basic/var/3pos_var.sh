echo "The script name is: $0"
echo "The script name is: $1"
echo "The script name is: $2"
echo "The script name is: $3"
echo "The script name is: $4"
echo "The script name is: $5"
echo "The script name is: $6"
echo "The script name is: $7"
echo "The script name is: $8"
echo "The script name is: $9"
echo "The script name is: ${10}"
# 位置号大于两位时，数字要用{}括号
echo "The script name is: ${11}"
echo "The script name is: ${12}"

echo "parametre num is : $#"
# $# 为参数个数
echo "$*"
echo "$@"
# $* $@都表示所有的参数

# `` 和 $()都可用于系统命令替换
