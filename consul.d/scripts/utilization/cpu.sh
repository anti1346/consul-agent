#!/bin/bash

cpu_usage=$(top -b -n 1 | grep -i cpu\(s\)| awk -F, '{print $4}' | tr -d "%id," | awk '{print 100-$1}')

if [ 1 -eq "$(echo "${cpu_usage} >= 80" | bc)" ]; then
    echo "Critical state"
    echo "CPU 사용율은 약 $cpu_usage% 입니다."
    exit 2
elif [ 1 -eq "$(echo "${cpu_usage} >= 70" | bc)" ]; then
    echo "Warning state"
    echo "CPU 사용율은 약 $cpu_usage% 입니다."
    exit 1
else
    echo "CPU 사용율은 약 $cpu_usage% 입니다."
    exit 0
fi