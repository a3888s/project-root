#============================= Змінні для Proxmox =====================================#
#======================================================================================#

variable "proxmox_api_url" {
  type = string
  # URL для підключення до API Proxmox
}

variable "proxmox_api_token_id" {
  type = string
  # Ідентифікатор токена для доступу до API Proxmox
}

variable "proxmox_api_token_secret" {
  type = string
  # Секретний ключ токена для доступу до API Proxmox
}

#============================= Змінні для k3s Node 1 ==================================#
#======================================================================================#

variable "k3s_master_target_node" {
  # Вузол Proxmox, на якому буде розміщено VM
}

variable "k3s_master_vmid" {
  # Унікальний ідентифікатор віртуальної машини
}

variable "k3s_master_desc" {
  # Опис віртуальної машини
}

variable "k3s_master_clone" {
  # Шаблон, з якого буде клонуватися VM
}

variable "k3s_master_agent" {
  # Стан QEMU Agent (0 - вимкнено, 1 - увімкнено)
}

variable "k3s_master_os_type" {
  # Тип операційної системи
}

variable "k3s_master_cores" {
  # Кількість ядер процесора
}

variable "k3s_master_sockets" {
  # Кількість сокетів процесора
}

variable "k3s_master_memory" {
  # Обсяг оперативної пам’яті в МБ
}

variable "k3s_master_name" {
  # Ім'я віртуальної машини
}

variable "k3s_master_ipconfig0" {
  # Мережеві налаштування (IP, шлюз)
}

variable "k3s_master_ciuser" {
  # Користувач для Cloud-Init
}

variable "k3s_master_nameserver" {
  # DNS-сервер
}

variable "k3s_master_sshkeys" {
  # SSH ключі для доступу
}

variable "k3s_master_disk_storage" {
  # Сховище для дисків
}

variable "k3s_master_disk_size" {
  # Розмір диска в ГБ
}

variable "k3s_master_cloudinit_cdrom_storage" {
  # Сховище для Cloud-Init CD-ROM
}

variable "k3s_master_scsihw" {
  # Тип контролера SCSI
}

variable "k3s_master_bootdisk" {
  # Завантажувальний диск
}