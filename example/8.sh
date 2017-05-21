# 利用curl查找网页上无效链接

if [ $# -ne 1 ]
then
	echo "Usage: $0 URL"
	exit 1
fi

echo "Broken links:"

mkdir /tmp/$$.lynx
cd /tmp/$$.lynx
