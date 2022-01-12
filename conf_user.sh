#!/bin/bash

### Configurações do usuário ###
cd ~/'Área de Trabalho'
gsettings set org.nemo.desktop trash-icon-visible true
gsettings set org.nemo.desktop volumes-visible false
gsettings set org.nemo.preferences executable-text-activation launch

gsettings set org.cinnamon panel-launchers "['google-chrome.desktop', 'nemo.desktop','Zoom.desktop']"


### Adicionar Acesso ao Servidor local
printf "Usuário tem acesso a qual pasta?(CGA, Publica, PTI, COORDENACAO): "
read pasta

echo "[Desktop Entry]" >> "servidor-local-$pasta.desktop"
echo "Name = Servidor Local - $pasta" >> "servidor-local-$pasta.desktop"
echo "Exec=/usr/bin/servidor-local-$pasta.txt %U" >> "servidor-local-$pasta.desktop"
echo "Terminal = false" >> "servidor-local-$pasta.desktop"
echo "Icon= /usr/share/icons/gnome/256x256/places/server.png" >> "servidor-local-$pasta.desktop"
echo "Type = Application" >> "servidor-local-$pasta.desktop"

chmod 764 "servidor-local-$pasta.desktop"

cd
cd /usr/share/applications
cp google-chrome.desktop ~/'Área de Trabalho'
cp wps-office-wps.desktop ~/'Área de Trabalho'

cd 
cd ~/'Área de Trabalho'
chmod 764 google-chrome.desktop
chmod 764 wps-office-wps.desktop
