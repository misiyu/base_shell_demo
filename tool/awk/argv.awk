#!/usr/bin/awk -f
BEGIN \
{	
	for(x=0;x<ARGC;x++)
			print ARGV[x]
			print ARGC
	}
#./argv.awk xyz n=99 "hello world"
