BEGIN{
	FS = "\n";
	RS = ""
	}
	{
		print $1, $NF
		}
# FS 把域分隔符定义为换行符
# RS 把记录分隔符定义为空行
