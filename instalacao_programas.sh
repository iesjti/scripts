cd ~/Downloads

#Atualização

sudo apt update -y
sudo apt upgrade -y

sudo apt-get install build-essential -y
sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install pavucontrol

#Habilitar supressão de ruído
pactl load-module module-echo-cancel aec_method=webrtc sink_properties=device.description="Noise_Reduction" aec_args="analog_gain_control=0\ digital_gain_control=0"

#Instalação das fontes MS Office para Libreoffice
sudo apt-get install ttf-mscorefonts-installer

#Instalar WPS Office Sem conexão com internet
#sudo rv /etc/apt/preferences.d/nosnap.pref ~ #Removendo bloqueio ao snap no linux Mint 20.2
#sudo apt-get install snapd
#sudo snap install wps-office-all-lang-no-internet
#sudo snap refresh wps-office-all-lang-no-internet
#sudo snap connect wps-office-all-lang-no-internet:cups-control :cups-control

#Instalar Firejail (sandbox)
sudo apt install firejail -y

#instalação zoom
wget https://zoom.us/client/latest/zoom_amd64.deb -O zoom.deb
sudo dpkg -i zoom.deb
sudo apt-get install -f

#Instalação Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb




#Adicionar programa para câmera usb
sudo add-apt-repository ppa:pj-assis/testing
sudo apt-get update -y
sudo apt-get install guvcview -y

#Instalação do Git
sudo apt-get install git -y

#Puxando repositório do git

cd 
cd ~/Imagens
sudo rm -r imagens_saojose
git clone https://github.com/iesjti/imagens_saojose.git
cd

#Instalação do UCS Join
sudo add-apt-repository ppa:univention-dev/ppa
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt install univention-domain-join -y

#Instalação do Zabbix Agent
wget https://repo.zabbix.com/zabbix/5.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo dpkg -i zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo apt update
sudo apt install zabbix-agent
sudo nano /etc/zabbix/zabbix_agentd.conf ## Adicionar nesse arquivo Server=[zabbix server ip] = ServerActive; Hostname=[hostname do cliente]; HostMetadataItem = system.uname

sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent


#Editar regras firewall para permitir ZAbbix

sudo ufw enable
sudo ufw allow 10050/tcp
sudo ufw allow 20051/tcp


