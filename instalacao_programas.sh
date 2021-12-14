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

