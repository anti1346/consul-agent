## Consul HTTP API
https://developer.hashicorp.com/consul/api-docs/agent

##### consul nodes
```
curl -s localhost:8500/v1/catalog/nodes | jq
```
##### consul nodes leader
```
curl -s localhost:8500/v1/status/leader
```


https://developer.hashicorp.com/consul/docs/discovery/dns

##### consul domain 확인(ptr 레코드 질의)
###### dig @127.0.0.1 -p 8600 -x {Consul Member IP}
```
dig @127.0.0.1 -p 8600 -x {Consul Member IP}
```
