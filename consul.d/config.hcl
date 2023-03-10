datacenter = "datacenter1"
data_dir = "/opt/consul"
bind_addr = "0.0.0.0"
advertise_addr = "consul_Agent"
encrypt = "encrypt_Server",
retry_join = ["consul_Server1", "consul_Server2", "consul_Server3"]
enable_local_script_checks = true
enable_script_checks = true
log_level = "info"
log_file = "/var/log/consul/"
log_rotate_duration = "24h"
log_rotate_max_files = 30
addresses {
    http = "0.0.0.0"
}
connect {
    enabled = true
}