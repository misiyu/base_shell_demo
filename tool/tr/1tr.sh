# tr [-x] string1 string2 < input
# -c 选 string1 的补集
# -d 删除string1 中出现的所有字符
# -s 删除所有重复出现的字符序列，只保留一个
echo "AB112Aaa" | tr -d A-Z 
echo "AB112Aaa" | tr -d 0-9 
tr -d "[\n]" < input

tr -s "[\n]" < input
# 去空行 \n 也可表示为 \012

tr -s "[a-z,A-Z]" < input
# 去年连续出现的字符只保留一个
tr -s "[a-z]" "[A-Z]" < input 
# 小写转大写

tr -cs "[a-z][A-Z]" "[\n*]" <input

# 将不在字符串1中的字符换成换行符，并将多个换行符压缩成一个
# * 表示将换行符任意扩展，让它数量与被替换字符相等
