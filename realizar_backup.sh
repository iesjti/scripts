#!/bin/bash
###########################SCRIPT PARA REALIZAÇÃO AUTOMÁTICA DE BACKUP########################################

#Parte 1 - Copiar arquivos do servidor para a pasta que será montada
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdminCredentials //10.0.0.220/Backup /media/backup_servidor


#Parte 2 - Realizar a sincronização da pasta montada para o HD de backup 1 
echo 'IESJTI2021@_' | sudo -S rsync -auP /media/backup_servidor /media/Administrator/HD_BACKUP_1


