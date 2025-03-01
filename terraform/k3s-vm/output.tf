output "vm_ipv4" {
  value = proxmox_vm_qemu.ansible[*].default_ipv4_address
}

