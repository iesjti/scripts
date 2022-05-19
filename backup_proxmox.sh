#!/bin/bash
#### SCRIPT PARA BACKUP DOS ARQUIVOS CONTIDOS NAS MÁQUINAS VIRTUAIS DO PROXMOX


#### O Proxmox está configurado para fazer o backup de todas as máquinas virtuais todo DOMINGO as 01:00h da manhã

### Os backups são salvos no disco "SVM04-BACKUP-GERAL", que possui capacidade de 1TB e é dedicado exclusivamente
### para o backup

## O primeiro passo para enviar esse backup para nuvem é fazer o Mount da pasta "Backup_Servers"
## presente no Google Drive no HD de backup, mais precisamente na pasta "backup_drive". O comando é:

rclone mount googleDrive:Backup_Servers /mnt/pve/SVM04-BACKUP-GERAL/backup_drive --daemon --allow-non-empty

## Em seguida, é necessário sincronizar o arquivo de imagem gerado pelo Proxmox dentro da pasta "dump"
## na pasta "backup_drive". O comando é:

rsync -auP /mnt/pve/SVM04-BACKUP-GERAL/dump/ /mnt/pve/SVM04-BACKUP-GERAL/backup_drive

## Cada arquivo colocado na pasta backup_drive é automaticamente sincronizado com o Google Drive
