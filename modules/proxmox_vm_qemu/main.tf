resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  target_node = var.target_node
  vmid        = var.vmid

  clone       = var.clone
  clone_wait  = var.clone_wait
  
  disk {
    slot    = 0
    size    = var.disk_size_gb
    type    = var.disk_type
    storage = var.storage
  }

  cores   = var.cores
  sockets = var.sockets
  memory  = var.memory
  
  network {
    bridge    = var.bridge
    model     = var.network_model
  }

  cloudinit = {
    enabled   = var.enable_cloudinit
    hostname  = var.hostname
    ipconfig0 = var.ipconfig0
    users     = var.users
  }

  bootdisk  = var.bootdisk
  os        = var.os
  agent     = var.agent
}