#================================ Proxmox =============================================#
#======================================================================================#
terraform {
  required_version = ">= 0.13.0" # Мінімальна версія Terraform

  required_providers {
    proxmox = {
      source  = "telmate/proxmox" # Джерело провайдера для Proxmox
      version = "3.0.1-rc1"       # Версія провайдера
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url           # URL API для Proxmox
  pm_api_token_id     = var.proxmox_api_token_id      # ID токена для доступу
  pm_api_token_secret = var.proxmox_api_token_secret  # Секретний ключ токена
}


#============================= Змінні для k3s Node 1 ==================================#
#======================================================================================#
module "k3s_master" {
  source = "./module/vm" # Шлях до модуля для створення VM

  target_node              = var.k3s_master_target_node  # Вузол для VM
  vmid                     = var.k3s_master_vmid         # Унікальний ID VM
  desc                     = var.k3s_master_desc         # Опис VM
  clone                    = var.k3s_master_clone        # Шаблон для клонування
  agent                    = var.k3s_master_agent        # Налаштування QEMU Agent
  os_type                  = var.k3s_master_os_type      # Тип ОС
  cores                    = var.k3s_master_cores        # Кількість ядер
  sockets                  = var.k3s_master_sockets      # Кількість сокетів
  memory                   = var.k3s_master_memory       # Обсяг оперативної пам'яті
  name                     = var.k3s_master_name         # Ім'я VM
  ipconfig0                = var.k3s_master_ipconfig0    # Мережеві налаштування
  ciuser                   = var.k3s_master_ciuser       # Користувач для Cloud-Init
  nameserver               = var.k3s_master_nameserver   # DNS сервер
  sshkeys                  = var.k3s_master_sshkeys      # SSH ключі
  disk_storage             = var.k3s_master_disk_storage # Сховище для дисків
  disk_size                = var.k3s_master_disk_size    # Розмір диска
  cloudinit_cdrom_storage  = var.k3s_master_cloudinit_cdrom_storage # Сховище Cloud-Init
  scsihw                   = var.k3s_master_scsihw       # Тип SCSI-контролера
  bootdisk                 = var.k3s_master_bootdisk     # Завантажувальний диск
}