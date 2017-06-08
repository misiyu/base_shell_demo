while [[ true ]]; do
	/opt/nessus/sbin/nessuscli update > /home/misiyu/mix/nessus.log
	echo "check if successful~"
	sleep 1
	eval $(awk 'BEGIN{flag=0} {if($0~/Downloading \(100%\)/) flag=1} END{print "flag="flag}'  /home/misiyu/mix/nessus.log)
	echo "$flag"
	if [[ $flag == 1 ]]; then
		break
	fi
done
echo "$flag"
echo "ok~"
