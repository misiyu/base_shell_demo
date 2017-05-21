sed -n '1p' input.c
#打印第一行 -n 为不打印其它行的意思
sed -n '3,5p' input.c
#打印第3到5行 
sed -n '/qsort/p' input.c
#打印匹配行
sed -n '/qsort/=' input.c
#打印匹配行号
# = 打印行号
# -e 为多个编辑命令选项
sed -n -e '/qsort/p' -e '/qsort/=' input.c
#打印匹配行内空和行号
# -f 选项为
sed  '/qsort/a\//hhh.' input.c
#在行尾追加，会另起一行
sed  '/qsort/i\//hhh.' input.c
#在行前追加，会另起一行
==============================

# $ 在sed中表示最后一行
sed -n '$p' input.c 
#打印最后一行
sed -n '/.*Num)/p' input.c
#以 Num) 为行结尾的行
sed -n '3,/qsort/p' input.c
打印第三行到与qsort匹配的行
==============================

sed '/qsort/c\hhhhh' input.c 
#替换匹配行
sed '1,30d' input.c
#删除1到30行
sed '/[Qq]sort/d' input.c
#删除匹配行 [Ee] 就是不区分大小写 其实是E|e

==============================
sed 's/qsort/expression/' input.c
#替换字符串
sed -n 's/qsort/expression/p' input.c
#只打印替换行
sed 's/qsort/expression/w output' input.c
#替换后写入output文件,只写入替换的行
sed 's/qsort/(&)/' input.c
# 等价于  sed 's/qsort/(qsort)/' input.c
==============================

sed 'y/12345/ABCDE/' input.c
#字符变换，将文件中的12345分别替换为ABCDE

sed l input.c

#显示非打印字符

sed -n '/qsort/{=;p}' input.c
#多命令
sed -n '/qsort/{=;n;=;p}' input.c
# 命令n读下一行

==============================
# 练习

sed 's/\\OU/ou/' in1
# 把 \OU 替换为 ou

#打印除3～8以外的所有行
sed '1,2p;9,$p' input.c
sed -n '3,8!p' input.c

sed 's/\\OU/ou/; a \ We find \\OU' in1

sed -n '/.*o*.*/p' passwd
sed -n '/.*oo*.*/p' passwd
sed -n '/ooo*/p' passwd

sed -i 'y/abcde/ABCDE/' input.c
# -i 在原文件上修改

sed -e '/123/h' -e '/456/x' -e '$G' in1

