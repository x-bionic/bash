#! /bin/bash

clear

echo "
    **************************************************
    *                        VPN                     *
    **************************************************
    *                                                *
    *  1 openvpn                                     *
    *  2 wireguard                                   *
    *                                                *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
1)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
;;
2)
/opt/Corp/data/server/vpn/wireguard/menu.sh
;;
wireguard)
/opt/Corp/data/server/vpn/wireguard/menu.sh
;;
Wireguard)
/opt/Corp/data/server/vpn/wireguard/menu.sh
;;
wIREGUARD)
/opt/Corp/data/server/vpn/wireguard/menu.sh
;;
WIREGUARD)
/opt/Corp/data/server/vpn/wireguard/menu.sh
;;
openvpn)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
;;
OpenVPN)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
;;
OPENVPN)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
;;
Openvpn)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
;;
oPENVPN)
sudo /opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
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

exit 0
