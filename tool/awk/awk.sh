# $1 表示行中的第一个字符串
awk '{print $2,$1,$4,$3}' strurecord
awk '{print $0}' strurecord
# $0表示全部域

# $
awk 'BEGIN {one=1;two=2} {print $(one + two)}' strurecord
# BEGIN 必须大写, 不大写不会报错

awk -F"\t" '{print $2}' strurecord
# -F"\t" 把 \t 当成分隔符

awk -F ',' '{print $1,$3}' strurecord
awk 'BEGIN {FS=","} {print $1,$3}' strurecord
# 利用awk内置环境变量FS把分隔符设置为 ,
awk 'BEGIN {FS="\t+"} {print $1,$3}' strurecord
#以一个或多个\t来做分隔符

awk 'BEGIN {FS=":" $1~/root/}' passwd
awk 'BEGIN {FS=":" $0~/root/}' passwd
awk 'BEGIN {FS=":" $0!~/root/}' passwd
# ~ 为正则表达式匹配判断运算符, !~ 为不匹配判断运算符

awk 'BEGIN {FS=":"} {if($3<$4) print $0}' passwd
#if 可以使用 && || !
awk 'BEGIN {FS=":"} {if($3==10 || $4 == 10) print $0}' passwd

========================================
#awk 运算符 % ^或 ** 表示乘方 ++x x++

awk '/^$/{ x+=1 } END {print x}' passwd
# 统计空白行数

# 可以使用 printf("%d",x) 输出

awk 'BEGIN {FS=":" ;  OFS=":"} gsub(/root/,"aaa",$1) {print $0}' passwd
# 替换一行中的第一个字符串
awk 'BEGIN {FS=":" ;  OFS=":"} gsub(/root/,"aaa",$0) {print $0}' passwd
# 替换一行中所有匹配的字符串

awk 'BEGIN {str="multiprocessor programming"; print substr(str,6,9)}'
awk 'BEGIN {str="multiprocessor programming"; printf("%d\n", substr(str,6,9))}'

========================================
awk 'BEGIN {data[10.15] = "1200";CONVFMT = "%d" ; printf("<%s>\n",data[10.9])}'

#split(r,s,t) 以t为分隔符将r分割成字符串数组存于s,数组从1开始编号

awk 'BEGIN {print split("abc/def/xyz",str,"/")} END {for(s in str) print s}'

========================================
# 练习

awk '{if($0~/o*/) print $0}' passwd
awk '{if($0~/oo*/) print $0}' passwd
awk '{if($0~/ooo*/) print $0}' passwd

awk 'BEGIN { printf("%x",2010) }'

awk 'BEGIN {IGNORECASE=1} {if($0~/ABC/) print $0}' in2

========================================
# awk中使用shell的命令必须将命令用""

awk -F ':' '{print $1 | "sort"}' passwd


var=100
awk -v awkVar=$var '' input

# -v 选项可以把shell的值传给awk

