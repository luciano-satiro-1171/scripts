#!/bin/bash

# Script p/ habilitar proxy p/ usar o yum:
URL="http://10.3.4.147:3128"

echo "proxy=$URL" >> /etc/yum.conf

echo "export http_proxy=$URL" >> /root/.bash_profile
echo "export https_proxy=$URL" >> /root/.bash_profile

echo "http_proxy=$URL" >> /etc/wgetrc
echo "https_proxy=$URL" >> /etc/wgetrc
echo "ftp_proxy=$URL" >> /etc/wgetrc

echo "export http_proxy=$URL" >> /etc/profile
echo "export https_proxy=$URL" >> /etc/profile

echo "http_proxy=\"$URL\"" >> /etc/environment
echo "https_proxy=\"$URL\"" >> /etc/environment
echo "ftp_proxy=\"$URL\"" >> /etc/environment
echo "no_proxy=localhost,127.0.0.1/8" >> /etc/environment
echo "export http_proxy https_proxy ftp_proxy" >> /etc/environment