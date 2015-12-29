#!/usr/bin/env bash

#######################################################
#         Preparando e instalando Ansible             #
#######################################################

cd /etc
# cloning repository to build it from source
git clone git://github.com/ansible/ansible.git --recursive
cd ansible
make rpm
cd rpm-build
# install some dependencies
yum  -y install python-devel.x86_64 PyYAML python-httplib2 python-jinja2 python-keyczar python-paramiko python-six sshpass
rpm -Uvh ansible-*.noarch.rpm
