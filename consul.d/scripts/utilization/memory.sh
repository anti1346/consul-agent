#!/bin/bash

###free
memory_utilization=$(free | awk 'NR==2{printf "%d", $3*100/$2}')

if [ $memory_utilization -gt "90" ]; then
    echo "Critical state"
    echo "메모리 사용율은 약 $memory_utilization% 입니다."
    exit 2
elif [ $memory_utilization -gt "80" ]; then
    echo "Warning state"
    echo "메모리 사용율은 약 $memory_utilization% 입니다."
    exit 1
else
    echo "메모리 사용율은 약 $memory_utilization% 입니다."
    exit 0
fi