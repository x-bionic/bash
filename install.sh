#! /bin/bash

# Обновление репозиториев / установка необходимых пакетов
sudo apt-get update && sudo apt-get -y sudo zip unzip wget

# Создание необходимых директорий / прав
sudo mkdir -p /opt/Corp
sudo chmod 777 /opt/Corp

# Закачка архива и его разорхивирование
cd /tmp
wget https://file.zip | sudo unzip file.zip -d /opt/Corp

# Право на доступ/импользование/запуск
sudo chmod 777 /opt/Corp/start.sh
sudo chmod 777 /opt/Corp/homemenu.sh
sudo chmod 777 /opt/Corp/tools
sudo chmod 777 /opt/Corp/tools/gptermmode.sh
sudo chmod 777 /opt/Corp/data
sudo chmod 777 /opt/Corp/data/backup
sudo chmod 777 /opt/Corp/data/backup/dd
sudo chmod 777 /opt/Corp/data/backup/dd/dd-backup-menu.sh
sudo chmod 777 /opt/Corp/data/down
sudo chmod 777 /opt/Corp/data/down/client.sh
sudo chmod 777 /opt/Corp/data/down/info.sh
sudo chmod 777 /opt/Corp/data/down/tools.sh
sudo chmod 777 /opt/Corp/data/menu
sudo chmod 777 /opt/Corp/data/menu/backup.sh
sudo chmod 777 /opt/Corp/data/menu/info.sh
sudo chmod 777 /opt/Corp/data/menu/menu-control.sh
sudo chmod 777 /opt/Corp/data/menu/monitoring.sh
sudo chmod 777 /opt/Corp/data/menu/server.sh
sudo chmod 777 /opt/Corp/data/menu/tools.sh
sudo chmod 777 /opt/Corp/data/menu/vpn.sh
sudo chmod 777 /opt/Corp/data/monitoring
sudo chmod 777 /opt/Corp/data/monitoring/bashtop.sh
sudo chmod 777 /opt/Corp/data/monitoring/lsof.sh
sudo chmod 777 /opt/Corp/data/monitoring/netstat.sh
sudo chmod 777 /opt/Corp/data/monitoring/ss-monitor.sh
sudo chmod 777 /opt/Corp/data/server
sudo chmod 777 /opt/Corp/data/server/apache2
sudo chmod 777 /opt/Corp/data/server/apache2/apache-install.sh
sudo chmod 777 /opt/Corp/data/server/apache2/apache-menu.sh
sudo chmod 777 /opt/Corp/data/server/samba
sudo chmod 777 /opt/Corp/data/server/samba/samba-menu.sh
sudo chmod 777 /opt/Corp/data/server/samba/samba-install.sh
sudo chmod 777 /opt/Corp/data/server/samba/samba.info
sudo chmod 777 /opt/Corp/data/server/samba/mycfg
sudo chmod 777 /opt/Corp/data/server/samba/mycfg/smb.conf
sudo chmod 777 /opt/Corp/data/server/squid
sudo chmod 777 /opt/Corp/data/server/squid/squidsquid-menu.sh
sudo chmod 777 /opt/Corp/data/server/squid/install.sh
sudo chmod 777 /opt/Corp/data/server/squid/file
sudo chmod 777 /opt/Corp/data/server/squid/file/allowed_ips.txt
sudo chmod 777 /opt/Corp/data/server/squid/backup
sudo chmod 777 /opt/Corp/data/server/squid/backupsquid.conf
sudo chmod 777 /opt/Corp/data/server/ssh
sudo chmod 777 /opt/Corp/data/server/ssh/ssh-menu.sh
sudo chmod 777 /opt/Corp/data/server/ssh/ssh.info
sudo chmod 777 /opt/Corp/data/server/ufw
sudo chmod 777 /opt/Corp/data/server/ufw/ufw-menu.sh
sudo chmod 777 /opt/Corp/data/server/vpn
sudo chmod 777 /opt/Corp/data/server/vpn/openvpn
sudo chmod 777 /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
sudo chmod 777 /opt/Corp/data/server/vpn/openvpn/controle.sh
sudo chmod 777 /opt/Corp/data/server/vpn/wireguard
sudo chmod 777 /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh
sudo chmod 777 /opt/Corp/data/server/vpn/wireguard/menu.sh
sudo chmod 777 /opt/Corp/data/server/vpn/wireguard/install.sh
sudo chmod 777 /opt/Corp/data/server/xrdp
sudo chmod 777 /opt/Corp/data/server/xrdp/xrdp-menu.sh
sudo chmod 777 /opt/Corp/data/server/xrdp/xrdp-install.sh
sudo chmod 777 /opt/Corp/data/server/xrdp/info.help
sudo chmod 777 /opt/Corp/data/server/xrdp/files
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xrdp_keyboard.ini
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xrdp.ini
sudo chmod 777 /opt/Corp/data/server/xrdp/files/startwm.sh
sudo chmod 777 /opt/Corp/data/server/xrdp/files/sesman.ini
sudo chmod 777 /opt/Corp/data/server/xrdp/files/logo_xrdp.bmp
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xfce
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xfce/xsettings.xml
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xfce/xfce4-panel.xml
sudo chmod 777 /opt/Corp/data/server/xrdp/files/xfce/kioskrc
sudo chmod 777 /opt/Corp/data/tools
sudo chmod 777 /opt/Corp/data/tools/gptermmode.sh
sudo chmod 777 /opt/Corp/tmp
sudo chmod 777 /opt/Corp/tmp/WORK-LOG.txt
sudo chmod 777 /opt/Corp/tmp/Samba
sudo chmod 777 /opt/Corp/tmp/Samba/Svalka
sudo chmod 777 /opt/Corp/tmp/Samba/Private
sudo chmod 777 /opt/Corp/data/client
sudo chmod 777 /opt/Corp/data/client/teamviewer.sh

# При установленом xfce4 разорхивировать картинки
if [[ -e /usr/share/images/desktop-base ]]; then 
sudo unzip /opt/Corp/pic/pic.zip -d /usr/share/images/desktop-base/
fi

# При установленом mate-desktop разорхивировать картинки
if [[ -e /usr/share/backgrounds/mate/desktop ]]; then 
sudo unzip /opt/Corp/pic/pic.zip -d /usr/share/backgrounds/mate/desktop
fi

# Удаление архива
rm /tmp/file.zip


