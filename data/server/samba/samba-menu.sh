#! /bin/bash

clear

echo "
    ************************i*************************
    *                     SAMBA                      *
    **************************************************
    *                                                *
    *   1 status    service                          *
    *   2 start     service                          *
    *   3 stop      service                          *
    *   4 restart   service                          *
    *   5 enable    service                          *
    *   6 disable   service                          *
    *                                                *
    *   7 smb.conf     edit options                  *
    *   8 seemy.conf   complete smb.conf             *
    *                                                *
    *   9 info         see informations              *
    *                                                *
    *  10 add      new user                          *
    *  11 change   smb password for user             *
    *  12 invite   user for smb group                *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
install)
/opt/Corp/data/server/samba/samba-install.sh
;;
1)
sudo service smbd status
;;
status)
sudo service smbd status
;;
2)
sudo service smbd start
;;
start)
sudo service smbd start
;;
3)
sudo service smbd stop
;;
stop)
sudo service smbd stop
;;
4)
sudo service smbd restart
;;
restart)
sudo service smbd restart
;;
5)
sudo systemctl enable smbd
;;
enable)
sudo systemctl enable smbd
;;
6)
sudo systemctl disable smbd
;;
disable)
sudo systemctl disable smbd
;;
7)
sudo nano /etc/samba/smb.conf
;;
smb.conf)
sudo nano /etc/samba/smb.conf
;;
8)
cat /etc/samba/smb.conf
echo "


ENY KEY AFTER READING...."
read resmbbsamb
;;
seemy.conf)
cat /etc/samba/smb.conf
echo "


ENY KEY AFTER READING...."
read resmbbsamb
;;
9)
cat /opt/Corp/data/server/samba/samba.info
echo "

Eny key after read.....
"
read asas
;;
info)
cat /opt/Corp/data/server/samba/samba.info
echo "

Eny key after read.....
"
read asas
;;
10)
echo "
Write name for new user:"
read newusersmbcreateee
sudo useradd $newusersmbcreateee
;;
add)
echo "
Write name for new user:"
read newusersmbcreateee
sudo useradd $newusersmbcreateee
;;
11)
echo "
Enter user name for change SMB password:
"
read tytytt
sudo smbpasswd -a $tytytt
;;
change)
echo "
Enter user name for change SMB password:
"
read tytytt
sudo smbpasswd -a $tytytt
;;
12)
echo "
Enter user name for invite to group smb:
"
read kjkjhh
sudo usermod -a -G smbgrp $kjkjhh
;;
invite)
echo "
Enter user name for invite to group smb:
"
read kjkjhh
sudo usermod -a -G smbgrp $kjkjhh
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

/opt/Corp/data/server/samba/samba-menu.sh
