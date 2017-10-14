#Configurar los repositorios de Debian 9
echo "Configurando respositorios Debian Strech"
/etc/apt/sources.list < repo.txt
#update & install git, nmap -> port scan
echo "Actualizando repositorios y instalando paquetes: git y nmap"
sudo apt update -y; sudo apt install git nmap

echo "Creando y cambiando de directorio a /home/tesis/test"
mkdir /home/tesis/test; cd /home/tesis/test

echo "Clonando el software para realizar las pruebas phoronix"
# Clona el proyecto phoronix en el directorio tesis/test.
git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git

#Instalacion de KVM (Kernel Virtual Machine) con interfaz gracica.

echo "Instalando KVM - Kernel Virtual Machine"

sudo apt -y install qemu-kvm libvirt-daemon libvirt-daemon-system virtinst bridge-utils
sudo apt -y install virt-manager qemu-system

#Instalacion de Docker.
echo  "Instalando Docker..."
sudo apt -y install apt-transport-https ca-certificates software-properties-common
wget https://download.docker.com/linux/debian/gpg
sudo apt-key add gpg
sudo add-apt-repository "deb https://download.docker.com/linux/debian stretch stable"
sudo apt update -y
sudo apt install docker-ce -y
#Iniciar y agregar al inicio Docker
sudo systemctl start docker; sudo systemctl enable docker

echo "Iniciando Docker y agregando al inicio del sistema..."

#Iniciar el servicio y habilitar al inicio
sudo systemctl start docker; sudo systemctl enable docker

echo "Instalando glances, monitorea procesos linux por consola"

#Glances monitorer procesos por consola
 sudo apt install python3-pip -y
 pip3 install glances
