output "vm_ips" {
  value = proxmox_vm_qemu.k3s[*].default_ipv4_address
}
