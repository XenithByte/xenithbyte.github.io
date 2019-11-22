#!/bin/bash

apt update && apt upgrade -y

apt install -y nano screenfetch
apt install -y openssh-server
echo -e "linuxpassword\nlinuxpassword" | passwd root
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

/etc/init.d/ssh restart
