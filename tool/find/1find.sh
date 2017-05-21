find ./ -type f
find ./ -type d

find ./ -name test
find ./ -iname test
# iname 忽略大小写

find ./ -regex .*so

find ./ -type d -print -exec ls {} \;

find ../ -type d -ok ls {} \;

find ./ -name \*.c

find ../ -name test -print -exec cat {} \;

find ../ -mtime -2
# 两天以内

find ../ -mtime +2
# 两天以上

find ../ -mmin -2
# 两分以内

find ../ -mmin +2
# 两分以上

find ../ -newer abc
find ../ -anewer abc

find ../ -empty 
# 空文件或空目录

find ../ -empty -type f -print -delete

find ../ -size -10c
# 小于10字节
find ../ -size 10c
# 等于10 字节
find ../ -size +10c
# 大于10字节

find ../ -size -10k
find ../ -size 10M
find ../ -size -10G



find ../ -perm 664

find ../ -perm /220
find ../ -perm /u+w,g+w
find ../ -perm /u=w,g=w
# 用户或组有写权限的文件和目录 
