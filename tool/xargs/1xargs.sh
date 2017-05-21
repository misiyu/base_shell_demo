find . -type f -name "*.txt" -print0 | xargs -0 rm -f
# 删除所有的.txt文件，print0的意思是以字符null分隔输出，而后面
# 的xargs -0 则以null为分隔符作为rm 的参数

ps -A | awk '{if($4~/chrome*/) print $1}' | xargs kill
