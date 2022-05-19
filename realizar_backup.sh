#!/bin/bash
###########################SCRIPT PARA SINCRONIZAR ARQUIVOS DO SERVIDOR PRINCIPAL PARA UCS BACKUP########################################

#Parte 1 - Copiar arquivos do servidor para a pasta que será montada
echo 'Iesjti2022@%_' | sudo -S mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Biblioteca /Sincronizacao/Biblioteca
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/CGA /Sincronizacao/CGA
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/COORDENACAO /Sincronizacao/COORDENACAO
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/NAAF /Sincronizacao/NAAF
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Psicologia /Sincronizacao/Psicologia
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/PTI /Sincronizacao/PTI
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.AdministratorCredentials //10.0.0.220/Publica /Sincronizacao/Publica


#Parte 2 - Realizar a sincronização da pasta montada para o HD de backup 1 
echo 'Iesjti2022@%_' | sudo -S rsync -auP /Sincronizacao /Servidor/


