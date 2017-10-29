#update & install git, nmap -> port scan
/usr/bin/yum  update -y; /usr/bin/yum  install git -y

# Clona el proyecto phoronix en el directorio tesis/test.
git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git

#Instalar phoronix-test-suite
cd /phoronix-test-suite
chmod u+x install-sh
./install-sh
/usr/bin/yum -y install php-cli php-xml
