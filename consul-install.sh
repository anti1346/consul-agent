#!/bin/bash

#####consul releases
# https://releases.hashicorp.com/consul

curl -sSL https://releases.hashicorp.com/consul/1.14.4/consul_1.14.4_linux_amd64.zip -o /tmp/consul.zip

unzip /tmp/consul.zip -d /tmp/

chmod +x /tmp/consul

mv /tmp/consul /usr/local/bin/consul

mkdir -p /etc/consul.d /opt/consul /var/log/consul

rm -f /tmp/consul.zip

#####consul agent start
# consul agent -config-dir=/etc/consul.d >> /dev/null 2>&1 &

#####consul members
# consul members
