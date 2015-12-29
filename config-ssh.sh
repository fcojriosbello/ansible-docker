#!/usr/bin/env bash

#######################################################
#         Creando clave ssh para Ansible              #
#######################################################

ssh-keygen -t rsa -b 4096 -C "fcojriosbello@gmail.com"

for i in $@
do
 ssh-copy-id root@$i
done
