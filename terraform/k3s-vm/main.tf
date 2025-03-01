module "k3s_vm" {
  source        = "./modules/proxmox_vm"
  vm_count      = 2
  vm_name       = ["master-node", "worker-node"]
  target_nodes  = ["pve1", "pve2"]
  cores         = 2
  memory        = 2048
  disk_size     = "15G"
  storage       = "local-lvm"
  cloudinit_snippet = "local:snippets/qemu-guest-agent.yml"
  proxmox_user  = "your_proxmox_user"
  proxmox_password = "your_proxmox_password"
  ssh_user = "your_user-name"
  ssh_password = "your_password"
  # Pass IP addresses here
  ip_addresses  = ["192.168.2.180", "192.168.2.181"]
  ssh_keys      = file("~/.ssh/id_rsa.pub")
}
