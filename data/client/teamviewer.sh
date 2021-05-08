#! /bin/bash

echo "
    **************************************************
    *                  TEAMVIEWER                    *
    **************************************************
    *                                                *
    *  1 host install amd64                          *
    *  2 default version amd64                       *
    *                                                *
    *  3 skeep install                               *
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
