#!/bin/bash
############################################################################### #SCRIPT PARA REALIZAÇÃO AUTOMÁTICA DE BACKUP USANDO GOOGLE DRIVE VIA GRIVE2####
################################################################################

# Mover para pasta home que têm os arquivos
cd /

# Copiar os arquivos para a pasta que liga ao Drive
echo 'IESJTI2021@_' | sudo -S cp -fR Servidor Backup_drive | progress -m

# Mover para pasta de backup
cd 
cd /Backup_drive
# Conecta com o Google Drive e faz upload mostrando barra de progresso
echo 'IESJTI2021@_' | sudo -S grive -P  



