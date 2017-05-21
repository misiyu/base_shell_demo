sed '1,/^$/d' input.c
#删除第一行到第一个空白行

sed '1,50{
	/^$/d
	s/aaa/bbb/
}' in1
# opening { 后可以跟着命令，但是 closing } 必须单独在一行

sed 's/111/aaa/2' input.c

# 数字2可指定每行中的第几个

sed 's/\(Consult\) Section \(3.1\) in/\2/' in

# \2 指前面用 \(\) 括起来的第二个

x=MM
sed 's/AB/'$x'/g' b.c
或
sed 's/AB/'"$x"'/g' b.c


sed 's/$[0-9][0-9]*/"&"/' input