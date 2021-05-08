#! /bin/bash

clear

echo "
    **************************i***********************
    *                     OPEN VPN                   *
    **************************************************
    *                                                *
    *  controller menu                               *
    *                                                *
    *  1 status   server                             *
    *  2 start    server                             *
    *  3 stop     server                             *
    *  4 restart  server                             *
    *  5 enable   server                             *
    *  6 disable  server                             *
    *                                                *
    *  7 list.ovpn    created user                   *
    *  8 see-cfg for connect                         *
    *  9 read.log                                    *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
9)
sudo cat /etc/openvpn/server/openvpn-status.log
echo "

Eny key afer read..."
read ovpread
;;
read.log)
sudo cat /etc/openvpn/server/openvpn-status.log
echo "

Eny key afer read..."
read ovpread
;;
8)
sudo ls /root | grep ovpn
echo "
Need write username (ex - udot):
"
read urnmovpnc
sudo cat /root/$urnmovpnc.ovpn
echo "

Eny key afer read..."
read ovpread
;;
see-cfg)
sudo ls /root | grep ovpn
echo "
Need write username (ex - udot):
"
read urnmovpnc
sudo cat /root/$urnmovpnc.ovpn
echo "

Eny key afer read..."
read ovpread
;;
7)
sudo ls /root | grep ovpn
echo "

Eny key afer read..."
read ovpread
;;
list.ovpn)
sudo ls /root | grep ovpn
echo "

Eny key afer read..."
read ovpread
;;
install)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
controller)
sudo /opt/Corp/data/server/vpn/openvpn/controle.sh
;;
1)
sudo systemctl status openvpn
;;
status)
sudo systemctl status openvpn
;;
2)
sudo systemctl start openvpn
;;
start)
sudo systemctl start openvpn
;;
3)
sudo systemctl stop openvpn
;;
stop)
sudo systemctl stop openvpn
;;
4)
sudo systemctl restart openvpn
;;
restart)
sudo systemctl restart openvpn
;;
5)
sudo systemctl enable openvpn
;;
enable)
sudo systemctl enable openvpn
;;
6)
sudo systemctl disable openvpn
;;
disable)
sudo systemctl disable openvpn
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

/opt/Corp/data/server/vpn/openvpn/openvpn-menu.sh
