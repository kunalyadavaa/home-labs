# Proxmox VM Deployment with Terraform

## Overview
This repository contains Terraform configurations for deploying virtual machines on **Proxmox**. The setup provisions one master node and one worker node across two different Proxmox hosts.

## Features
- **Automated VM provisioning** on Proxmox
- **Cloud-init configuration** for seamless setup
- **Pre-configured networking and SSH access**
- **Automatic VM startup and reboot**

## Repository Structure
```
terraform-proxmox/
│── main.tf          # Terraform configuration for VM deployment
│── provider.tf      # Proxmox provider settings
│── output.tf        # Output definitions for VM details
│── .gitignore       # Files to ignore in version control
│── README.md        # Project documentation
```

## Prerequisites
Ensure you have the following before running Terraform:
- **Proxmox server** with API access enabled
- **Terraform** installed on your machine
- **SSH access** to Proxmox nodes

## VM Details
| Name        | Proxmox Node | IP Address       | Cores | RAM  | Disk  |
|------------|-------------|------------------|-------|------|-------|
| master-node | pve1        | 192.168.2.180    | 2     | 2048 | 15GB  |
| worker-node | pve2        | 192.168.2.181    | 2     | 2048 | 15GB  |

## Usage
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/terraform-proxmox.git
   cd terraform-proxmox
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Apply the Terraform configuration**
   ```bash
   terraform apply -auto-approve
   ```

4. **Retrieve VM IP addresses**
   ```bash
   terraform output
   ```

## Notes
- Ensure Proxmox nodes are accessible over the network.
- Modify `main.tf` to adjust VM settings if needed.

## License
This project is licensed under the MIT License.

