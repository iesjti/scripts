#/bin/bash

### Enviar arquivos do Servidor UCS principal para o Servidor UCS Backup via SCP
cd
cd /
ssh Administrator@10.0.0.220 rsync -auP /Servidor/PTI Administrator@10.0.0.21:/home/Administrator/Backup_Server

