#!/usr/bin/env bash

#######################################################
#         Creando clave ssh para Ansible              #
#######################################################

ssh-keygen -t rsa -b 4096 -C "fcojriosbello@gmail.com"

#ssh-copy-id root@$1
#ssh root@$1
for i in $@
do
 ssh-copy-id root@$i
 #  echo $i > /etc/ansible/hosts
 #  echo \n > /etc/ansible/hosts
done

