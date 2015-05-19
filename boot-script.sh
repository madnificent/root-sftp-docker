#!/bin/bash
useradd -ou -0 -g 0 -d /app $USER
echo "$USER:$PASSWD" | chpasswd
/usr/sbin/sshd -D
