#! /bin/bash

clear

echo "
    **************************i***********************
    *                        UFW                     *
    **************************************************
    *                                                *
    *   1 status   service                           *
    *   2 start    service                           *
    *   3 stop     service                           *
    *   4 restart  service                           *
    *   5 enable   service                           *
    *   6 disable  service                           *
    *                                                *
    *   7 add     rule                               *
    *   8 delete  rule                               *
    *   9 list    rule                               *
    *                                                *
    *  10 reset   all rules                          *
    *                                                *
    *-------------------------------------------------
    *     home       tools       info       exit     *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
install)
sudo apt-get update && sudo apt-get install -y ufw
sudo systemctl status ufw
;;
1)
sudo systemctl status ufw
;;
status)
sudo systemctl status ufw
;;
2)
sudo systemctl start ufw
;;
start)
sudo systemctl start ufw
;;
3)
sudo systemctl stop ufw
;;
stop)
sudo systemctl stop ufw
;;
4)
sudo systemctl restart ufw
;;
restart)
sudo systemctl restart ufw
;;
5)
sudo systemctl enable ufw
;;
enable)
sudo systemctl enable ufw
;;
6)
sudo systemctl disable ufw
;;
disable)
sudo systemctl disable ufw
;;
7)
echo "
-----------------------------------
             EXAMPLE

http
https
80
443
3000:3100
3000:3100/tcp
3000:3100/udp
from 66.6.0.1
from 66.6.0.0/24
from 66.6.0.1 to any port 22
from 66.6.0.0/24 to any port 22
-----------------------------------

Write need rule:  "
read uffrl
sudo ufw allow $uffrl
;;
add)
echo "
-----------------------------------
             EXAMPLE

http
https
80
443
3000:3100
3000:3100/tcp
3000:3100/udp
from 66.6.0.1
from 66.6.0.0/24
from 66.6.0.1 to any port 22
from 66.6.0.0/24 to any port 22
-----------------------------------

Write need rule:  "
read uffrl
sudo ufw allow $uffrl
;;
8)
echo "
-----------------------------------
             EXAMPLE

http
https
80
443
3000:3100
3000:3100/tcp
3000:3100/udp
from 66.6.0.1
from 66.6.0.0/24
from 66.6.0.1 to any port 22
from 66.6.0.0/24 to any port 22
-----------------------------------

Write need delete rule:  "
read uffrl
sudo ufw deny $uffrl
;;
delete)
echo "
-----------------------------------
             EXAMPLE

http
https
80
443
3000:3100
3000:3100/tcp
3000:3100/udp
from 66.6.0.1
from 66.6.0.0/24
from 66.6.0.1 to any port 22
from 66.6.0.0/24 to any port 22
-----------------------------------

Write need delete rule:  "
read uffrl
sudo ufw deny $uffrl
;;
9)
sudo ufw status numbered
echo "Delete rule? [y/n]"
read uufwwfnnu
case $uufwwfnnu in
y)
sudo ufw status numbered
echo "Write namber delete rule: "
read namberuufwwrl
sudo ufw delete $namberuufwwrl
;;
n)
/opt/Corp/data/server/ufw/ufw-menu.sh
;;
esac
;;
list)
sudo ufw status numbered
echo "Delete rule? [y/n]"
read uufwwfnnu
case $uufwwfnnu in
y)
sudo ufw status numbered
echo "Write namber delete rule: "
read namberuufwwrl
sudo ufw delete $namberuufwwrl
;;
n)
/opt/Corp/data/server/ufw/ufw-menu.sh
;;
esac
;;
10)
sudo ufw reset
;;
reset)
sudo ufw reset
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

/opt/Corp/data/server/ufw/ufw-menu.sh
