#! /bin/bash

clear

echo "
    *********************i****************************
    *               WIREGUARD-VPN                    *
    **************************************************
    *                                                *
    *  controller panel                              *
    *                                                *
    *  1 list.cfg created user-clients               *
    *  2 see.cfg  created user-clients               *
    *                                                *
    *                                                *
    *-------------------------------------------------
    *  home     client     tools     info     exit   *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
install)
/opt/Corp/data/server/vpn/wireguard/install.sh
;;
controller)
sudo /usr/local/bin/wireguard-manager.sh
;;
1)
ls /etc/wireguard/clients/
echo "

Eny key after read..."

read x
;;
list.cfg)
ls /etc/wireguard/clients/
echo "

Eny key after read..."
read xx
;;
2)
ls /etc/wireguard/clients/

echo "
Write name for read cfg file:"

read uuser
cat /etc/wireguard/clients/$uuser*

echo "
Eny key after read....
"
read qweee
;;
see.cfg)
ls /etc/wireguard/clients/
echo "
Write name for read cfg file:"
read qweee
cat /etc/wireguard/clients/$qweee*
echo "
Eny key after read....
"
read qweee
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

/opt/Corp/data/server/vpn/wireguard/menu.sh
