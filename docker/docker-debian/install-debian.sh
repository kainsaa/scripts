#Configurar los repositorios de Debian 9
#update & install git, nmap -> port scan
apt-get update -y; apt-get install apt-utils;  apt-get install git -y

# Clona el proyecto phoronix en el directorio tesis/test.
git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git

cd; cd /phoronix-test-suite
chmod u+x install-sh
./install-sh
#Instalacion de KVM (Kernel Virtual Machine) con interfaz gracica.

#Instalacion de Docker.
#Iniciar y agregar al inicio Docker
#Glances monitorer procesos por consola
#Instalar phoronix-test-suite

#cd /root/tesis/test; ./install-sh
#graficos
apt-get install php-cli php-xml -y

#ejemplo primera pruebas
apt-get install zip
