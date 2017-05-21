sort -t: input
# 以: 分隔的各个域进行从小到大排序

sort -t: -k2 input
#以:分隔域后按第二个域进行排序

sort -t: -k2n input
# -n 按数值大小进行排序

sort -t: -k2nr input
# -r 从小到大排序后逆向输出变成从大到小

sort -t: -u input
# -u 用于消除重复行

sort -t: -o output input
# -o 指定输出文件

sort -t: -c input
# -c 测试是否已经排序好

sort -t: -m input1 input2
# -m 合并两个排序好的文件

ls -l | sed '1d' | sort -k5nr