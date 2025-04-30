data "infisical_secret" "proxmox_api_url" {
  secret_name = "proxmox/api_url"
}

data "infisical_secret" "proxmox_user" {
  secret_name = "proxmox/user"
}

data "infisical_secret" "proxmox_password" {
  secret_name = "proxmox/password"
}
