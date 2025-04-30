terraform {
  required_providers {
    infisical = {
      source  = "Infisical/infisical"
      version = "0.15.9"
    }

    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

provider "infisical" {
  host  = var.infisical_host
  token = var.infisical_token
}

provider "proxmox" {
  pm_api_url      = data.infisical_secret.proxmox_api_url.secret_value
  pm_user         = data.infisical_secret.proxmox_user.secret_value
  pm_password     = data.infisical_secret.proxmox_password.secret_value
  pm_tls_insecure = true
}