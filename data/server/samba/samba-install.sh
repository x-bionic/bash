#! /bin/bash

# Обновление репозиторием / Установка samba
sudo apt-get update && sudo apt-get install -y samba

# Создание smb групы
sudo groupadd smbgrp

# Создание резервной копии конфига smb.conf
sudo mv /etc/samba/smb.conf /opt/Corp/data/server/samba/smb.conf.backup

# Изминение обших параметров и ресурсов
cat /opt/Corp/data/server/samba/mycfg/smb.conf | sudo tee -a "/etc/samba/smb.conf"

# Параметры доступа к русурсным каталогам
sudo chmod -R 0755 /opt/Corp/tmp/Samba/Svalka
sudo chgrp smbgrp /opt/Corp/tmp/Samba/Private

# Перезапуск сервиса
sudo service smbd restart
