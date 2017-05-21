#[ expression ]
#[ 是启动测试命令，[  ] 表达式两边的空格不可少
#0 为真 非0为假
num1=15
[ "$num1" -eq 15 ]
echo $?
[ "$num1" -eq 20 ]
echo $?
[ "$num1" -lt 15 ]  # < 
echo $?
[ "$num1" -gt 15 ]  # > 
echo $?
# (le <=) (ge >=) (ne !=)

num2=20

[ $num1 -eq $num2 ]
echo $?
# 用不用引号好像无所谓
#========================================
echo "====================test string"
str1=""
test $str1 #测试$str1是否不为空
echo $? 
test -n "$str1" #测试$str1是否不为空
echo $? 
test -z $str1 #测试$str1是否为空
echo $? 

#使用引号才能保证结果的正确性

typ1="vi"
typ2="vim"
[ "$typ1" = "$typ2" ]
echo $? 
[ $typ1 != $typ2 ]
echo $? 

#========================================
echo "====================test file"
[ -d file ]  #测试文件是否为目录
echo $?
[ -f file ]  #测试文件是否为普通文件
echo $?
[ -e file ]  #测试文件是否存在
echo $?
[ -s file ]  #测试文件是否长度是否不为0
echo $?
[ -w file ]  #测试文件是否可写
echo $?
[ -r file ]  #测试文件是否可读
echo $?
[ -x file ]  #测试文件是否可执行
echo $?

#========================================
echo "====================test logic"
[ ! -d file ]
echo $?
[ -e file -a -f file ]
echo $?
[ -d file -o -f file ]
echo $?
