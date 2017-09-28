#!/bin/bash
yum -y install git && cd
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
#cambiar theme - ~/.bashrc
sed -i "s/BASH_IT_THEME='bobby'/BASH_IT_THEME='clean'/g" .bashrc
echo  "Conecta de nuevo choro! =)"
kill -USR1 $PPID
