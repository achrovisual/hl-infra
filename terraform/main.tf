terraform {
  required_providers {
    infisical = {
      source = "Infisical/infisical"
      version = "0.15.9"
    }

    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}