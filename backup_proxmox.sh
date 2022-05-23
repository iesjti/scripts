#!/bin/bash
#### SCRIPT PARA BACKUP DOS ARQUIVOS CONTIDOS NAS MÁQUINAS VIRTUAIS DO PROXMOX


#### O Proxmox está configurado para fazer o backup de todas as máquinas virtuais todo DOMINGO as 01:00h da manhã

### Os backups são salvos no disco "SVM04-BACKUP-GERAL", que possui capacidade de 1TB e é dedicado exclusivamente
### para o backup. Os arquivos de imagem ficam salvos na pasta DUMP.
### O comando RCLONE é utilizado para copiar do servidor local para o google drive

cd /mnt/pve/SVM04-BACKUP-GERAL/
rclone copy --progress /mnt/pve/SVM04-BACKUP-GERAL/backup_drive/dump googleDrive:Backup_Servers
