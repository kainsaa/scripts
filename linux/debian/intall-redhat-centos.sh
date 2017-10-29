#update & install git, nmap -> port scan
echo "Actualizando repositorios y instalando paquetes: git y nmap"
yum update -y; sudo yum install git

echo "Creando y cambiando de directorio a /home/tesis/test"
mkdir /home/tesis/test; cd /home/tesis/test

echo "Clonando el software para realizar las pruebas phoronix"
# Clona el proyecto phoronix en el directorio tesis/test.
git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git

#Instalacion de KVM (Kernel Virtual Machine) con interfaz gracica.
echo "Instalando KVM - Kernel Virtual Machine"
yum -y install qemu-kvm libvirt virt-install bridge-utils
yum -y install virt-manager
#Instalacion de Docker.
echo  "Instalando Docker..."
yum -y install docker
echo "Iniciando Docker y agregando al inicio del sistema..."
systemctl start docker; systemctl enable docker

#Instalar phoronix-test-suite

echo "Instalando herramientas de phoronix-test-suite"

cd /home/tesis/test; ./install-sh

echo "Instalando paquetes PHP, genera los graficos"
yum install php-cli php-xml -y
