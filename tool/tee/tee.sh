echo "aaa" | tee tmp
#tee从标准输出读取文件，输出到标准输出和文件
#有时会发现上述命令后屏幕有输出，但文件内容为空，此时可能是由于some_command输出的字符从std error文件描述符输出，需要先将std error的输出导向到std output：
some_command 2>&1 | tee output.txt
#其中，2代表std error，1代表std output，>&是linux中fd到fd的重定向操作符
