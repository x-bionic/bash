#! /bin/bash

clear

echo "
    **************************************************
    *                        SERVER                  *
    **************************************************
    *                                                *
    *  1 vpn                                         *
    *  2 xrdp                                        *
    *  3 samba                                       *
    *  4 ssh                                         *
    *  5 squid                                       *
    *  6 apache                                      *
    *  7 ufw                                         *
    *                                                *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"

read mmennu
case $mmennu in
1)
/opt/Corp/data/menu/vpn.sh
;;
2)
/opt/Corp/data/server/xrdp/xrdp-menu.sh
;;
xrdp)
/opt/Corp/data/server/xrdp/xrdp-menu.sh
;;
3)
/opt/Corp/data/server/samba/samba-menu.sh
;;
samba)
/opt/Corp/data/server/samba/samba-menu.sh
;;
4)
/opt/Corp/data/server/ssh/ssh-menu.sh
;;
ssh)
/opt/Corp/data/server/ssh/ssh-menu.sh
;;
5)
/opt/Corp/data/server/squid/squid-menu.sh
;;
squid)
/opt/Corp/data/server/squid/squid-menu.sh
;;
6)
/opt/Corp/data/server/apache2/apache-menu.sh
;;
apache)
/opt/Corp/data/server/apache2/apache-menu.sh
;;
7)
/opt/Corp/data/server/ufw/ufw-menu.sh
;;
ufw)
/opt/Corp/data/server/ufw/ufw-menu.sh
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
