#!/bin/sh

if [ -r /etc/default/locale ]; then
. /etc/default/locale
export LANG LANGUAGE
fi
exec /usr/bin/startxfce4
