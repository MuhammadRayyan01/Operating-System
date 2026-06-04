#!/bin/bash
# monitoring RAM

# mengambil data memory total dan memory available dari /proc/meminfo
MemTotal=$(cat /proc/meminfo | grep "MemTotal" | awk '{print $2}')
MemAvailable=$(cat /proc/meminfo | grep "MemAvailable" | awk '{print$2}')
# kalkulasi persentase penggunaan RAM
Penggunaan=$(echo "scale=2; ($MemTotal - $MemAvailable) / $MemTotal * 100" | bc)

if [ $(echo "$Penggunaan > 90" | bc) -eq 1 ]; then
echo "$(date) - peringatan kritis " >> /var/log/sys_monitor.log
else echo "$(date) - status aman"
fi
