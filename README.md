# Home Labs with Ansible, Terraform, and Kubernetes

## Overview

This repository contains my home lab setup using **Proxmox, Terraform, Ansible, and Kubernetes (K3s)**. The goal is to automate infrastructure deployment and configuration while documenting everything for learning and sharing.

## Features

- **Automated VM provisioning** with Terraform on Proxmox
- **Configuration management** using Ansible
- **K3s deployment** on multiple nodes
- **Infrastructure as Code (IaC)** best practices
- **Fully documented setup** for reproducibility

## Repository Structure

```
├── LICENSE
├── README.md
├── ansible
│   └── k3s
│       ├── README.md
│       ├── inventory.ini
│       └── k3s.yml
├── proxmox-cloudint-templete
│   └── README.md
└── terraform
    └── k3s-vm
        ├── README.md
        ├── main.tf
        └── modules
            └── proxmox_vm
                ├── main.tf
                ├── output.tf
                ├── provider.tf
                └── variables.tf
```

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Proxmox** (for VM management)
- **Terraform** (for infrastructure provisioning)
- **Ansible** (for configuration automation)
- **K3s** (lightweight Kubernetes)

### Setup Guide

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/home-labs.git
   cd home-labs
   ```
2. **Provision VMs with Terraform**
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```

3. **Deploy Kubernetes (K3s)**
   ```bash
   cd ansible/k3s
   ansible-playbook -i inventory k3s.yaml
   ```

## Diagrams & Documentation

Check the `docs/` directory for architecture diagrams and setup instructions.

## Contributing

If you find this project useful and want to contribute, feel free to fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


