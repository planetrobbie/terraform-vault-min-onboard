resource "vault_raft_snapshot_agent_config" "local_backups" {
  name             = "local"
  interval_seconds = 86400 # 24h
  retain           = 7
  path_prefix      = "/Users/sebbraun/in/code/vault/"
  storage_type     = "local"

  # Storage Type Configuration
  local_max_space = 10000000
}
