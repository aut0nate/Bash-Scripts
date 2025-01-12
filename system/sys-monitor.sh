#!/bin/bash
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | sed 's/$/%/'
echo "Memory Usage:"
free -h | awk '/Mem:/ {print $3 "/" $2}'