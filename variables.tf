# Namespace where to onboard our Application
#variable "namespace" {
#  description = "namespace where all work will happen"
#  default     = "research"
#}

variable "policy_name" {
  description = "Name of the policy to be created"
  default     = "k8s"
}

variable "policy_code" {
  description = "Content of the policy to be created"
  default     = <<EOT
path "kv/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
path "secret/data/apikey" {
  capabilities = ["read","list"]
}
path "db/creds/dev" {
  capabilities = ["read"]
}
path "pki_int/issue/*" {
  capabilities = ["create", "update"]
}
path "sys/leases/renew" {
  capabilities = ["create"]
}
path "sys/leases/revoke" {
  capabilities = ["update"]
}
path "sys/renew/*" {
  capabilities = ["update"]
}
EOT
}

# Vault Provider Configuration
variable "role_id" {}
variable "secret_id" {}

variable "app_role_mount_point" {
  description = "Mount point of AppRole secret engine"
  default     = "approle"
}

variable "default_lease_ttl_seconds" {
  description = "Default duration of lease validity"
  default     = 3600
}

variable "max_lease_ttl_seconds" {
  description = "Maximum duration of lease validity"
  default     = 10800
}
