# consul-agent
#### consul validate(config.json)
```
consul validate /etc/consul.d/config.json
```
#### consul validate
```
consul validate /etc/consul.d/
```
#### consul start
```
consul agent -config-dir=/etc/consul.d >> /dev/null 2>&1 &
```
