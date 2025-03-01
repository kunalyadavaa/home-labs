# Terraform Proxmox K3s VM Deployment

## Overview
This Terraform module automates the provisioning of **K3s cluster virtual machines** on **Proxmox VE** using **Cloud-Init**. It creates a **master node** and a **worker node** with user-defined configurations.

## Features
- **Automated VM creation** using Cloud-Init
- **Dynamic IP assignment** via module variables
- **Secure SSH key injection**
- **Custom resource allocation** (CPU, RAM, Storage)
- **Supports multiple Proxmox nodes**

## Prerequisites
Ensure the following before running the Terraform module:
- **Proxmox VE** with API access enabled
- **Terraform** (v1.6.0 or later)
- **Cloud-Init template** created on Proxmox
- **SSH key pair** for authentication

## Installation
### Clone the Repository
```bash
git clone https://github.com/yourusername/k3s-vm-terraform.git
cd k3s-vm-terraform
```

### Configure Terraform Variables
Update `main.tf` with your desired configuration:
```hcl
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
  proxmox_user  = "root@pam"
  proxmox_password = "yourpassword"
  ssh_user      = "shahzaib"
  ssh_password  = "admin"
  ssh_keys      = file("~/.ssh/id_rsa.pub")
  ip_addresses  = ["192.168.2.180", "192.168.2.181"]
}
```

### Initialize Terraform
```bash
terraform init
```

### Plan Deployment
```bash
terraform plan
```

### Apply Deployment
```bash
terraform apply -auto-approve
```

## Verification
After deployment, verify the VMs:
```bash
terraform output vm_ipv4
```
Check on Proxmox Web UI or SSH into the master node:
```bash
ssh shahzaib@192.168.2.180
```

## Cleanup
To destroy the created VMs:
```bash
terraform destroy -auto-approve
```

## Notes
- Ensure Cloud-Init template exists before running Terraform.
- Update Proxmox API credentials securely using environment variables instead of hardcoding passwords.
- Modify variables to scale VMs dynamically.

## License
This project is licensed under the MIT License.

