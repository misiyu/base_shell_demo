echo "message you want to play"
read message
echo "font color (1-8) or colors"
read fontcolor
case $fontcolor in 
	1 | black)
	       fStr="30"
	       ;;
	2 | red)
	       fStr="31"
	       ;;
	3 | green)
	       fStr="32"
	       ;;
	4 | brown)
	       fStr="33"
	       ;;
	5 | blue)
	       fStr="34"
	       ;;
	6 | purple)
	       fStr="35"
	       ;;
	7 | cyan)
	       fStr="36"
	       ;;
	8 | white)
	       fStr="37"
	       ;;
	* )
		fStr="0"
		;;
esac

echo "input back color or (1-8)"
read backcolor
case $backcolor in 
	1 | black)
	       bStr="40"
	       ;;
	2 | red)
	       bStr="41"
	       ;;
	3 | green)
	       bStr="42"
	       ;;
	4 | brown)
	       bStr="43"
	       ;;
	5 | blue)
	       bStr="44"
	       ;;
	6 | purple)
	       bStr="45"
	       ;;
	7 | cyan)
	       bStr="46"
	       ;;
	8 | white)
	       bStr="47"
	       ;;
	* )
		bStr="0"
		;;
esac

echo "input font style or (1-4)"
read style
case $style in
	1 | bold)
		sStr="1"
		;;
	2 | underline)
		sStr="4"
		;;
	3 | blink)
		sStr="5"
		;;
	4 | inverse)
		sStr="5"
		;;
	*)
		sStr="0"
		;;
esac
if [ ${bStr} -eq 0 ] && [ ${sStr} -eq 0 ]
then
	rtnString="\e[{fStr}m"
elif [ ${bStr} -eq 0 ]
then
	rtnString="\e[{fStr}m;${sStr}m"
elif [ ${sStr} -eq 0 ]
then
	rtnString="\e[{fStr}m;${bStr}m"
else
	rtnString="\e[${fStr};${bStr};${sStr}m"
fi

echo -e "${rtnString}$message\e[m"
