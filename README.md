# EasyPay-HA

EasyPay — Highly-available infra templates (Ansible + Kubernetes manifests + ETCD backup scripts).

## Folders
- ansible/ → EC2 provision + Docker/Kubernetes install playbooks
- k8s/ → Kubernetes YAMLs (namespace, RBAC, networkpolicy)
- etcd/ → ETCD snapshot script
- docs/ → architecture + notes

## Steps
1. Provision EC2 using Ansible
2. Install Docker + Kubernetes
3. Apply Kubernetes manifests
4. Setup ETCD snapshot + auto scaling
