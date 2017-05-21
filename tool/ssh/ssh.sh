ssh -q -l ubuntu -p 22 119.29.161.130
# ssh -q -l <username> -p <port_num> <IP>

scp -P 22 -r ubuntu@119.29.161.130:/home/ubuntu /home/misiyu/mix/
#-v 和大多数 linux 命令中的 -v 意思一样 , 用来显示进度 . 可以用来查看连接 , 认证 , 或是配置错误 .
#-C 使能压缩选项 .
#-4 强行使用 IPV4 地址 .
#-6 强行使用 IPV6 地址 .
