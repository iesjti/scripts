#Atualização

sudo apt update -y
sudo apt upgrade -y

#Instalação das fontes MS Office para Libreoffice
sudo apt-get install ttf-mscorefonts-installer

#instalação zoom
wget https://zoom.us/client/latest/zoom_amd64.deb -O zoom.deb
sudo dpkg -i zoom.deb
sudo apt-get install -f

#Instalação Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#Instalação do Git
sudo apt-get install git -y
git config --global user.name "iesjti"
git config --global user.email "iesj.ti@saojoseteresina.com.br"

#Puxando repositório do git

cd 
cd Imagens
sudo rm -r imagens_saojose
git clone https://github.com/iesjti/imagens_saojose.git
cd
