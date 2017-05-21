md5_()
{
	total_src_file=0
	move_file=0
	src_dir="$1"
	des_dir="$2"
	i=0
	for file_tmp in `find "$des_dir" -type f | tr " " "#"`
	do
		file=`echo "$file_tmp" | tr "#" " "`
		list[$i]=$( md5sum "$file" | awk '{print $1}')
		desfiles[$i]="$file"
		let "i++"
	done
	mark=0
	if [[ "$3" =~ "v" ]]
	then
		for src_file_tmp in `find "$src_dir" -type f | tr " " "#"`
		do
			let "total_src_file ++"
			src_file=`echo "$src_file_tmp" | tr "#" " "`
			let "mark=0"
			src_file_md5=$( md5sum "$src_file" | awk '{print $1}')
			for (( i = 0; i < ${#list[*]}; i++ ))
			do
				if [ "${list[$i]}" = "$src_file_md5" ]
				then
					let "mark=1"
					echo "$src_file ===eq===>> ${desfiles[$i]}"
					break
				fi
			done
			if [ "$mark" -ne 1 ]
			then
				src_file_tmp=`echo "$src_file" | tr "/" "#"`
				des_dir_temp=`echo "$des_dir" | tr "/" "#"`
				src_dir_temp=`echo "$src_dir" | tr "/" "#"`
				p_dir_tmp=`echo "$src_file_tmp" | sed 's/'"$src_dir_temp"'/'"$des_dir_temp"'/' | tr "#" "/"`
				p_dir=${p_dir_tmp%/*}
				if [ ! -e "$p_dir" ]
				then
					mkdir -vp "$p_dir" 
				fi
				moved[$move_file]=`cp -v "$src_file" "$p_dir"`
				let "move_file ++"
			fi
		done
	else
		for src_file_tmp in `find "$src_dir" -type f | tr " " "#"`
		do
			src_file=`echo "$src_file_tmp" | tr "#" " "`
			let "mark=0"
			src_file_md5=$( md5sum "$src_file" | awk '{print $1}')
			for (( i = 0; i < ${#list[*]}; i++ ))
			do
				if [ "${list[$i]}" = "$src_file_md5" ]
				then
					let "mark=1"
					break
				fi
			done
			if [ "$mark" -ne 1 ]
			then
				src_file_tmp=`echo "$src_file" | tr "/" "#"`
				des_dir_temp=`echo "$des_dir" | tr "/" "#"`
				src_dir_temp=`echo "$src_dir" | tr "/" "#"`
				p_dir_tmp=`echo "$src_file_tmp" | sed 's/'"$src_dir_temp"'/'"$des_dir_temp"'/' | tr "#" "/"`
				p_dir=${p_dir_tmp%/*}
				if [ ! -e "$p_dir" ]
				then
					mkdir -vp "$p_dir" 
				fi
				moved[$move_file]=`cp -v "$src_file" "$p_dir"`
				let "move_file ++"
			fi
		done
	fi
	echo "total files: $total_src_file"
	echo "moved files: $move_file"
	for (( i = 0; i < move_file; i++ )) 
	do
		echo "${moved[$i]}"
	done
}

name_()
{
	total_src_file=0
	move_file=0
	src_dir="$1"
	des_dir="$2"
	i=0
	for file_tmp in `find "$des_dir" -type f | tr " " "#"`
	do
		file=`echo "$file_tmp" | tr "#" " "`
		list[$i]="${file##*/}"
		desfiles[$i]="$file"
		let "i++"
	done
	mark=0
	if [[ "$3" =~ "v" ]]
	then
		for src_file_tmp in `find "$src_dir" -type f | tr " " "#"`
		do
			let "total_src_file ++"
			src_file=`echo "$src_file_tmp" | tr "#" " "`
			let "mark=0"
			src_file_md5="${src_file##*/}"
			for (( i = 0; i < ${#list[*]}; i++ ))
			do
				if [ "${list[$i]}" = "$src_file_md5" ]
				then
					let "mark=1"
					echo "$src_file ===eq===>> ${desfiles[$i]}"
					break
				fi
			done
			if [ "$mark" -ne 1 ]
			then
				src_file_tmp=`echo "$src_file" | tr "/" "#"`
				des_dir_temp=`echo "$des_dir" | tr "/" "#"`
				src_dir_temp=`echo "$src_dir" | tr "/" "#"`
				p_dir_tmp=`echo "$src_file_tmp" | sed 's/'"$src_dir_temp"'/'"$des_dir_temp"'/' | tr "#" "/"`
				p_dir=${p_dir_tmp%/*}
				if [ ! -e "$p_dir" ]
				then
					mkdir -vp "$p_dir" 
				fi
				moved[$move_file]=`cp -iv "$src_file" "$p_dir"`
				let "move_file ++"
			fi
		done
	else
		for src_file_tmp in `find "$src_dir" -type f | tr " " "#"`
		do
			let "total_src_file ++"
			src_file=`echo "$src_file_tmp" | tr "#" " "`
			let "mark=0"
			src_file_md5="${src_file##*/}"
			for (( i = 0; i < ${#list[*]}; i++ ))
			do
				if [ "${list[$i]}" = "$src_file_md5" ]
				then
					let "mark=1"
					break
				fi
			done
			if [ "$mark" -ne 1 ]
			then
				src_file_tmp=`echo "$src_file" | tr "/" "#"`
				des_dir_temp=`echo "$des_dir" | tr "/" "#"`
				src_dir_temp=`echo "$src_dir" | tr "/" "#"`
				p_dir_tmp=`echo "$src_file_tmp" | sed 's/'"$src_dir_temp"'/'"$des_dir_temp"'/' | tr "#" "/"`
				p_dir=${p_dir_tmp%/*}
				if [ ! -e "$p_dir" ]
				then
					mkdir -vp "$p_dir" 
				fi
				moved[$move_file]=`cp -iv "$src_file" "$p_dir"`
				let "move_file ++"
			fi
		done
	fi
	echo "total files: $total_src_file"
	echo "moved files: $move_file"
	for (( i = 0; i < move_file; i++ )) 
	do
		echo "${moved[$i]}"
	done
}
if [ $# -lt 3 ]
then
	echo "Usage: $0 src des [option]"
	exit 1
fi
if [ ! -e "$1" ]
then
	echo "src "$1" is not exist!!"
	exit 1
fi
if [ ! -d "$1" ]
then
	echo "src "$1" is not a directory!!"
	exit 1
fi
if [ ! -e "$2" ]
then
	mkdir -pv "$2"
fi
if [[ "$3" =~ "m" ]]
then
	md5_ "$1" "$2" "$3"
elif [[ ""$3"" =~ "n" ]]
then
	name_ "$1" "$2" "$3"
fi
