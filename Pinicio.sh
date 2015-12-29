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
#yum -y install docker docker-registry #ruby rubygems
#gem update --system 
#gem install vagrant
#wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
#yum -y install VirtualBox-5.0 install vagrant_1.8.1_x86_64.rpm
