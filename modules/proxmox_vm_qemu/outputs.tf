output "vm_id" {
  description = "The ID of the created virtual machine"
  value       = proxmox_vm_qemu.vm.vmid
}
output "vm_name" {
 description = "The name of the created virtual machine"
 value = proxmox_vm_qemu.vm.name
}
