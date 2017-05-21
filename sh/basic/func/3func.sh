# 判断当前目录中有多少个文件和多少个子目录

directory()
{
	let "filenum = 0"
	let "dirnum = 0"
	ls $1
	# 如果有参数则会显示参数所指的目录
	echo ""
	for file in $( ls )
	do
		if [ -d $file ]
		then
			let "dirnum = dirnum + 1"
		else
			let "filenum = filenum + 1"
		fi
	done
	echo "the number of directory is $dirnum"
	echo "the number of file is $filenum"
}

directory
