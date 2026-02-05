#!/bin/bash

echo "===== System Health Snapshot ====="
echo "Date & Time : $(date)"
echo "Hostname    : $(hostname)"
echo "Current User: $(whoami)"
echo

echo "Disk Usage (Root /)"
df -h / | awk 'NR==2 {print "Total: "$2" | Used: "$3" | Free: "$4" | Usage: "$5}'
echo "=================================="
