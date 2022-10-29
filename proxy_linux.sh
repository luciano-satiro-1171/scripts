#!/bin/bash

# Autor: Luciano | 28/10/2022 - 28/10/2022

# Script p/ habilitar o proxy p/ usar o apt:
A="/etc/apt/apt.conf.d/00proxy"
IP="10.3.4.147"
URL="http://$IP:3128"

echo "Acquire{" > $A
echo "HTTP::proxy \"$URL\";" >> $A
echo "HTTPS::proxy \"$URL\";" >> $A
echo "FTP::proxy \"$URL\";" >> $A
echo "HTTP::proxy::$IP \"DIRECT\";//se houver" >> $A
echo "}" >> $A