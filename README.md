# consul-agent
#### consul validate
```
consul validate /etc/consul.d/config.json
```
#### consul start
```
consul agent -config-dir=/etc/consul.d >> /dev/null 2>&1 &
```
