# 带颜色的脚本

cfont()
{
	while [[ $# -gt 0 ]]; do
		case $1 in 
			-b)
				echo -ne " "
				;;
			-t)
				echo -ne "\t"
				;;
			-n)
				echo -ne "\n"
				;;
			-black)
				echo -ne "\033[30m"
				;;
			-red)
				echo -ne "\033[31m"
				;;
			-green)
				echo -ne "\033[32m"
				;;
			-yellow)
				echo -ne "\033[33m"
				;;
			-blue)
				echo -ne "\033[34m"
				;;
			-purple)
				echo -ne "\033[35m"
				;;
			-cyan)
				echo -ne "\033[36m"
				;;
			-white|-gray)
				echo -ne "\033[37m"
				;;
			-reset)
				echo -ne "\033[0m"
				;;
			-h|-help|--help)
				echo "Usage: 5.sh color message color message color message color message color message"
				;;
			*)
				echo -ne "$1"
				;;
		esac
		shift

	done
}

cfont -green "Hello " -red "everyone"
echo 
