# 查找文本中出现频率最高的前n个单词

end=$1
cat $2 |
tr -cs "[a-z][A-Z]" "[\012*]" |	 # 将文件以一行一个单词的形式显示 
tr A-Z a-z |
sort |
uniq -c |
sort -k1nr -k2 |
head -n"$end"
