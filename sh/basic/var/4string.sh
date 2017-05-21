string="Speeding up small jobs in Hadoop"
echo ${#string}
# 字符串长度
expr length "$string"
# 字符串长度, 引号不能少

echo "====================index"
expr index "$string" job
# 子串的位置
echo "====================match"
expr match "$string" S.*
# 从开头进行匹配，返回匹配的字符串长
echo "====================sub"
# #{string:position}
# #{string:position:lenth}
echo ${string:0}
echo ${string:9:8}
# ${string: -position} :和 - 之间要有空格
# ${string:(-position)} :和 - 之间要有空格
echo ${string: -6}
echo ${string:(-6)}

astring="20091114 Reading Hadoop"
# 匹配开头
expr match "$astring" '\([0-9]*\)'
expr "$astring" :  '\([0-9]*\)'

# 匹配结尾
expr match "$astring" '.*\(......\)'
expr "$astring" : '.*\(......\)'

# ${string#substring} 删除开头与substring匹配的最短子串
# ${string##substring} 删除开头与substring匹配的最长子串
echo ${astring#2*1}
echo ${astring##2*1}
# ${string%substring} 删除结尾与substring匹配的最短子串
# ${string%%substring} 删除结尾与substring匹配的最长子串
echo ${astring%a*p}
echo ${astring%%a*p}


# ${string/substring/replacement} 只替换一次
# ${string//substring/replacement} 替换所有

string="20091115sunday20091116tomorrow"
echo ${string/111/zzzz}
echo ${string//111/zzzz}
echo ${string//0*y/zzzz}
# ${string/#substring/replacement} 只替换一次开头处
# ${string/%substring/replacement} 替换一次，结尾处

echo ${string/#2009/YEAR}
echo ${string/%t*w/YESTODAY}
