0 0 1 1 * /usr/bin/printerbanner "happy new year" > /dev/console
# 分钟
# 小时
# 一个月中的天
# 一年中的月号
# 一个星期中的星期几
# 命令 需要绝对路径

echo "/usr/local/bin/" | at now + 10 minutes

at now + 10 minutes Enter

*/5 * * * * /home/oracle/scripts/monitoring_alert_log.sh >/dev/null 2>&1
#表示每5分钟执行一次脚本/home/oracle/scripts/monitoring_alert_log.sh
