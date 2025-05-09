# 📘 Infrastructure Automation

## 📝 Overview

This project 🌐 is designed to automate infrastructure management ⚙️ and application deployment 📱 in a Proxmox environment. With the help of Terraform 🌍, Ansible 🛠️, Kubernetes (k3s) 🐳, ArgoCD 🚀, and Helm, it enables efficient cluster operations and automated maintenance. The primary goal is to simplify deployment, testing 🧪, and application management processes, making DevOps operations reliable and scalable.

---

## 🗂️ Project Structure

```
├── 📘 README.md
├── 📁 ansible
│   ├── 📄 inventory.yml
│   └── 📄 update_and_configure.yml
├── 📁 app
│   ├── 🐳 Dockerfile
│   ├── 📜 app.py
│   ├── 📄 requirements.txt
│   ├── 📂 argocd
│   │   ├── 📄 app-dev.yaml
│   │   └── 📄 app-prod.yaml
│   └── 📂 k8s
│       ├── 📁 dev
│       └── 📁 prod
├── 📁 helm
│   ├── 📁 argocd
│   │   └── 📄 values.yaml
│   ├── 📁 infra-nginx-ingress-dev
│   │   └── 📄 values.yaml
│   └── 📁 infra-nginx-ingress-trial
│       └── 📄 values.yaml
├── 📁 screen
└── 📂 terraform
    └── 📁 proxmox
        ├── 📄 credentials.auto.tfvars
        ├── 📄 credentials.auto.tfvars.template
        ├── 📄 main.tf
        ├── 📄 variables.tf
        ├── 📂 module
        └── 📄 terraform.tfstate
```

* **`ansible/`**: Automates Ubuntu server setup, installs k3s, nginx, iptables, user setup, Zabbix, Fail2Ban, etc.
* **`terraform/`**: Provisions virtual machines in Proxmox.
* **`helm/`**: Value files for deploying `nginx-ingress`, `argocd`, `external-dns`.
* **`app/`**: Simple Python application with containerization, Kubernetes manifests for dev/prod, and ArgoCD app definitions.

---

## ⚙️ Infrastructure Components

* **Proxmox** — infrastructure virtualization
* **Terraform** — VM lifecycle management
* **Ansible** — automated environment and k3s cluster setup
* **Helm** — package manager for Kubernetes
* **ArgoCD** — GitOps-based CI/CD platform
* **k3s** — lightweight Kubernetes distribution
* **nginx-ingress** — proxy access to services (two ingressClasses: `nginx-trial`, `nginx-dev`)

---

## 🚀 Result

* 🌐 Dev app access: [http://10.0.0.40:31080](http://10.0.0.40:31080)
* 🌐 Prod app access: [http://10.0.0.40:32080](http://10.0.0.40:32080)
* 🎛️ ArgoCD UI: [http://10.0.0.40:32080/applications](http://10.0.0.40:32080/applications)

---

## 📷 Proof of Execution

* Helm chart deployments
* ![ArgoCD](screens/1.png)
* Running ingress controllers
* ![ArgoCD](screens/2.png)
* ArgoCD with `Healthy` and `Synced` status
* ![ArgoCD](screens/3.png)
* HTTP responses from dev/prod apps
* ![ArgoCD](screens/4.png)

---

## 👨‍💻 Author

**DevOps Engineer**: Oleksander Skibchyk
**Assessment for**: Payever Engineering Assignment
