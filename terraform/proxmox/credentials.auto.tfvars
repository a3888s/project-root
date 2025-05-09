#============================= Змінні для Proxmox =====================================#
#======================================================================================#

proxmox_api_url = "https://pve.a3888s.pp.ua/api2/json" # URL для підключення до Proxmox API
proxmox_api_token_id = "terraform@pam!terraform"       # Ідентифікатор токена для доступу
proxmox_api_token_secret = "7a1d7913-4822-4d33-ace6-fe0f0506c3b6" # Секретний ключ токена

#============================= Змінні для k3s Node 1 ==================================#
#======================================================================================#

k3s_master_target_node          = "pve"                          # Вузол Proxmox, де буде розміщено VM
k3s_master_vmid                 = 2000                           # Унікальний ідентифікатор VM
k3s_master_desc                 = "Cloudinit Ubuntu 24.04"       # Опис віртуальної машини
k3s_master_clone                = "ubuntu-24.04-minimal-cloudimg-amd64" # Шаблон для клонування
k3s_master_agent                = 0                              # Використання QEMU Agent (0 - вимкнено)
k3s_master_os_type              = "cloud-init"                   # Тип ОС
k3s_master_cores                = 2                              # Кількість ядер процесора
k3s_master_sockets              = 1                              # Кількість сокетів процесора
k3s_master_memory               = 2048                           # Обсяг оперативної пам'яті (у МБ)
k3s_master_name                 = "k3s-node-1"               # Ім'я віртуальної машини
k3s_master_ipconfig0            = "ip=10.0.0.40/24,gw=10.0.0.1"  # Мережеві налаштування (IP та шлюз)
k3s_master_ciuser               = "a3888s"                       # Користувач для Cloud-Init
k3s_master_nameserver           = "10.0.0.1"                     # DNS-сервер
k3s_master_sshkeys              = <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCWHMuptktUTjQjWmvQhTqA7vvA4NCqaoOQLEk+pGuLVsLxC2oVlDdwgSDMOHMKCdBAVHRRgAFaQvqFNpBN/SJUaVDnCNfC0vP5y5nPyeuCs7JBSp6n48vsi5BnbD3FC2nBRXvdU3ghJ4r2OMxAadSllBuG+c8UzShCpdkUuBxmw7N62NduR2ohjePhpVmmjyG3dFeGu/ptJZ2Xi4p9papj/jZnG6+piiv0KAWy8ynWP/RjvgleEyQ2n5ghsXYuXoVlinQhw0ESWi3lHqjxfDdGE4rZcs/TZWKT2HrbxqwbpdsHftUwJBjXh5U39tn7ZaCnOh+cvqbjKeyA+rypv8vVACxHrzSuFI/Zw3gnF3gF6afvtrGzwszMEm+BtAmajEg85EZLNtiFG4h8eAVHM8A2TkOOvhxS5iML6p1+Y8F/0brM17hKqhd92BEkRtreo37TPZoPLzW83K4lO6dVaZ2TiWFejf/NJ6pJHR978NsCpXwJ+FSxmCTfS3gP5c8qg+iJGzrZ7K+BZYK+b8JnWLYA1gHCuecfcqizwp3D1c/EbRP+eiILF2RoF3ahO1fHzL7RCiJwjcQn5CWUHoQSnLh+/MUgCFnXF+GzuHq/d7eYo6kuNFIHOlJgsyUXocG9didqv/FTxTBCbFs3zarM4FWw0sgnZ1C9+d0f+h5TLYC08Q== sowdirect@gmail.com
EOF
k3s_master_disk_storage         = "pve_storage"                  # Сховище для дисків
k3s_master_disk_size            = 60                             # Розмір диска (у ГБ)
k3s_master_cloudinit_cdrom_storage = "pve_storage"               # Сховище для Cloud-Init CD-ROM
k3s_master_scsihw               = "virtio-scsi-single"           # Тип контролера SCSI
k3s_master_bootdisk             = "scsi0"                        # Завантажувальний диск