#! /bin/bash

sudo apt-get update && sudo apt-get install -y wget curl zip sudo unzip unrar-free apt-transport-https mc nano git ssl-cert ssl-cert-check gnupg gnupg-utils gnupg2 gpg locales locales-all

if ( getconf LONG_BIT | grep 64 ); then
sudo dpkg --add-architecture i386 && sudo apt-get update
fi

echo "Need graphical programs install? [y/n]"
read dddfdd
case $dddfdd in
y)
sudo apt-get update && sudo apt-get install -y xterm gedit nautilus synaptic gnome-disk-utility transmission keepassx firefox-esr-l10n-ru smplayer qmmp chromium chromium-l10n gimp gparted telegram-desktop libreoffice libreoffice-l10n-ru xarchiver xz-utils pulseaudio
;;
n)
echo "Dont install"
;;
esac

echo "
    **************************************************
    *               GRAPHICAL DESKTOP                *
    **************************************************
    *                                                *
    *  1 no graphical                                *
    *                                                *
    *  2 xfce4                                       *
    *                                                *
    *  3 lxde-minimal                                *
    *  4 lxde-full                                   *
    *                                                *
    *  5 mate-minimal                                *
    *  6 mate-full                                   *
    *                                                *
    *  7 cinnamon                                    *
    *                                                *
    *  8 gnome                                       *
    *                                                *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
1)
echo "Graphical desktop dont use"
;;
no)
echo "Graphical desktop dont use"
;;
n)
echo "Graphical desktop dont use"
;;
2)
sudo apt-get update && sudo apt-get install -y xfce4 xfce4-goodies xfce4-power-manager xfce4-terminal xorg dbus-x11 x11-xserver-utils
;;
xfce4)
sudo apt-get update && sudo apt-get install -y xfce4 xfce4-goodies xfce4-power-manager xfce4-terminal xorg dbus-x11 x11-xserver-utils
;;
xfce)
sudo apt-get update && sudo apt-get install -y xfce4 xfce4-goodies xfce4-power-manager xfce4-terminal xorg dbus-x11 x11-xserver-utils
;;
3)
sudo apt-get update && sudo apt-get install -y lxde-core
;;
lxde-minimal)
sudo apt-get update && sudo apt-get install -y lxde-core
;;
4)
sudo apt-get update && sudo apt-get install -y lxde
;;
lxde-full)
sudo apt-get update && sudo apt-get install -y lxde task-lxde-desktop
;;
5)
sudo apt-get update && sudo apt-get install -y mate-core
;;
mate-minimal)
sudo apt-get update && sudo apt-get install -y mate-core
;;
6)
sudo apt-get update && sudo apt-get install -y mate-desktop mate-desktop-environment
;;
mate-full)
sudo apt-get update && sudo apt-get install -y mate-desktop mate-desktop-environment
;;
7)
sudo apt-get update && sudo apt-get install -y cinnamon
;;
cinnamon)
sudo apt-get update && sudo apt-get install -y cinnamon
;;
8)
sudo apt-get update && sudo apt-get install -y gnome
;;
gnome)
sudo apt-get update && sudo apt-get install -y gnome
;;
esac

echo "
    **************************************************
    *                  VIRTUAL BOX                   *
    **************************************************
    *                                need install:   *
    *  1 yes                                         *
    *  2 no                                          *
    *                                                *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
1)
# Наличие репозиторий
if [ ! "$(grep '^https://download.virtualbox.org/virtualbox' /etc/apt/sources.list 2>/dev/null)" ]; then
vardeb="\n# Oracle VirtualBox Repository\ndeb https://download.virtualbox.org/virtualbox/debian buster contrib"
echo -e "$vardeb" | sudo tee -a "/etc/apt/sources.list"
fi

# Сравнение ключей
cd /tmp/userinstall
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

# Установка VirtualBox версии 5.2
sudo apt-get update && sudo apt-get install -y virtualbox-5.2

# Добавление разширения
wget https://download.virtualbox.org/virtualbox/5.2.34/Oracle_VM_VirtualBox_Extension_Pack-5.2.34-133893.vbox-extpack
sudo virtualbox Oracle_VM_VirtualBox_Extension_Pack-5
;;
y)
# Наличие репозиторий
if [ ! "$(grep '^https://download.virtualbox.org/virtualbox' /etc/apt/sources.list 2>/dev/null)" ]; then
vardeb="\n# Oracle VirtualBox Repository\ndeb https://download.virtualbox.org/virtualbox/debian buster contrib"
echo -e "$vardeb" | sudo tee -a "/etc/apt/sources.list"
fi

