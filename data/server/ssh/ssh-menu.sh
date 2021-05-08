#! /bin/bash

clear

echo "
    ************************i*************************
    *                      SSH                       *
    **************************************************
    *                                                *
    *  1 start    service                            *
    *  2 stop     service                            *
    *  3 restart  service                            *
    *  4 enable   service                            *
    *  5 disable  service                            *
    *  6 status   service                            *
    *                                                *
    *  7  edit     config ssh                        *
    *  8  generate key for this user                 *
    *                                                *
    *  9  ather information                          *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
1)
sudo systemctl start ssh
;;
start)
sudo systemctl start ssh
;;
2)
sudo systemctl stop ssh
;;
stop)
sudo systemctl stop ssh
;;
3)
sudo systemctl restart ssh
;;
restart)
sudo systemctl restart ssh
;;
4)
sudo systemctl enable ssh
;;
enable)
sudo systemctl enable ssh
;;
5)
sudo systemctl disable ssh
;;
disable)
sudo systemctl disable ssh
;;
6)
sudo systemctl status ssh
;;
status)
sudo systemctl status ssh
;;
7)
echo "
Port 2020                    # Lisen port
AddressFamily inet           # Conncent only IPv4
PermitRootLogin no           # Disable conncent for root
X11Forwarding no             # Dont use graphical
PasswordAuthentication no    # Dont use password for login 

eny key for edit ssh cfg.....
"
read xxsdd
sudo nano /etc/ssh/sshd_config
;;
edit)
echo "
Port 2020                    # Lisen port
AddressFamily inet           # Conncent only IPv4
PermitRootLogin no           # Disable conncent for root
X11Forwarding no             # Dont use graphical
PasswordAuthentication no    # Dont use password for login 

eny key for edit ssh cfg.....
"
read xxsdd
sudo nano /etc/ssh/sshd_config
;;
8)
ssh-keygen -t rsa -b 4096
;;
generate)
ssh-keygen -t rsa -b 4096
;;
9)
cat /opt/Corp/data/server/ssh/ssh.info
echo "

ENY KEY AFTER READ TEXT........."
read antextkreagg 
;;
ather)
cat /opt/Corp/data/server/ssh/ssh.info
echo "

ENY KEY AFTER READ TEXT........."
read antextkreagg 
;;
install)
sudo apt-get update && sudo apt-get install -y openssh-server
;;
wireguard)
sudo /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh
;;
Wireguard)
sudo /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh
;;
wIREGUARD)
sudo /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh
;;
WIREGUARD)
sudo /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh
;;
openvpn)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
OpenVPN)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
OPENVPN)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
Openvpn)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
oPENVPN)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
vpn)
/opt/Corp/data/menu/vpn.sh
;;
VPN)
/opt/Corp/data/menu/vpn.sh
;;
vPN)
/opt/Corp/data/menu/vpn.sh
;;
Vpn)
/opt/Corp/data/menu/vpn.sh
;;
exit)
exit
;;
EXIT)
exit
;;
Exit)
exit
;;
eXIT)
exit
;;
info)
/opt/Corp/data/menu/info.sh
;;
INFO)
/opt/Corp/data/menu/info.sh
;;
Info)
/opt/Corp/data/menu/info.sh
;;
iNFO)
/opt/Corp/data/menu/info.sh
;;
tools)
/opt/Corp/data/menu/tools.sh
;;
tool)
/opt/Corp/data/menu/tools.sh
;;
TOOLS)
/opt/Corp/data/menu/tools.sh
;;
TOOL)
/opt/Corp/data/menu/tools.sh
;;
tOOLS)
/opt/Corp/data/menu/tools.sh
;;
tOOL)
/opt/Corp/data/menu/tools.sh
;;
Tools)
/opt/Corp/data/menu/tools.sh
;;
Tool)
/opt/Corp/data/menu/tools.sh
;;
tol)
/opt/Corp/data/menu/tools.sh
;;
tols)
/opt/Corp/data/menu/tools.sh
;;
Tol)
/opt/Corp/data/menu/tools.sh
;;
Tols)
/opt/Corp/data/menu/tools.sh
;;
tOL)
/opt/Corp/data/menu/tools.sh
;;
tOLS)
/opt/Corp/data/menu/tools.sh
;;
TOLS)
/opt/Corp/data/menu/tools.sh
;;
TOL)
/opt/Corp/data/menu/tools.sh
;;
home)
/opt/Corp/data/homemenu.sh
;;
HOME)
/opt/Corp/data/homemenu.sh
;;
Home)
/opt/Corp/data/homemenu.sh
;;
hOME)
/opt/Corp/data/homemenu.sh
esac

/opt/Corp/data/server/ssh/ssh-menu.sh
