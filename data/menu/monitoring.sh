#! /bin/bash

clear

echo "
    **************************************************
    *                  MONITORING                    *
    **************************************************
    *                                                *
    *  1 netstat (lan process/connects)              *
    *  2 ss      (lan process/connects)              *
    *  3 lsof    (lan process/connects)              *
    *                                                *
    *  4 bashtop    (cpu/ram/hdd/lan/process)        *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"

read mmennu
case $mmennu in
1)
/opt/Corp/data/monitoring/netstat.sh
;;
netstat)
/opt/Corp/data/monitoring/netstat.sh
;;
2)
/opt/Corp/data/monitoring/ss-monitor.sh
;;
ss)
/opt/Corp/data/monitoring/ss-monitor.sh
;;
3)
/opt/Corp/data/monitoring/lsof.sh
;;
lsof)
/opt/Corp/data/monitoring/lsof.sh
;;
4)
/opt/Corp/data/monitoring/bashtop.sh
;;
bashtop)
/opt/Corp/data/monitoring/bashtop.sh
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