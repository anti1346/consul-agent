#!/bin/bash

localip=$(ip route get 1.2.3.4 | awk '{ print $7 }' | egrep -v '^$')
gatewayip=$(ip route get 1.2.3.4 | awk '{ print $3 }' | egrep -v '^$')
nameserverip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }' | egrep -v '^$')

case $1 in
    localip)
        echo "local ip ping test..."
        ping -c1 ${localip}
        ;;
    gatewayip)
        echo "gateway ip ping test..."
        ping -c1 ${gatewayip}
        ;;
    nameserverip)
        echo "nameserver ip ping test..."
        ping -c1 ${nameserverip}
        ;;
    *)
        echo "I'm sorry. (localip|gatewayip|nameserverip)"
        ;;
esac