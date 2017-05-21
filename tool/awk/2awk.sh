awk '/834/ { print $1 } END{}' strurecord
# 匹配输出

awk -f 02.awk FS="." in2

# awk脚本参数传入

line=XXX
awk '$1=="'$line'"{print $0}' inputfile