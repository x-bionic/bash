#! /bin/bash
exec >& >(tee -a /opt/Corp/tmp/WORK-LOG.txt)


if grep -qs "ubuntu" /etc/os-release; then
	echo "Detect Ubuntu OS......"
elif [[ -e /etc/debian_version ]]; then
	echo "Detect Debian OS"
else
	echo "This scripts only Debian/Ubuntu OS !!!"
	exit
fi

/opt/Corp/data/homemenu.sh
#
