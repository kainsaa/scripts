#Configurar los repositorios de Debian 9
echo "Configurando respositorios Debian Strech"
/etc/apt/sources.list < repo.txt
#update & install git, nmap -> port scan
echo "Actualizando repositorios y instalando paquetes: git y nmap"
apt update -y; sudo apt install git

echo "Creando y cambiando de directorio a /home/tesis/test"
mkdir /home/tesis/test; cd /home/tesis/test

echo "Clonando el software para realizar las pruebas phoronix"
# Clona el proyecto phoronix en el directorio tesis/test.
git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git

#Instalacion de KVM (Kernel Virtual Machine) con interfaz gracica.

echo "Instalando KVM - Kernel Virtual Machine"

apt -y install qemu-kvm libvirt-daemon libvirt-daemon-system virtinst bridge-utils
apt -y install virt-manager qemu-system

#Instalacion de Docker.
echo  "Instalando Docker..."
apt -y install apt-transport-https ca-certificates software-properties-common
wget https://download.docker.com/linux/debian/gpg
apt-key add gpg
add-apt-repository "deb https://download.docker.com/linux/debian stretch stable"
apt update -y
apt install docker-ce -y
#Iniciar y agregar al inicio Docker
echo "Iniciando Docker y agregando al inicio del sistema..."
systemctl start docker; sudo systemctl enable docker

echo "Instalando glances, monitorea procesos linux por consola"

#Glances monitorer procesos por consola
apt install python3-pip -y
pip3 install glances

 #Instalar phoronix-test-suite

echo "Instalando herramientas de phoronix-test-suite"

cd /home/tesis/test; ./install-sh

echo "Instalando paquetes PHP, genera los graficos"

apt install php-cli php-xml -y
