#!/bin/bash
###########################SCRIPT FAZER O MOUNT DO SERVIDOR PRINCIPAL PARA UCS BACKUP########################################

#Parte 1 - Copiar arquivos do servidor para a pasta que será montada
echo 'Iesjti2022@%_' | sudo -S mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Biblioteca /Replica_main_server/Biblioteca
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/CGA /Replica_main_server/CGA
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/COORDENACAO /Replica_main_server/COORDENACAO
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/NAAF /Replica_main_server/NAAF
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Psicologia /Replica_main_server/Psicologia
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/PTI /Replica_main_server/PTI
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Publica /Replica_main_server/Publica


##Parte 2 - Realizar a sincronização da pasta montada para o HD de backup 1 
#echo 'Iesjti2022@%_' | sudo -S rsync -auP /Sincronizacao /Servidor/


