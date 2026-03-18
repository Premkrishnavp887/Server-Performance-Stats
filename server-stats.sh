#!/bin/bash

echo "========================================="
echo "       SERVER PERFORMANCE STATS"
echo "========================================="

# ---------------- CPU USAGE ----------------
echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "Used: " 100 - $8 "%"}'

# ---------------- MEMORY USAGE ----------------
echo ""
echo "Memory Usage:"
free -m | awk 'NR==2{
    used=$3; free=$4; total=$2;
    printf "Used: %dMB (%.2f%%)\n", used, used/total*100;
    printf "Free: %dMB (%.2f%%)\n", free, free/total*100;
}'

# ---------------- DISK USAGE ----------------
echo ""
echo "Disk Usage:"
df -h / | awk 'NR==2{
    printf "Used: %s (%s)\n", $3, $5;
    printf "Free: %s\n", $4;
}'

# ---------------- TOP CPU PROCESSES ----------------
echo ""
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# ---------------- TOP MEMORY PROCESSES ----------------
echo ""
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# ---------------- STRETCH GOALS ----------------
echo ""
echo "Additional Stats:"

# OS Version
echo "OS:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2

# Uptime
echo ""
echo "Uptime:"
uptime -p

# Load Average
echo ""
echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'

# Logged in users
echo ""
echo "Logged in users:"
who | wc -l

# Failed login attempts (Debian/Ubuntu logs)
echo ""
echo "Failed login attempts:"
grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l

echo ""
echo "========================================="