# Сравнение ключей
cd /tmp/userinstall
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

# Установка VirtualBox версии 5.2
sudo apt-get update && sudo apt-get install -y virtualbox-5.2

# Добавление разширения
wget https://download.virtualbox.org/virtualbox/5.2.34/Oracle_VM_VirtualBox_Extension_Pack-5.2.34-133893.vbox-extpack
sudo virtualbox Oracle_VM_VirtualBox_Extension_Pack-5
;;
yes)
# Наличие репозиторий
if [ ! "$(grep '^https://download.virtualbox.org/virtualbox' /etc/apt/sources.list 2>/dev/null)" ]; then
vardeb="\n# Oracle VirtualBox Repository\ndeb https://download.virtualbox.org/virtualbox/debian buster contrib"
echo -e "$vardeb" | sudo tee -a "/etc/apt/sources.list"
fi

# Сравнение ключей
cd /tmp/userinstall
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

# Установка VirtualBox версии 5.2
sudo apt-get update && sudo apt-get install -y virtualbox-5.2

# Добавление разширения
wget https://download.virtualbox.org/virtualbox/5.2.34/Oracle_VM_VirtualBox_Extension_Pack-5.2.34-133893.vbox-extpack
sudo virtualbox Oracle_VM_VirtualBox_Extension_Pack-5
;;
esac

echo "
    **************************************************
    *                   TEAMVIEWER                   *
    **************************************************
    *                                need install:   *
    *   1 host install amd64                         *
    *   2 default version amd64                      *
    *                                                *
    *   3 skeep install                              *
    *                                                *
    **************************************************

. > > > _Put choose:"
read mmennu
case $mmennu in
1)
# Прыжок в временный каталог
cd /tmp

# Скачать Teamviewer Host x64:
wget https://download.teamviewer.com/download/linux/teamviewer-host_amd64.tar.xz

# Разпаковка
tar -xpJf teamviewer-host_amd64.tar.xz

# Проверка зависимых библиотек / их установка
/tmp/teamviewer/tv-setup checklibs
echo "
***************************
Copy need libs for install
"
read llibtvwr
sudo apt-get update && sudo apt-get install -y $llibtvwr

# Установка пакета teamviewer
/tmp/teamviewer/tv-setup install

# Удаление установок
rm /tmp/teamviewer-host_amd64.tar.xz
rm -r /tmp/teamviewer/
;;
host)
# Прыжок в временный каталог
cd /tmp

# Скачать Teamviewer Host x64:
wget https://download.teamviewer.com/download/linux/teamviewer-host_amd64.tar.xz

# Разпаковка
tar -xpJf teamviewer-host_amd64.tar.xz

# Проверка зависимых библиотек / их установка
/tmp/teamviewer/tv-setup checklibs
echo "
***************************
Copy need libs for install
"
read llibtvwr
sudo apt-get update && sudo apt-get install -y $llibtvwr

# Установка пакета teamviewer
/tmp/teamviewer/tv-setup install

# Удаление установок
rm /tmp/teamviewer-host_amd64.tar.xz
rm -r /tmp/teamviewer/
;;
2)
# Прыжок в временный каталог
cd /tmp

# Скачать Teamviewer Стандартной версии x64:
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.tar.xz

# Разпаковка
tar -xpJf teamviewer_amd64.tar.xz

# Проверка зависимых библиотек / их установка
/tmp/teamviewer/tv-setup checklibs
echo "
***************************
Copy need libs for install
"
read llibtvwr
sudo apt-get update && sudo apt-get install -y $llibtvwr

# Установка пакета teamviewer
/tmp/teamviewer/tv-setup install

# Удаление установок
rm /tmp/teamviewer_amd64.tar.xz
rm -r /tmp/teamviewer/
;;
default)
# Прыжок в временный каталог
cd /tmp

# Скачать Teamviewer Стандартной версии x64:
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.tar.xz

# Разпаковка
tar -xpJf teamviewer_amd64.tar.xz

# Проверка зависимых библиотек / их установка
/tmp/teamviewer/tv-setup checklibs
echo "
***************************
Copy need libs for install
"
read llibtvwr
sudo apt-get update && sudo apt-get install -y $llibtvwr

# Установка пакета teamviewer
/tmp/teamviewer/tv-setup install

# Удаление установок
rm /tmp/teamviewer_amd64.tar.xz
rm -r /tmp/teamviewer/
;;
3)
echo "Teamviewer install aborted....."
;;
skeep)
echo "Teamviewer install aborted....."
;;
esac
