#!/bin/bash

# Autor: Luciano | 28/10/2022 - 28/10/2022

# Script p/ habilitar o proxy p/ usar o apt:
A="/etc/apt/apt.conf.d/00proxy"

echo "Acquire{" > $A
echo "HTTP::proxy \"http://10.3.4.147:3128\";" >> $A
echo "HTTPS::proxy \"http://10.3.4.147:3128\";" >> $A
echo "FTP::proxy \"http://10.3.4.147:3128\";" >> $A
echo "HTTP::proxy::10.3.4.147 \"DIRECT\";//se houver" >> $A
echo "}" >> $A