#!/bin/bash

for filesystem in `df -Th | egrep -v '^Filesystem|tmpfs|cdrom|overlay2' | awk '{print $7}'`
do
    check_usage=`df -Th / | egrep -v '^Filesystem|tmpfs|cdrom|overlay2' | awk '{print $6}' | tr -d '%'`
    if [ $check_usage -ge 90 ]; then
        echo "Critical state"
        echo "$filesystem 디스크 사용량은 약 $check_usage% 입니다."
        exit 2
    elif [ $check_usage -ge 80 ]; then
        echo "Warning state"
        echo "$filesystem 디스크 사용량은 약 $check_usage% 입니다."
        exit 1
    else
        echo "디스크 사용 현황입니다."
        df -Th | egrep -v '^Filesystem|tmpfs|cdrom|overlay2' | awk '{print $7 "\t" $6}'
        exit 0
    fi
done