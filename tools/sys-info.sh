#!/bin/bash

echo "===Syestem Info==="
echo "OS: $(uname -a)"
echo "Disk Usage:"
df -h

echo

echo "Memory Usage:"
free -h

echo

echo "Top Processes:"
top -bn1 | head -n 10

echo "CPU Load:"
uptime
