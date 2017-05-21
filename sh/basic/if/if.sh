#if expression;then
	##statements
#fi
#if expression
#then
	##statements
#fi
# 必须用冒号或换行符来结束表达式

echo "please input an integer:"
read integer1

if [ "$integer1" -lt 15 ]
then
	echo "the integer which you input is lower than 15"
fi
