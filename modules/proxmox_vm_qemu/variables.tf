variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
}
variable "target_node" {
  type        = string
  description = "The Proxmox node to create the VM on"
}
variable "vmid" {
  type        = number
  description = "The unique ID for the VM"
}
variable "clone" {
  type        = string
  description = "The name of the Proxmox template to clone"
}
variable "clone_wait" {
  type        = number
  description = "Time to wait for cloning to finish (in minutes)"
  default     = 5
}
variable "disk_size_gb" {
  type        = number
  description = "The size of the disk in GB"
  default     = 32
}
variable "disk_type" {
  type        = string
  description = "The type of disk (e.g., scsi, ide, virtio)"
  default     = "scsi"
}
variable "storage" {
  type        = string
  description = "The Proxmox storage pool to use"
}
variable "cores" {
  type        = number
  description = "The number of CPU cores"
  default     = 2
}
variable "sockets" {
  type        = number
  description = "The number of CPU sockets"
  default     = 1
}
variable "memory" {
  type        = number
  description = "The amount of memory in MB"
  default     = 2048
}
variable "bridge" {
  type        = string
  description = "The Proxmox bridge network to connect to"
}
variable "network_model" {
  type        = string
  description = "The network card model (e.g., virtio, e1000)"
  default     = "virtio"
}
variable "enable_cloudinit" {
  type        = bool
  description = "Enable Cloud-Init"
  default     = false
}
variable "hostname" {
  type        = string
  description = "The hostname for the VM"
  default     = "my-vm"
}
variable "ipconfig0" {
  type        = string
  description = "The IP configuration for the primary network interface (e.g., ip=192.168.1.10/24,gw=192.168.1.1)"
  default     = null
}
variable "users" {
  type = list(object({
    name     = string
    password = string
    groups   = string
  }))
  description = "List of users to create via Cloud-Init"
  default     = []
}
variable "bootdisk" {
  type        = string
  description = "The disk to boot from"
  default     = "scsi0"
}
 variable "os" {
 type        = string
 description = "The Operating System type (e.g., l26 for Linux 2.6)"
 default     = "l26"
}
variable "agent" {
  type        = number
  description = "Enable the QEMU Guest Agent (0 or 1)"
  default     = 1
}
