APPSPATH=/usr/local
export APPSPATH
# 用export可以将变量声明为环境变量
# env 命令可列出系统中的所有环境变量

unset APPSPATH
# unset用于清除变量

echo "PWD="$PWD
echo "OLDPWD="$OLDPWD
echo "===================="
echo "PATH="$PATH
# 系统命令的文件夹
# 添加新文件夹可用  export PATH="/new":$PATH
echo "===================="

echo "HOME="$HOME
