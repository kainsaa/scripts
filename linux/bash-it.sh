#!/bin/bash
#redhat or centos distro, for debian/ubuntu replace "yum -y install git && cd" -> "apt-get -y install git $$ cd"
yum -y install git && cd
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
#cambiar theme - ~/.bashrc
sed -i "s/BASH_IT_THEME='bobby'/BASH_IT_THEME='clean'/g" .bashrc
echo  "Conecta nuevamante como #root =)"
kill -USR1 $PPID
