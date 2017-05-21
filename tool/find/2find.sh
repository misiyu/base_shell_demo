find . -type f -print -exec echo "============================" \; -exec cat {} \; -exec echo "---------------" \;

find . -mtime -1 -type f -print -exec cat {} \;
