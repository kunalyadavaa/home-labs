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
home-labs/
│── ansible/           # Ansible playbooks and roles
│── terraform/         # Terraform configuration for VM provisioning
│── kubernetes/        # Kubernetes (K3s) setup and manifests
│── docs/              # Documentation, guides, and architecture diagrams
│── scripts/           # Helper scripts for automation
│── .gitignore         # Files to ignore in version control
│── README.md          # Project documentation
│── LICENSE            # License for the repository
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
3. **Run Ansible Playbooks**
   ```bash
   cd ansible
   ansible-playbook -i inventory setup.yaml
   ```
4. **Deploy Kubernetes (K3s)**
   ```bash
   cd kubernetes/k3s-setup
   ansible-playbook deploy-k3s.yaml
   ```

## Diagrams & Documentation

Check the `docs/` directory for architecture diagrams and setup instructions.

## Contributing

If you find this project useful and want to contribute, feel free to fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


