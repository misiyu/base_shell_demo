touch if_file1
if [ -e if_file1 ]
then
	echo "file named if_file1 is created successfully!"
fi

if [ -r if_file1 ]
then
	echo "if_file1 can read."
fi
if [ -w if_file1 ]
then
	echo "if_file1 can write."
fi
if [ -x if_file1 ]
then
	echo "if_file1 can execute."
fi
