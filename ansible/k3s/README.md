# K3s Cluster Setup with Ansible

## Overview
This Ansible playbook automates the installation of a **K3s** cluster with one master node and one worker node.

## Features
- **Automated K3s installation**
- **Single master and one worker setup**
- **Token-based worker node registration**
- **Lightweight Kubernetes deployment**

## Prerequisites
Ensure you have the following before running the playbook:
- **Ansible** installed on your control node
- **SSH access** to master and worker nodes
- **Ubuntu/Debian-based OS** on target nodes

## Inventory File Example
Create an `inventory.ini` file with the target nodes:
```ini
[master]
master ansible_host=<MASTER_IP> ansible_user=root

[worker]
worker ansible_host=<WORKER_IP> ansible_user=root
```

## Playbook Details
### Master Node Setup
- Installs K3s master with necessary taints and configures kubeconfig permissions.
- Retrieves the cluster token for worker registration.

### Worker Node Setup
- Joins the worker node to the cluster using the retrieved token.

## Usage
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/k3s-ansible.git
   cd k3s-ansible
   ```

2. **Run the playbook**
   ```bash
   ansible-playbook -i inventory.ini k3s-setup.yaml
   ```

## Verification
After deployment, verify the cluster:
```bash
kubectl get nodes
```

## Notes
- Ensure ports `6443`, `8472`, and `10250` are open between nodes.
- Modify the playbook as needed for a multi-node setup.

## License
This project is licensed under the MIT License.

